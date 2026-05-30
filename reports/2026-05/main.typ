// ============================================================
//  reports/2026-05/main.typ
//  Compile with: typst compile reports/2026-05/main.typ
//
//  Page order:
//    1. Cover             (dark)  — from report wrapper
//    2. Executive Summary (dark)  — dark-page[]
//    3. Team              (dark)  — dark-page[]
//    4. Content pages     (light) — standard flow
//    5. Final / Imprint   (dark)  — final-page()
// ============================================================

#import "../../lib/report.typ": report
#import "../../lib/components.typ": *

#show: report.with(
  month: "May 2026",
)

// ── 2. EXECUTIVE SUMMARY (dark page) ────────────────────────
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Executive Summary

  We are pleased to present the portfolio report for the AIC Capital Team for
  May 2026. The Capital Team operates under a democratic governance model in
  which every trading decision must pass a majority vote, with the Portfolio
  Manager retaining a final veto to ensure rigorous risk management.

  #v(10pt)

  Over the reporting period the portfolio delivered a net return of *+3.4 %*,
  outperforming the 60/40 benchmark by *+1.2 pp*. The primary contributors were
  the European defence basket and the semiconductors position, while a short-term
  position in grid utilities weighed modestly on returns.

  #v(10pt)

  The investment universe remains diversified across equities, bonds, ETFs, and
  exchange-traded commodities, operated without leverage. The team continues to
  apply a research-driven, thesis-based approach for each position.
]

// ── 3. TEAM (dark page) ─────────────────────────────────────
#dark-page[
  = Our Team

  == Current Members

  #v(6pt)
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 0.8cm,
    current-member(name: "Mathis Makarski",  photo: "/assets/avatars/mathis_makarski.jpg"),
    current-member(name: "Isabelle Chang",   photo: "/assets/avatars/isabelle_chang.png"),
    current-member(name: "Yuri Daminato",    photo: "/assets/avatars/yuri_daminato.png"),
    current-member(name: "Simon Gintars",    photo: "/assets/avatars/simon_gintars.png"),
    current-member(name: "Justus Gosten",    photo: "/assets/avatars/justus_gosten.png"),
    current-member(name: "Yujin Song",       photo: "/assets/avatars/yujin_song.png"),
    current-member(name: "Nicolas Wellers",  photo: "/assets/avatars/nicolas_wellers.png"),
  )

  == New Members
  #v(6pt)
  #stack(spacing: 14pt,
    new-member(
      name: "Anna Müller",
      intro: "Anna is a B.Sc. Computer Science student with a strong interest in quantitative finance and data analysis. She has experience with Python and R, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/mathis_makarski.jpg",
    ),
        new-member(
      name: "Anna Müller",
      intro: "Anna is a B.Sc. Computer Science student with a strong interest in quantitative finance and data analysis. She has experience with Python and R, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/mathis_makarski.jpg",
    ),
        new-member(
      name: "Anna Müller",
      intro: "Anna is a B.Sc. Computer Science student with a strong interest in quantitative finance and data analysis. She has experience with Python and R, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/mathis_makarski.jpg",
    ),
        new-member(
      name: "Anna Müller",
      intro: "Anna is a B.Sc. Computer Science student with a strong interest in quantitative finance and data analysis. She has experience with Python and R, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/mathis_makarski.jpg",
    ),
        new-member(
      name: "Anna Müller",
      intro: "Anna is a B.Sc. Computer Science student with a strong interest in quantitative finance and data analysis. She has experience with Python and R, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/mathis_makarski.jpg",
    ),
  )
]

// ── 4. CONTENT PAGES (light background) ─────────────────────

= Investment Strategy

#twocol[
  The Capital Team manages a discretionary, long-only multi-asset portfolio
  with the objective of generating total returns through active management.
  The investable universe encompasses equities, bonds, ETFs, and
  exchange-traded commodities, operated without leverage.

  A central consideration is the distinction between returns attributable to
  systematic risk premia and returns derived from differentiated,
  research-driven analysis. Factor exposures are monitored explicitly and each
  position is evaluated on whether its thesis is specific, falsifiable, and not
  already reflected in consensus estimates.

  Position sizing follows a conviction-weighted model, where higher-conviction
  ideas receive allocations up to 15 % of NAV, subject to individual security
  concentration limits. Sector exposure is monitored relative to the MSCI World
  benchmark and deviations of more than 10 pp require documented rationale.

  Risk is managed through regular stress-testing against macro scenarios
  (rates shock, recession, USD strength), with the Portfolio Manager empowered
  to reduce any position unilaterally in response to market conditions.
]

= Portfolio Performance

#data-table(
  (2.2fr, 1fr, 1fr, 1fr),
  ("Position", "Weight", "Return", "Contribution"),
  "Semiconductors basket", "14 %", "+8.2 %", "+1.12 %",
  "Trainline",             "9 %",  "+3.4 %", "+0.31 %",
  "European defence",      "11 %", "+5.1 %", "+0.56 %",
  "Grid utilities",        "8 %",  "−1.2 %", "−0.10 %",
  "Cash & equivalents",    "12 %", "+0.4 %", "+0.05 %",
)

#v(10pt)

#placeholder-figure(caption: [Cumulative return vs. 60/40 benchmark])

// ── 5. FINAL PAGE (dark) ────────────────────────────────────
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Disclosures

  This report has been prepared by members of the Aachen Investment Club
  e.V. (AIC) for general informational and educational purposes only.
  It does not constitute investment advice, a personal recommendation, or
  an offer or solicitation to buy or sell any securities or financial
  instruments. The views expressed reflect the opinions of the AIC Capital
  Team at the time of writing and may change without notice.

  Past performance is not indicative of future results. All investments
  involve risk, including the possible loss of principal. Readers should
  conduct their own due diligence and consult a qualified financial adviser
  before making any investment decisions. The AIC is a student organisation
  and is not regulated by BaFin or any other financial supervisory authority.

  = Imprint

  *Aachen Investment Club e.V.* — RWTH Aachen University, Aachen, Germany

  *Responsible for content:* Mathis Makarski (Portfolio Manager)

  *Contact:* capital\@aachen-investment-club.de

  *Published:* May 2026 · © 2026 Aachen Investment Club e.V.
]
