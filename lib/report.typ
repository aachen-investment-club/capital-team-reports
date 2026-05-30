// ============================================================
//  report.typ  —  THE TEMPLATE WRAPPER
//  Wraps all light-background content pages.
//  Dark pages (cover, exec summary, team, final) are their
//  own page() calls in components.typ.
// ============================================================

#import "theme.typ": brand, fonts, sizes
#import "components.typ": cover

#let report(
  title: "Portfolio Report",
  month: "[Month][Year]",
  org:   "Aachen Investment Club e.V. | Capital Team",
  body,
) = {
  set text(font: fonts.sans, size: sizes.body, fill: brand.ink, lang: "en")
  set par(justify: true, leading: 0.62em, spacing: 1.05em)

  set page(
    paper: "a4",
    margin: (x: 2cm, top: 2.4cm, bottom: 2cm),
    background: {
      place(top + left, image("../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
      place(top + left, rect(width: 100%, height: 100%, fill: white.transparentize(30%)))
    },
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: sizes.small, fill: brand.muted)
        grid(columns: (1fr, 1fr),
          align(left)[#org],
          align(right)[#title],
        )
        v(-3pt)
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

  // Level-1 heading: navy bold, no underline rule
  show heading.where(level: 1): it => block(below: 14pt, above: 16pt)[
    #text(size: sizes.h1, weight: "bold", fill: brand.primary)[#it.body]
  ]
  show heading.where(level: 2): it => block(below: 7pt, above: 10pt)[
    #text(size: sizes.h2, weight: "bold", fill: brand.primary)[#it.body]
  ]

  cover(title: title, month: month, org: org)
  body
}
