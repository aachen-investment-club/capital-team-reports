import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import csv
from pathlib import Path

OUT = Path(__file__).parent

KEEP = ["Size", "Mid Cap", "Beta", "Momentum", "Short-Term Reversal", "Residual Volatility", "Value", "Earnings Yield", "Profitability", "Leverage", "Dividend Yield", "Liquidity"]

RDYLGN = mcolors.LinearSegmentedColormap.from_list(
    "rdylgn", ["#8b0000", "#d7301f", "#fdae61", "#fee08b", "#a6d96a", "#1a9850", "#006400"]
)

def cell_color(v, vmin=-2, vmax=2):
    t = (max(min(v, vmax), vmin) - vmin) / (vmax - vmin)
    return RDYLGN(t)

def text_color(v, vmin=-2, vmax=2):
    t = (max(min(v, vmax), vmin) - vmin) / (vmax - vmin)
    return "white" if (t < 0.22 or t > 0.85) else "#1f2430"

def heatmap(rows, cols, values, title, subtitle, out_path, figsize):
    fig, ax = plt.subplots(figsize=figsize, facecolor="white")
    n_rows, n_cols = len(rows), len(cols)
    for i, row in enumerate(rows):
        for j, col in enumerate(cols):
            v = values[row][col]
            y = n_rows - 1 - i
            ax.add_patch(plt.Rectangle((j, y), 1, 1, facecolor=cell_color(v),
                                        edgecolor="white", linewidth=2))
            ax.text(j + 0.5, y + 0.5, f"{v:+.2f}", ha="center", va="center",
                    fontsize=10, fontweight="bold", color=text_color(v))
    ax.set_xlim(0, n_cols)
    ax.set_ylim(0, n_rows)
    ax.set_xticks([j + 0.5 for j in range(n_cols)])
    ax.set_xticklabels(cols, rotation=35, ha="left", fontsize=10.5, color="#52514e")
    ax.xaxis.tick_top()
    ax.set_yticks([n_rows - 1 - i + 0.5 for i in range(n_rows)])
    ax.set_yticklabels(rows, fontsize=10.5, color="#52514e")
    ax.tick_params(length=0)
    for spine in ax.spines.values():
        spine.set_visible(False)
    fig.text(0.02, 0.98, title, fontsize=15, fontweight="bold", color="#0C1E40", va="top")
    fig.text(0.02, 0.935, subtitle, fontsize=10.5, color="#64748B", va="top")
    fig.tight_layout(rect=(0, 0, 1, 0.90))
    fig.savefig(out_path, dpi=180, facecolor="white", bbox_inches="tight")
    plt.close(fig)
    print(f"Saved {out_path}")

# ---- sector_exposures ------------------------------------------------
sectors, sec_values = [], {}
with open(OUT / "sector_exposures.csv", newline="", encoding="utf-8") as f:
    r = csv.DictReader(f)
    for row in r:
        sec = row["sector"]
        sectors.append(sec)
        sec_values[sec] = {k: float(row[k]) for k in KEEP}

heatmap(sectors, KEEP, sec_values,
        "Factor Exposures by GICS Sector",
        "As of 2026-07-01 · 101 securities classified",
        OUT / "sector_exposures.png", figsize=(11, 6.5))

# ---- position_exposures ------------------------------------------------
positions, pos_values = [], {}
with open(OUT / "position_exposures.csv", newline="", encoding="utf-8") as f:
    r = csv.DictReader(f)
    for row in r:
        sym = row[""]
        positions.append(sym)
        pos_values[sym] = {k: float(row[k]) for k in KEEP}

heatmap(positions, KEEP, pos_values,
        "Style Factor Exposures by Position",
        "As of 2026-07-01",
        OUT / "position_exposures.png", figsize=(9, 7.5))

# ---- portfolio_tilts ------------------------------------------------
tilts = []
with open(OUT / "portfolio_tilts.csv", newline="", encoding="utf-8") as f:
    r = csv.DictReader(f)
    for row in r:
        if row["factor"] in KEEP:
            tilts.append((row["factor"], float(row["z_score"])))
tilts.sort(key=lambda t: t[1], reverse=True)

fig, ax = plt.subplots(figsize=(9, 4.2), facecolor="white")
labels = [t[0] for t in tilts]
vals = [t[1] for t in tilts]
colors = ["#1a7a3c" if v >= 0 else "#8b1a1a" for v in vals]
y = list(range(len(labels)))[::-1]
ax.barh(y, vals, color=colors, height=0.6, zorder=3)
for yi, v in zip(y, vals):
    ax.text(v + (0.045 if v >= 0 else -0.045), yi, f"{v:+.2f}",
            va="center", ha="left" if v >= 0 else "right",
            fontsize=10.5, color="#1f2430", zorder=4)
ax.set_yticks(y)
ax.set_yticklabels(labels, fontsize=11, color="#52514e")
vmin, vmax = min(vals), max(vals)
span = vmax - vmin
ax.set_xlim(vmin - span * 0.28, vmax + span * 0.28)
ax.axvline(0, color="#c3c2b7", linewidth=1)
ax.set_xlabel("Exposure (z-score)", fontsize=10.5, color="#52514e")
for spine in ["top", "right", "left"]:
    ax.spines[spine].set_visible(False)
ax.tick_params(length=0)
ax.grid(axis="x", color="#e1e0d9", linewidth=0.8, zorder=0)
ax.set_axisbelow(True)
fig.text(0.02, 0.97, "Portfolio Factor Tilts", fontsize=15, fontweight="bold", color="#0C1E40", va="top")
fig.text(0.02, 0.90, "As of 2026-07-01 · 12 positions · 54.8% of NAV covered", fontsize=10.5, color="#64748B", va="top")
fig.tight_layout(rect=(0, 0, 1, 0.86))
fig.savefig(OUT / "portfolio_tilts.png", dpi=180, facecolor="white", bbox_inches="tight")
plt.close(fig)
print("Saved", OUT / "portfolio_tilts.png")
