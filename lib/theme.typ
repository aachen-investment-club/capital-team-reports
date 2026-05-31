// ============================================================
//  theme.typ  —  GLOBAL DESIGN TOKENS
// ============================================================

#let brand = (
  primary:  rgb("#172140"),  // deep navy — dark page backgrounds, cover
  accent:   rgb("#9ab5e6"),  // bright blue — rules, highlights, labels
  card:     rgb("#1a3461"),  // card/panel bg on dark pages
  ink:      rgb("#1f2430"),  // body text on light pages
  muted:    rgb("#6b7280"),  // captions, secondary text (light pages)
  dim:      rgb("#8fafd8"),  // secondary text on dark pages
  light:    rgb("#eef1f6"),  // table zebra rows, placeholder fills
  line:     rgb("#d4d9e2"),  // hairlines on light pages
  darkline: rgb("#2d4870"),  // hairlines on dark pages
)

#let fonts = (
  sans: ("Montserrat",),
  mono: ("DejaVu Sans Mono",),
)

#let sizes = (
  body:  9pt,
  small:  8pt,
  h1:    19pt,
  h2:    13pt,
)
