import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.colors as mcolors
import numpy as np
from pathlib import Path

OUT  = Path(__file__).parent
NAVY = "#172140"
MUTED = "#6b7280"

import matplotlib.cm as cm
CMAP = cm.RdYlGn  # red → yellow → green, matches original

FIXED_LEFT  = 0.22   # same left margin for all heatmaps → identical cell width
FIXED_RIGHT = 0.91
FIXED_WIDTH = 10     # all heatmaps saved at same pixel width

def _heatmap(data, rows, cols, title, out_path, figsize=(FIXED_WIDTH, 5.5), cbar_label="Avg Z-score"):
    nrows, ncols = data.shape
    fig, ax = plt.subplots(figsize=(FIXED_WIDTH, figsize[1]), facecolor="none")

    vmax = max(abs(float(data.min())), abs(float(data.max())))
    im = ax.imshow(data, cmap=CMAP, vmin=-vmax, vmax=vmax, aspect="auto")

    # Cell labels
    for i in range(nrows):
        for j in range(ncols):
            v = float(data[i, j])
            r, g, b, _ = CMAP((v + vmax) / (2 * vmax))
            lum = 0.299 * r + 0.587 * g + 0.114 * b
            tc = "white" if lum < 0.52 else NAVY
            ax.text(j, i, f"{'+' if v >= 0 else ''}{v:.2f}",
                    ha="center", va="center",
                    fontsize=9, fontweight="bold", color=tc, zorder=5)

    # White separators
    for i in range(nrows + 1):
        ax.axhline(i - 0.5, color="white", linewidth=2, zorder=3)
    for j in range(ncols + 1):
        ax.axvline(j - 0.5, color="white", linewidth=2, zorder=3)

    ax.set_xticks(range(ncols))
    ax.set_xticklabels(cols, fontsize=9, color=NAVY, fontweight="bold")
    ax.set_yticks(range(nrows))
    ax.set_yticklabels(rows, fontsize=9, color=NAVY)
    ax.xaxis.tick_top()
    ax.tick_params(length=0, pad=7)
    for spine in ax.spines.values():
        spine.set_visible(False)

    cbar = fig.colorbar(im, ax=ax, fraction=0.022, pad=0.02, shrink=0.85)
    cbar.ax.tick_params(labelsize=7.5, colors=MUTED, length=0)
    cbar.outline.set_visible(False)
    cbar.set_label(cbar_label, fontsize=7.5, color=MUTED, labelpad=6)

    fig.suptitle(title, x=0.0, y=1.0, ha="left", va="bottom",
                 fontsize=11, fontweight="bold", color=NAVY)

    plt.tight_layout()
    fig.subplots_adjust(left=FIXED_LEFT, right=FIXED_RIGHT)
    fig.savefig(out_path, dpi=150,
                facecolor="none", transparent=True)
    plt.close(fig)
    print(f"Saved {out_path}")


# ── 1. Market Factor Exposure (heatmap) ───────────────────────

mkt_rows = [
    "Communication Services", "Consumer Discretionary", "Consumer Staples",
    "Energy", "Financials", "Health Care", "Industrials",
    "Information Technology", "Materials", "Utilities",
]
mkt_cols = ["Value", "Momentum", "Growth", "Volatility", "Liquidity"]
mkt_data = np.array([
    [ 0.40, -0.34, -0.39, -0.08, -0.60],
    [ 0.62, -0.57, -0.45,  0.32, -0.45],
    [-0.54, -0.50, -0.54, -0.58,  0.26],
    [-0.04,  1.02,  0.70, -0.12,  0.04],
    [ 0.14, -0.03, -0.02, -0.47,  0.33],
    [-0.32, -0.03,  0.05,  0.34,  0.25],
    [-0.41, -0.01, -0.07,  0.24,  0.42],
    [-0.53,  0.84,  0.97,  1.10,  0.09],
    [ 0.22,  0.03,  0.01, -0.14, -0.56],
    [-0.11,  0.10, -0.01, -0.96, -0.06],
])

_heatmap(
    mkt_data, mkt_rows, mkt_cols,
    "By Market",
    OUT / "market_factor_exposure.png",
    figsize=(FIXED_WIDTH, 6),
)


# ── 2. Individual Position Exposure (heatmap) ─────────────────

pos_rows = ["AIXA", "PURR", "SAN", "TRNI"]
pos_cols = ["Value", "Momentum", "Growth", "Volatility", "Liquidity"]
pos_data = np.array([
    [-0.69,  3.96,  3.67,  3.23, -1.62],
    [ 0.11,  1.63,  2.86,  3.79, -2.85],
    [ 0.15,  0.65,  0.67,  0.07,  0.78],
    [-0.53, -0.78, -0.80,  0.34, -2.89],
])

_heatmap(
    pos_data, pos_rows, pos_cols,
    "By Position",
    OUT / "individual_position_exposure.png",
    figsize=(FIXED_WIDTH, 3.2),
    cbar_label="Z-score",
)


# ── 3. Portfolio Factor Tilts (horizontal bar chart) ──────────

tilt_factors = ["Growth", "Momentum", "Volatility", "Value", "Liquidity"]
tilt_values  = [2.25, 2.16, 2.13, -0.31, -1.28]

fig, ax = plt.subplots(figsize=(8, 4), facecolor="none")

colors = ["#16a34a" if v >= 0 else "#dc2626" for v in tilt_values]
bars = ax.barh(tilt_factors, tilt_values, color=colors,
               height=0.55, zorder=3)

# Value labels — outside bar end, with padding
xrange = max(tilt_values) - min(tilt_values)
pad = xrange * 0.03
for bar, val in zip(bars, tilt_values):
    if val >= 0:
        xpos, ha = val + pad, "left"
    else:
        xpos, ha = val - pad, "right"
    ax.text(xpos, bar.get_y() + bar.get_height() / 2,
            f"{'+' if val >= 0 else ''}{val:.2f}",
            va="center", ha=ha, fontsize=9, fontweight="bold",
            color="#16a34a" if val >= 0 else "#dc2626")

# Zero line
ax.axvline(0, color=NAVY, linewidth=0.8, zorder=4)

# Grid
ax.set_axisbelow(True)
ax.xaxis.grid(True, color="#e5e7eb", linewidth=0.6, linestyle="--")
ax.yaxis.grid(False)

ax.set_xlabel("Z-score", fontsize=8.5, color=MUTED, labelpad=6)
ax.tick_params(axis="x", labelsize=8, colors=MUTED, length=0)
ax.tick_params(axis="y", labelsize=9.5, colors=NAVY, length=0)
ax.invert_yaxis()
xmin, xmax = ax.get_xlim()
ax.set_xlim(xmin * 1.25, xmax * 1.1)  # extra room for labels on both sides

for spine in ax.spines.values():
    spine.set_visible(False)

fig.suptitle("Portfolio Tilt", x=0.0, y=1.02,
             ha="left", va="bottom",
             fontsize=11, fontweight="bold", color=NAVY)

plt.tight_layout()
fig.savefig(OUT / "portfolio_factor_tilts.png", dpi=150,
            bbox_inches="tight", facecolor="none", transparent=True)
plt.close(fig)
print(f"Saved {OUT / 'portfolio_factor_tilts.png'}")
