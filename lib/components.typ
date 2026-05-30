// ============================================================
//  components.typ  —  REUSABLE BUILDING BLOCKS
// ============================================================

#import "theme.typ": brand, fonts, sizes

// Body text color on dark pages: lighter blueish-white (easier to read than pure white)
#let _body-on-dark = rgb("#ccdff7")

// ---- Internal: dark-page heading show-rules ----------------
#let _dark-headings = (body) => {
  show heading.where(level: 1): it => block(below: 14pt, above: 16pt)[
    #text(size: sizes.h1, weight: "bold", fill: white)[#it.body]
  ]
  show heading.where(level: 2): it => block(below: 8pt, above: 14pt)[
    #text(size: sizes.h2, weight: "bold", fill: brand.dim)[#it.body]
  ]
  body
}

// ---- Cover page (full-bleed, dark) -------------------------
// Uses a deeper, richer navy overlay to stand apart from content dark pages.
#let cover(title: "", month: "", org: "") = {
  page(
    margin: 0pt,
    fill: brand.primary,
    header: none,
    footer: none,
    background: {
      place(top + left, image("../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
      place(top + left, rect(width: 100%, height: 100%, fill: brand.primary.transparentize(30%)))
    },
  )[
    #place(top + left, dx: 2cm, dy: 2cm,
      image("../assets/logo-white.png", width: 5.0cm))
    #place(horizon + left, dx: 2cm)[
      #text(fill: white, size: 30pt, weight: "bold", tracking: 2pt)[#title]
      #v(10pt, weak: true)
      #text(fill: white.transparentize(15%), size: 14pt, tracking: 0.5pt)[#month]
      #v(10pt, weak: true)
      #text(fill: white.transparentize(40%), size: 10pt)[#org]
    ]
  ]
}

// ---- Dark page — general purpose (exec summary, team, final, etc.) ----
// logo: pass image("../assets/logo-white.png", width: 3.5cm) to show it
//       top-right; content flows below it automatically.
#let dark-page(logo: none, body) = {
  page(
    paper: "a4",
    margin: (x: 2cm, top: 2.2cm, bottom: 2cm),
    fill: brand.primary,
    header: none,
    footer: none,
    background: {
      place(top + left, image("../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
      place(top + left, rect(width: 100%, height: 100%, fill: brand.primary.transparentize(30%)))
    },
  )[
    #set text(fill: _body-on-dark)
    #if logo != none {
      align(right)[#logo]
      v(1cm)
    }
    #_dark-headings[#body]
  ]
}

// ---- Current team member card (1:1 square photo) -----------
// Designed to sit inside a 3-column grid on a dark page.
#let current-member(name: "", uni: "", major: "", photo: none) = {
  layout(size => {
    let w = size.width
    stack(
      spacing: 8pt,
      // Square photo area
      block(
        width: w, height: w,
        fill: brand.card, radius: 5pt, clip: true,
      )[
        #if photo != none {
          image(photo, width: 100%, height: 100%, fit: "cover")
        } else {
          align(center + horizon)[
            #text(fill: brand.dim.lighten(30%), size: 8pt, weight: "bold")[photo]
          ]
        }
      ],
      // Name + uni + major
      block(width: w, inset: (x: 2pt))[
        #text(weight: "bold", fill: white, size: 10pt)[#name]
        #v(2pt, weak: true)
        #text(fill: brand.dim, size: 8pt)[#uni]
        #v(1pt, weak: true)
        #text(fill: brand.dim, size: 8pt)[#major]
      ],
    )
  })
}

// ---- New member card (portrait photo + intro text) ---------
// Horizontal layout: photo left, name + intro right.
#let new-member(name: "", intro: "", photo: none) = {
  grid(
    columns: (2.8cm, 1fr),
    gutter: 14pt,
    // Portrait photo
    block(
      width: 2.8cm, height: 3.4cm,
      fill: brand.card, radius: 5pt, clip: true,
    )[
      #if photo != none {
        image(photo, width: 100%, height: 100%, fit: "cover")
      } else {
        align(center + horizon)[
          #text(fill: brand.dim.lighten(30%), size: 8pt, weight: "bold")[photo]
        ]
      }
    ],
    // Text
    block[
      #text(weight: "bold", fill: white, size: 11.5pt)[#name]
      #v(5pt, weak: true)
      #text(fill: _body-on-dark, size: 9pt)[#intro]
    ],
  )
  v(10pt)
}

// ---- Two-column text block ---------------------------------
#let twocol(body) = columns(2, gutter: 16pt, body)

// ---- Branded data table ------------------------------------
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
