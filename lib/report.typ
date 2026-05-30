// ============================================================
//  report.typ  —  THE TEMPLATE WRAPPER
//  Used via:  #show: report.with(title: ..., month: ..., org: ...)
//  You rarely need to touch this file.
// ============================================================

#import "theme.typ": brand, fonts, sizes
#import "components.typ": cover

#let report(
  title: "AIC Portfolio Report",
  month: "May 2026",
  org:   "Aachen Investment Club e.V.",
  body,
) = {
  // ---- Global text & paragraph defaults --------------------
  set text(font: fonts.sans, size: sizes.body, fill: brand.ink, lang: "en")
  set par(justify: true, leading: 0.62em, spacing: 1.05em)

  // ---- Page setup: running header + footer with page nos. --
  set page(
    paper: "a4",
    margin: (x: 2cm, top: 2.4cm, bottom: 2cm),
    background: {
      place(top + left, image("../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
      place(top + left, rect(width: 100%, height: 100%, fill: white.transparentize(8%)))
    },
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: sizes.small, fill: brand.muted)
        grid(columns: (1fr, 1fr),
          align(left)[#org],
          align(right)[#title],
        )
        v(-7pt)
        line(length: 100%, stroke: 0.5pt + brand.line)
      }
    },
    footer: context {
      if counter(page).get().first() > 1 {
        set text(size: sizes.small, fill: brand.muted)
        line(length: 100%, stroke: 0.5pt + brand.line)
        v(-3pt)
        grid(columns: (1fr, 1fr),
          align(left)[#month],
          align(right)[#counter(page).get().first()],
        )
      }
    },
  )

  // ---- Heading styles — just write `= Title` / `== Subtitle`
  show heading.where(level: 1): it => block(below: 14pt, above: 4pt)[
    #text(size: sizes.h1, weight: "bold", fill: brand.primary, tracking: 1.0pt)[
      #upper(it.body)
    ]
    #v(5pt, weak: true)
    #line(length: 100%, stroke: 1.5pt + brand.accent)
  ]
  show heading.where(level: 2): it => block(below: 7pt, above: 10pt)[
    #text(size: sizes.h2, weight: "bold", fill: brand.primary)[#it.body]
  ]

  // ---- Cover page, then the body ---------------------------
  cover(title: title, month: month, org: org)
  body
}
