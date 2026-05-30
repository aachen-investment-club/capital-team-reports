// ============================================================
//  reports/2026-05/main.typ
//  THIS is the file you edit each month.
//  Paste your content under the headings. Compile with:
//    typst compile reports/2026-05/main.typ
// ============================================================

#import "../../lib/report.typ": report
#import "../../lib/components.typ": *

// ---- Set the month's metadata, then everything below is content ----
#show: report.with(
  title: "AIC Portfolio Report",
  month: "May 2026",
  org:   "Aachen Investment Club e.V.",
)

= Executive Summary

We are pleased to present the portfolio report for the AIC Capital Team. This
section is plain text — write or paste paragraphs directly and they flow
normally. Headings are styled automatically: write `= Title` for a section and
`== Subtitle` for a subsection.

The Capital Team operates under a democratic governance model in which every
trading decision must pass a majority vote, with the Portfolio Manager retaining
a final veto to ensure rigorous risk management.

= Our Team

#team-member(
  "Mathis Makarski",
  "Founded the Capital Team in January 2026 and serves on the AIC board. A final-year M.Sc. Electrical Engineering student at RWTH Aachen; focuses on global macro and systematic strategies.",
)
#team-member(
  "Isabelle Chang",
  "Quant team member and second-year B.Sc. Industrial Engineering student. Originally from Malaysia; research focus on the energy transition and grid modernization.",
)
#team-member(
  "Yuri Daminato",
  "Joined the AIC in October 2025, pursuing a B.Sc. in Business Administration. Focuses on South American markets and global tech equities.",
)

= Investment Strategy

#twocol[
  The Capital Team manages a discretionary, long-only multi-asset portfolio with
  the objective of generating total returns through active management. The
  investable universe encompasses equities, bonds, ETFs, and exchange-traded
  commodities, operated without leverage.

  #lorem(60)

  A central consideration is the distinction between returns attributable to
  systematic risk premia and returns derived from differentiated, research-driven
  analysis. Factor exposures are monitored explicitly and each position is
  evaluated on whether its thesis is specific, falsifiable, and not already
  reflected in consensus estimates.

  #lorem(55)
]

= Portfolio Performance

Below is the styled table component. Pass column widths, a header row, then the
cells left-to-right. Numbers right-align automatically; the first column stays
left-aligned.

#data-table(
  (2.2fr, 1fr, 1fr, 1fr),
  ("Position", "Weight", "Return", "Contribution"),
  "Semiconductors basket", "14%", "+8.2%", "+1.12%",
  "Trainline",             "9%",  "+3.4%", "+0.31%",
  "European defence",      "11%", "+5.1%", "+0.56%",
  "Grid utilities",        "8%",  "−1.2%", "−0.10%",
  "Cash & equivalents",    "12%", "+0.4%", "+0.05%",
)

#v(10pt)

#placeholder-figure(caption: [Cumulative return vs. 60/40 benchmark])

= Disclosures

This report has been prepared by students of the Aachen Investment Club for
general informational purposes only. It does not constitute a personal
recommendation or an offer to buy or sell any securities. Past performance is
not indicative of future results.
