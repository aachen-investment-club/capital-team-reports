# Re-renders the dashboard's returns_index.png / returns_bar.png from
# daily_returns.csv on a white background with black text/axes.
import csv
from datetime import date
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

OUT = Path(__file__).parent
QSTART = date(2026, 7, 1)
INK = "#000000"
BG = "#ffffff"

# dashboard series colours, dashboard legend order
SERIES = [
    ("portfolio_return_pct",   "AIC Portfolio",  "#eb6834"),
    ("blend_60_40_return_pct", "60/40 Balanced", "#cbd5e1"),
    ("msci_europe_return_pct", "MSCI Europe",    "#6b7280"),
    ("msci_world_return_pct",  "MSCI World",     "#60a5fa"),
    ("sp500_return_pct",       "S&P 500",        "#9ca3af"),
]

dates, data = [], {k: [] for k, _, _ in SERIES}
with open(OUT / "daily_returns.csv", newline="", encoding="utf-8") as f:
    for r in csv.DictReader(f):
        d = date.fromisoformat(r["date"])
        if d < QSTART:
            continue
        dates.append(d)
        for k, _, _ in SERIES:
            data[k].append(float(r[k]))


def style(ax, fig):
    fig.patch.set_facecolor(BG)
    ax.set_facecolor(BG)
    for side in ("top", "right"):
        ax.spines[side].set_visible(False)
    for side in ("left", "bottom"):
        ax.spines[side].set_color(INK)
    ax.tick_params(colors=INK, labelsize=11)
    ax.xaxis.label.set_color(INK)
    ax.yaxis.label.set_color(INK)
    ax.set_xlabel("Date", fontsize=13)


def legend(ax, loc):
    leg = ax.legend(loc=loc, frameon=True, fontsize=11)
    leg.get_frame().set_facecolor(BG)
    leg.get_frame().set_edgecolor(INK)
    for t in leg.get_texts():
        t.set_color(INK)


# ---- returns_index.png ----
fig, ax = plt.subplots(figsize=(13.9, 6.9), dpi=200)
style(ax, fig)
ax.axhline(1.0, color=INK, linewidth=0.8, linestyle=":", zorder=1)
for k, name, c in SERIES:
    idx, v = [], 1.0
    for r in data[k]:
        v *= 1 + r / 100
        idx.append(v)
    hi = name == "AIC Portfolio"
    ax.plot(dates, idx, color=c, linewidth=3.0 if hi else 1.8, label=name, zorder=5 if hi else 3)
ax.xaxis.set_major_locator(mdates.DayLocator(bymonthday=(1, 15)))
ax.xaxis.set_major_formatter(mdates.DateFormatter("%Y-%m-%d"))
plt.setp(ax.get_xticklabels(), rotation=30, ha="right")
ax.set_ylabel("Index", fontsize=13)
legend(ax, "lower left")
fig.tight_layout()
fig.savefig(OUT / "returns_index.png", facecolor=BG)
plt.close(fig)

# ---- returns_bar.png ----
fig, ax = plt.subplots(figsize=(13.9, 6.9), dpi=200)
style(ax, fig)
n, w = len(SERIES), 0.8 / len(SERIES)
x = range(len(dates))
ax.axhline(0, color=INK, linewidth=0.8, linestyle=":", zorder=1)
for i, (k, name, c) in enumerate(SERIES):
    ax.bar([xi + (i - (n - 1) / 2) * w for xi in x], data[k], width=w,
           color=c, label=name, zorder=3)
step = max(1, len(dates) // 10)
ticks = list(range(0, len(dates), step))
ax.set_xticks(ticks)
ax.set_xticklabels([dates[i].strftime("%d %b") for i in ticks], rotation=30, ha="right")
ax.set_xlim(-1, len(dates))
ax.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda v, _: f"{v:.1f}%"))
ax.set_ylabel("Daily Return", fontsize=13)
legend(ax, "upper right")
fig.tight_layout()
fig.savefig(OUT / "returns_bar.png", facecolor=BG)
plt.close(fig)
print("ok")

# flatten to RGB so there is no alpha channel at all
from PIL import Image
for name in ("returns_index.png", "returns_bar.png"):
    Image.open(OUT / name).convert("RGB").save(OUT / name)
