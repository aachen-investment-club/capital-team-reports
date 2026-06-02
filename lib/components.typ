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
    ]
    #place(bottom + left, dx: 2cm, dy: -2cm)[
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
#let current-member(name: "", photo: none) = {
  layout(size => {
    let w = size.width
    let s = w * 0.7
    stack(
      spacing: 8pt,
      align(center, block(
        width: s, height: s,
        fill: brand.card, radius: 5pt, clip: true,
      )[
        #if photo != none {
          image(photo, width: 100%, height: 100%, fit: "cover")
        } else {
          align(center + horizon)[
            #text(fill: brand.dim.lighten(30%), size: 8pt, weight: "bold")[photo]
          ]
        }
      ]),
      block(width: w, inset: (x: 2pt))[
        #align(center)[#text(weight: "bold", fill: white, size: 10pt)[#name]]
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
      width: 2.5cm, height: 2.5cm,
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
      #v(8pt, weak: true)
      #text(fill: _body-on-dark, size: 9pt)[#intro]
    ],
  )
  v(6pt)
}

// ---- Two-column text block ---------------------------------
#let twocol(body) = columns(2, gutter: 16pt, body)

// ---- Branded data table ------------------------------------
#let data-table(cols, head, ..cells) = {
  set text(size: 8pt)
  set par(justify: false)
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

// ---- Portfolio snapshot table --------------------------------
// baskets: array of (name, nav, ret, positions)
// positions: array of (symbol, name, isin, nav, ret)
#let portfolio-table(
  baskets,
  font-size:    9pt,
  header-fill:  brand.primary,
  basket-fill:  brand.accent.lighten(70%),
  header-text:  white,
  basket-text:  brand.primary,
  stroke-color: brand.line,
) = {
  let hcell(body, al: left + horizon) = table.cell(
    fill: header-fill, align: al,
  )[#text(fill: header-text, weight: "bold", size: font-size)[#body]]

  let basket-row(b) = (
    table.cell(colspan: 3, fill: basket-fill, align: left + horizon)[
      #text(fill: basket-text, weight: "bold", size: font-size - 1pt)[#b.name]
    ],
    table.cell(fill: basket-fill, align: right + horizon)[
      #text(fill: basket-text, weight: "bold", size: font-size - 1pt)[#b.nav]
    ],
    table.cell(fill: basket-fill, align: right + horizon)[
      #text(fill: basket-text, weight: "bold", size: font-size - 1pt)[#b.ret]
    ],
  )

  let pcell(body) = table.cell(fill: white)[#text(size: font-size)[#body]]

  let pos-row(p) = (
    pcell(p.symbol),
    pcell(p.name),
    pcell(p.isin),
    pcell(p.nav),
    pcell(p.ret),
  )

  let rows = ()
  for b in baskets {
    rows = rows + basket-row(b)
    for p in b.positions {
      rows = rows + pos-row(p)
    }
  }

  set par(justify: false)
  table(
    columns: (auto, 1fr, auto, auto, auto),
    stroke: (x, y) => (bottom: 0.5pt + stroke-color),
    inset: (x: 8pt, y: 6pt),
    align: (x, y) => if x >= 3 { right + horizon } else { left + horizon },
    hcell([Symbol]),
    hcell([Name]),
    hcell([ISIN]),
    hcell([% NAV],       al: right + horizon),
    hcell([Cum. Return], al: right + horizon),
    ..rows,
  )
}

// ---- Investment Memo components ----------------------------

// Header bar: navy block with ticker accent + name + tagline
#let memo-header(ticker: "", name: "", tagline: "") = {
  block(width: 100%, fill: brand.primary, inset: (x: 14pt, y: 11pt), radius: 4pt)[
    #grid(
      columns: (auto, 1fr),
      gutter: 14pt,
      align(horizon)[
        #text(size: 22pt, weight: "bold", fill: brand.accent)[#ticker]
      ],
      align(horizon)[
        #text(size: 11pt, weight: "bold", fill: white)[#name]
        #if tagline != "" {
          linebreak()
          text(size: 8pt, fill: brand.dim, style: "italic")[#tagline]
        }
      ],
    )
  ]
  v(8pt)
}

// Key-value grid: pairs rendered as (label | value | label | value) rows
// pairs: array of 2-element arrays, e.g. (("Entry", "€14.72"), ...)
#let memo-kv(pairs) = {
  let cells = ()
  for p in pairs {
    cells.push(table.cell(fill: brand.light, inset: (x: 9pt, y: 7pt))[
      #text(size: 7.5pt, weight: "bold", fill: brand.muted)[#upper(p.at(0))]
    ])
    cells.push(table.cell(fill: white, inset: (x: 9pt, y: 7pt))[
      #text(size: 9pt, weight: "bold", fill: brand.ink)[#p.at(1)]
    ])
  }
  set text(size: 9pt)
  table(
    columns: (auto, 1fr, auto, 1fr),
    stroke: 0.5pt + brand.line,
    ..cells,
  )
  v(8pt)
}

// Section divider with accent rule
#let memo-rule(title) = {
  v(6pt)
  grid(
    columns: (auto, 1fr),
    gutter: 8pt,
    align(horizon)[#text(size: 8.5pt, weight: "bold", fill: brand.accent)[#upper(title)]],
    align(horizon)[#line(length: 100%, stroke: 0.5pt + brand.accent)],
  )
  v(5pt)
}

// Left-bordered callout box for Edge / Driver / notes
#let memo-callout(label: "", body) = {
  block(
    width: 100%,
    inset: (left: 10pt, right: 10pt, top: 7pt, bottom: 7pt),
    fill: brand.light,
    radius: 3pt,
    stroke: (left: 2pt + brand.accent),
  )[
    #text(size: 8pt, weight: "bold", fill: brand.accent)[#upper(label)#h(6pt)]#text(size: 9pt)[#body]
  ]
  v(5pt)
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
