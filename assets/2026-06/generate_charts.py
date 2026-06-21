import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from pathlib import Path

OUT = Path(__file__).parent

NAVY       = "#172140"
DARK_BLUE  = "#1a3461"
MID_BLUE   = "#2d5a9e"
BLUE       = "#3d75c8"
LIGHT_BLUE = "#6497d4"
PALE_BLUE  = "#9ab5e6"
SILVER     = "#8fafd8"
VERY_LIGHT = "#b8ccec"

SMALL_THRESHOLD = 3.0  # slices below this get a key entry instead of an in-wedge label

def donut(labels, sizes, colors, out_path, bold_threshold=5.5):
    fig, ax = plt.subplots(figsize=(9, 9), facecolor="none")
    ax.set_aspect("equal")

    wedges, _ = ax.pie(
        sizes,
        labels=None,
        colors=colors,
        startangle=90,
        wedgeprops=dict(width=0.52, edgecolor="white", linewidth=1.5),
        counterclock=False,
    )

    small_wedges = []  # (wedge, label, size, color) for key

    for wedge, label, size, color in zip(wedges, labels, sizes, colors):
        angle = (wedge.theta2 + wedge.theta1) / 2
        rad   = np.deg2rad(angle)
        x = 0.74 * np.cos(rad)
        y = 0.74 * np.sin(rad)

        if size >= bold_threshold:
            ax.text(x, y, f"{label}\n{size:.1f}%",
                    ha="center", va="center",
                    fontsize=11 if size >= 15 else 9.5,
                    fontweight="bold", color="white")
        elif size >= SMALL_THRESHOLD:
            ax.text(x, y, f"{label}\n{size:.1f}%",
                    ha="center", va="center",
                    fontsize=7, fontweight="bold", color="white")
        else:
            small_wedges.append((wedge, label, size, color))

    # ── Small-slice key (bottom-right corner of figure) ───────────────────────
    if small_wedges:
        key_x = 0.97   # right edge in figure coords
        key_y = 0.03   # bottom edge
        row_h = 0.045
        sw = 0.025     # swatch width in figure coords
        sh = 0.030     # swatch height

        # Background box
        n_rows = len(small_wedges)
        box_h = row_h * n_rows + 0.02
        box_w = 0.32
        box = plt.Rectangle(
            (key_x - box_w, key_y),
            box_w, box_h,
            transform=fig.transFigure,
            facecolor="white", edgecolor="#d4d9e2",
            linewidth=0.8, zorder=4, alpha=0.92,
        )
        fig.add_artist(box)

        for i, (_, label, size, color) in enumerate(small_wedges):
            row_y = key_y + box_h - row_h * (i + 1) + 0.005
            # Swatch
            swatch = plt.Rectangle(
                (key_x - box_w + 0.010, row_y + (row_h - sh) / 2),
                sw, sh,
                transform=fig.transFigure,
                facecolor=color, edgecolor="white",
                linewidth=0.5, zorder=5,
            )
            fig.add_artist(swatch)
            # Label
            fig.text(
                key_x - box_w + 0.010 + sw + 0.008,
                row_y + row_h / 2,
                f"{label}  {size:.1f}%",
                ha="left", va="center",
                fontsize=7.5, fontweight="bold",
                color=NAVY, zorder=5,
            )

    ax.set_xlim(-1.35, 1.35)
    ax.set_ylim(-1.35, 1.35)
    ax.axis("off")
    plt.tight_layout()
    fig.savefig(out_path, dpi=150, bbox_inches="tight",
                facecolor="none", transparent=True)
    plt.close(fig)
    print(f"Saved {out_path}")


# ── weights_by_position ────────────────────────────────────────────────────────
pos_labels = ["WDEF","SMH","AIXA","CASH_GBP","COPAl","SAN","ESIF","CASH_USD","PURR","XLUS","URNU","TRNl","CASH_EUR"]
pos_sizes  = [  7.25, 7.06, 6.73,      7.37,   5.65, 4.13,  3.95,      8.13,  2.38,  2.27,  1.58,  1.58,     41.91]
pos_colors = [
    DARK_BLUE,   # WDEF
    MID_BLUE,    # SMH
    BLUE,        # AIXA
    NAVY,        # CASH_GBP
    LIGHT_BLUE,  # COPAl
    PALE_BLUE,   # SAN
    SILVER,      # ESIF
    "#243d6b",   # CASH_USD
    VERY_LIGHT,  # PURR
    "#a8bfd8",   # XLUS
    "#b8cce0",   # URNU
    "#c8d8ea",   # TRNl
    NAVY,        # CASH_EUR
]

donut(pos_labels, pos_sizes, pos_colors, OUT / "weights_by_position.png")


# ── weights_by_theme ──────────────────────────────────────────────────────────
thm_labels = ["EU Sovereignty","EU Financials","AI & Semis","Copper","Energy Demand","Single Positions","Cash"]
thm_sizes  = [           7.25,           8.08,      13.79,   5.65,           3.85,              3.96, 57.41]
thm_colors = [
    DARK_BLUE,   # EU Sovereignty
    MID_BLUE,    # EU Financials
    BLUE,        # AI & Semis
    LIGHT_BLUE,  # Copper
    PALE_BLUE,   # Energy Demand
    SILVER,      # Single Positions
    NAVY,        # Cash
]

donut(thm_labels, thm_sizes, thm_colors, OUT / "weights_by_theme.png")
