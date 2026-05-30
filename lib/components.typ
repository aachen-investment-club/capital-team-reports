// ============================================================
//  components.typ  —  REUSABLE BUILDING BLOCKS
//  Call these from your monthly content file.
// ============================================================

#import "theme.typ": brand, fonts, sizes

// ---- Cover page (full-bleed background + logo) -------------
// Image paths are relative to THIS file (lib/), so "../assets/...".
#let cover(title: "", month: "", org: "") = {
  page(
    margin: 0pt,
    header: none,
    footer: none,
    background: {
      place(top + left, image("../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
      place(top + left, rect(width: 100%, height: 100%, fill: brand.primary.transparentize(20%)))
    },
  )[
    #place(top + left, dx: 2cm, dy: 2cm, image("../assets/logo-white.png", width: 5.0cm))
    #place(bottom + left, dx: 2cm, dy: -2.6cm)[
      #text(fill: white, size: 33pt, weight: "bold")[#title]
      #v(6pt, weak: true)
      #text(fill: brand.accent, size: 19pt, weight: "bold")[#month]
      #v(4pt, weak: true)
      #text(fill: white, size: 12pt)[#org]
    ]
  ]
}

// ---- Two-column text block ---------------------------------
#let twocol(body) = columns(2, gutter: 16pt, body)

// ---- Branded data table ------------------------------------
// cols:  column track sizes, e.g. (2fr, 1fr, 1fr)
// head:  array of header strings
// ..rows: cell values, left-to-right, top-to-bottom
#let data-table(cols, head, ..cells) = {
  set text(size: 9pt)
  table(
    columns: cols,
    stroke: (x, y) => (bottom: 0.5pt + brand.line),
    inset: (x: 8pt, y: 7pt),
    align: (x, y) => if x == 0 { left + horizon } else { right + horizon },
    fill: (x, y) => {
      if y == 0 { brand.primary }
      else if calc.even(y) { brand.light }
      else { white }
    },
    table.header(..head.map(h => text(fill: white, weight: "bold")[#h])),
    ..cells.pos(),
  )
}

// ---- Placeholder figure ------------------------------------
#let placeholder-figure(caption: [Figure], height: 6cm) = figure(
  block(
    width: 100%, height: height,
    fill: brand.light, stroke: 1pt + brand.line, radius: 4pt,
    inset: 0pt,
  )[
    #align(center + horizon)[
      #text(fill: brand.muted, weight: "bold", size: 11pt)[Figure placeholder]
      #linebreak()
      #text(fill: brand.muted, size: 8pt)[replace with chart / image]
    ]
  ],
  caption: caption,
)

// ---- Team member card --------------------------------------
#let team-member(name, bio) = {
  grid(
    columns: (2.6cm, 1fr),
    gutter: 12pt,
    block(width: 2.6cm, height: 3.2cm, fill: brand.light,
          stroke: 1pt + brand.line, radius: 3pt)[
      #align(center + horizon)[#text(fill: brand.muted, size: 8pt)[photo]]
    ],
    [
      #text(weight: "bold", size: 12pt, fill: brand.primary)[#name]
      #v(3pt, weak: true)
      #text(size: 9pt)[#bio]
    ],
  )
  v(10pt)
}
