// ============================================================
//  theme.typ  —  GLOBAL DESIGN TOKENS
//  Change a value here and the whole report re-themes.
//  This is your "set header colors globally" control panel.
// ============================================================

#let brand = (
  primary: rgb("#16264a"), // deep navy  — cover, headings, table header
  accent:  rgb("#c8a24a"), // gold       — rules, highlights, month label
  ink:     rgb("#1f2430"), // body text
  muted:   rgb("#6b7280"), // captions, secondary text, header/footer
  light:   rgb("#eef1f6"), // table zebra rows, placeholder fills
  line:    rgb("#d4d9e2"), // hairlines
)

#let fonts = (
  sans: ("Montserrat",),
  mono: ("DejaVu Sans Mono",),
)

#let sizes = (
  body:  10pt,
  small:  8pt,
  h1:    19pt,
  h2:    13pt,
)
