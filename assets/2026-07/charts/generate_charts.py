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

    for wedge, label, size, color in zip(wedges, labels, sizes, colors):
        angle = (wedge.theta2 + wedge.theta1) / 2   # midpoint angle in degrees
        rad   = np.deg2rad(angle)
        x = 0.74 * np.cos(rad)
        y = 0.74 * np.sin(rad)

        # Rotate text to follow the slice radially; flip if upside-down
        rot = angle
        if 90 < angle % 360 < 270:
            rot += 180

        fontsize = (11 if size >= 15 else 9.5) if size >= bold_threshold else 7.5

        ax.text(x, y, f"{label}\n{size:.1f}%",
                ha="center", va="center",
                fontsize=fontsize,
                fontweight="bold", color="white",
                rotation=rot,
                rotation_mode="anchor")

    ax.set_xlim(-1.35, 1.35)
    ax.set_ylim(-1.35, 1.35)
    ax.axis("off")
    plt.tight_layout()
    fig.savefig(out_path, dpi=150, bbox_inches="tight",
                facecolor="none", transparent=True)
    plt.close(fig)
    print(f"Saved {out_path}")


# ── weights_by_position ────────────────────────────────────────────────────────
pos_labels = ["SMH","SAN","ESIF","AIXA","TRNI","PURR","URNU","CASH_EUR","CASH_GBP","XLUS","WDEF","MELI","COPAl"]
pos_sizes  = [ 5.80, 4.40,  4.36, 3.95,  1.85,  1.61,  1.32,     40.21,      7.84, 8.63, 7.96,  6.19,  5.88]
pos_colors = [
    MID_BLUE,    # SMH
    PALE_BLUE,   # SAN
    SILVER,      # ESIF
    "#a8bfd8",   # AIXA
    "#c8d8ea",   # TRNI
    VERY_LIGHT,  # PURR
    "#b8cce0",   # URNU
    NAVY,        # CASH_EUR
    "#243d6b",   # CASH_GBP
    BLUE,        # XLUS
    DARK_BLUE,   # WDEF
    LIGHT_BLUE,  # MELI
    "#7ba3d0",   # COPAl
]

donut(pos_labels, pos_sizes, pos_colors, OUT / "weights_by_position.png")


# ── weights_by_theme ──────────────────────────────────────────────────────────
thm_labels = ["EU Sovereignty","EU Financials","AI & Semis","Commodity","Energy Demand","Single Positions","Cash"]
thm_sizes  = [           7.96,           8.77,       9.74,  5.88,           9.95,              9.65, 48.05]
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
