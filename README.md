# AIC Portfolio Report — Typst template

A reusable Typst setup for the monthly portfolio report. Edit one content file
per month, compile, done. No GitHub Action required.

## Repo layout

```
aic-portfolio-report/
├── lib/
│   ├── theme.typ        ← colors, fonts, sizes  (your global design controls)
│   ├── components.typ   ← cover, data-table, placeholder-figure, team-member, twocol
│   └── report.typ       ← page setup, header/footer, heading styles (rarely touched)
├── assets/
│   ├── cover-bg.svg     ← full-bleed cover background (replace with real art)
│   └── logo.svg         ← logo monogram (replace with real logo)
└── reports/
    └── 2026-05/
        └── main.typ     ← THE FILE YOU EDIT EACH MONTH
```

## One-time setup

Install Typst (pick one):
- macOS: `brew install typst`
- Windows: `winget install --id Typst.Typst`
- Cargo: `cargo install typst-cli`
- VS Code: install the **Tinymist** extension for live preview while editing

If the options above do not work try
- Download the binary from https://github.com/typst/typst/releases and put it on your PATH

## Compile a report

From the repo root (the `--root .` flag lets Typst reach `lib/` and `assets/`):

```bash
typst compile --root . --font-path fonts/ reports/2026-05/main.typ
```

Live preview while writing:

```bash
typst watch --root . --font-path fonts/ reports/2026-05/main.typ
```

## New month workflow

1. Copy the previous month's folder: `cp -r reports/2026-05 reports/2026-06`
2. Open `reports/2026-06/main.typ`, change `month:` in the `report.with(...)` block,
   and replace the content under each heading.
3. Compile (see above). The PDF lands next to `main.typ`.

## Editing content (cheatsheet)

| You want…              | Write this                                                        |
|------------------------|-------------------------------------------------------------------|
| A section header       | `= Investment Strategy`                                           |
| A subsection           | `== Chips and Semiconductors`                                     |
| Two-column text        | `#twocol[ ...paragraphs... ]`                                     |
| A styled table         | `#data-table((2fr,1fr,1fr), ("A","B","C"), "x","1","2", ...)`     |
| A placeholder figure   | `#placeholder-figure(caption: [My caption])`                     |
| A real image           | `#figure(image("../../assets/chart.png"), caption: [Caption])`   |
| A team member          | `#team-member("Name", "Bio text...")`                            |
| Bold / italic          | `*bold*`  /  `_italic_`                                           |

## Re-theming globally

Open `lib/theme.typ` and change one value — e.g. `primary: rgb("#16264a")` — and
every section header, the cover, and table headers update at once. Same for fonts
and base sizes. That is the single source of truth for the look.

## Replacing placeholders

- Drop the real logo at `assets/logo.svg` (or `.png` — update the path in `lib/components.typ`).
- Drop the real cover graphic at `assets/cover-bg.svg`.
- Add monthly charts as image files under `assets/` and reference them with `image(...)`.
