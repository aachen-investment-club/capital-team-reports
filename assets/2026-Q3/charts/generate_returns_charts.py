import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
import matplotlib.font_manager as fm
import csv
from datetime import date
from pathlib import Path

OUT = Path(__file__).parent
QSTART = date(2026, 7, 1)

# ---- palette (report brand -- light-page theme, see lib/theme.typ) ----
INK        = "#0C1E40"   # primary text (titles)
SECONDARY  = "#334155"   # body text (axis labels, legend)
MUTED      = "#64748B"   # tick labels
GRID       = "#e1e0d9"   # gridline hairline
BASELINE   = "#94a3b8"   # zero/baseline dashed line
SURFACE    = "#ffffff"   # white chart background

PORTFOLIO  = "#eb6834"   # orange -- highlighted portfolio series
BENCH_COLORS = {
    "MSCI World":     "#3d75c8",
    "MSCI Europe":    "#2d5a9e",
    "60/40 Balanced": "#6497d4",
    "S&P 500":        "#9ab5e6",
}

COLS = {
    "portfolio_return_pct":    "AIC Portfolio",
    "msci_world_return_pct":   "MSCI World",
    "msci_europe_return_pct":  "MSCI Europe",
    "blend_60_40_return_pct":  "60/40 Balanced",
    "sp500_return_pct":        "S&P 500",
}
SERIES_ORDER = ["AIC Portfolio", "MSCI World", "MSCI Europe", "60/40 Balanced", "S&P 500"]

def color_for(name):
    return PORTFOLIO if name == "AIC Portfolio" else BENCH_COLORS[name]

def lw_for(name):
    return 2.4 if name == "AIC Portfolio" else 1.3

def zorder_for(name):
    return 5 if name == "AIC Portfolio" else 3

# ---- load data --------------------------------------------------------
rows = []
with open(OUT / "daily_returns.csv", newline="", encoding="utf-8") as f:
    for r in csv.DictReader(f):
        d = date.fromisoformat(r["date"])
        rows.append((d, r))

series = {name: [] for name in SERIES_ORDER}
dates = []
for d, r in rows:
    dates.append(d)
    for key, name in COLS.items():
        series[name].append(float(r[key]))

# index each series to 100 as of the last trading day on/before QSTART
def q_start_idx(dates):
    idx = 0
    for i, d in enumerate(dates):
        if d <= QSTART:
            idx = i
    return idx

start_i = q_start_idx(dates)
q_dates = dates[start_i:]

def style_axes(ax):
    ax.set_facecolor(SURFACE)
    for spine in ax.spines.values():
        spine.set_visible(False)
    ax.tick_params(colors=MUTED, labelsize=10)
    ax.xaxis.label.set_color(SECONDARY)
    ax.yaxis.label.set_color(SECONDARY)

def legend_below(ax, handles, labels):
    leg = ax.legend(
        handles, labels, loc="upper center", bbox_to_anchor=(0.5, -0.16),
        ncol=len(labels), frameon=False, fontsize=10.5,
        handlelength=1.6, handletextpad=0.6, columnspacing=1.4,
    )
    for text in leg.get_texts():
        text.set_color(SECONDARY)

# ---- returns_index.png: cumulative index, Q3-to-date ----------------------
fig, ax = plt.subplots(figsize=(11, 5.6), facecolor=SURFACE)
style_axes(ax)

idx_values = {}
for name in SERIES_ORDER:
    vals = series[name][start_i:]
    idx = [100.0]
    for v in vals[1:]:
        idx.append(idx[-1] * (1 + v / 100))
    idx_values[name] = idx

ax.axhline(100.0, color=BASELINE, linewidth=1, linestyle=(0, (2, 2)), zorder=1)
ax.grid(axis="y", color=GRID, linewidth=0.8, zorder=0)

handles, labels = [], []
for name in SERIES_ORDER:
    (line,) = ax.plot(
        q_dates, idx_values[name],
        color=color_for(name), linewidth=lw_for(name), zorder=zorder_for(name),
        solid_capstyle="round",
    )
    handles.append(line)
    labels.append(name)

ax.xaxis.set_major_locator(mdates.WeekdayLocator(byweekday=mdates.MO, interval=2))
ax.xaxis.set_major_formatter(mdates.DateFormatter("%d %b"))
fig.autofmt_xdate(rotation=0, ha="center")
ax.set_ylabel("Index (Q3 start = 100)")
ax.set_xlabel("")

legend_below(ax, handles, labels)
fig.tight_layout(rect=(0, 0.04, 1, 1))
fig.savefig(OUT / "returns_index.png", dpi=200, facecolor=SURFACE)
plt.close(fig)
print("Saved returns_index.png")

# ---- returns_bar.png: daily returns, Q3-to-date ---------------------------
fig, ax = plt.subplots(figsize=(11, 5.6), facecolor=SURFACE)
style_axes(ax)

n = len(SERIES_ORDER)
width = 0.8 / n
x = list(range(len(q_dates)))

ax.axhline(0, color=BASELINE, linewidth=1, zorder=1)
ax.grid(axis="y", color=GRID, linewidth=0.8, zorder=0)

handles, labels = [], []
for i, name in enumerate(SERIES_ORDER):
    vals = series[name][start_i:]
    offs = [xi + (i - (n - 1) / 2) * width for xi in x]
    bars = ax.bar(
        offs, vals, width=width * 0.92,
        color=color_for(name), zorder=zorder_for(name),
    )
    handles.append(bars)
    labels.append(name)

# thin the x tick labels
step = max(1, len(q_dates) // 12)
tick_pos = list(range(0, len(q_dates), step))
ax.set_xticks(tick_pos)
ax.set_xticklabels([q_dates[i].strftime("%d %b") for i in tick_pos], rotation=0, ha="center")
ax.set_ylabel("Daily Return")
ax.set_xlabel("")
ax.set_xlim(-1, len(q_dates))

legend_below(ax, handles, labels)
fig.tight_layout(rect=(0, 0.04, 1, 1))
fig.savefig(OUT / "returns_bar.png", dpi=200, facecolor=SURFACE)
plt.close(fig)
print("Saved returns_bar.png")
