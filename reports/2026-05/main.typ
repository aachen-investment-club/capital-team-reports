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
    current-member(name: "Yuri Daminato",    photo: "/assets/avatars/yuri_daminato.jpg"),
    current-member(name: "Simon Gintars",    photo: "/assets/avatars/simon_gintars.png"),
    current-member(name: "Justus Gosten",    photo: "/assets/avatars/justus_gosten.png"),
    current-member(name: "Yujin Song",       photo: "/assets/avatars/yujin_song.png"),
    current-member(name: "Nicolas Wellers",  photo: "/assets/avatars/nicolas_wellers.png"),
  )

  == New Members
  #v(6pt)
  #stack(spacing: 14pt,
    new-member(
      name: "Gerasimos Voutsinas",
      intro: "Filler text for Gerasimos. Gerasimos is a B.Sc. Mechanical Engineering student with a strong interest in quantitative finance and data analysis. He has experience with, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/gerasimos_voutsinas.jpeg",
    ),
        new-member(
      name: "Kah-Ming Ly",
      intro: "Kah-Ming is a B.Sc. Computer Science student with a strong interest in quantitative finance and data analysis. He has experience with Python and R, and is excited to contribute to the team's research efforts.",
      photo: "/assets/avatars/kah-ming_ly.jpeg",
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

// ── 4. CONTENT PAGES (light) ───────────────────────────────

= Market Environment

#columns(2, gutter: 16pt)[
  == The Conflict in the Middle East

  Despite statements of progress from U.S. officials, no commitments have been
  confirmed — shots have been fired by both parties and Trump has threatened
  full-scale war. The closure of the Strait of Hormuz has triggered a severe
  supply shock: the IMF projects a 19~% spike in energy commodities, global
  growth falling to 3.1~%, and headline inflation rising to 4.4~%. Central banks
  are tightening; investors are fleeing to safer assets, strengthening the dollar
  and weakening equities.#footnote[NYT, 29 May 2026 — iran-war-us-trump-deal; IMF Spring 2026 Economic Forecast]

  == Inflation and Interest Expectations

  US CPI hit 3.8~% YoY in April — the highest since May 2023 — driven by a
  3.8~% energy jump and Trump's tariff dynamic.#footnote[CNBC, 12 May 2026 — cpi-inflation-april-2026] Fed Chair Warsh cannot cut; the
  consensus now prices hikes. The Eurozone reached 3.0~% (highest since Sep
  2023), the UK 3.2~%, with energy running at 10.8~% annually. The ECB held
  rates unchanged in April.#footnote[Eurostat Euro Area Inflation Rate; EC Spring 2026 Economic Forecast]

  == Semiconductors and AI — A Cyber Rally?

  The global capex cycle is keeping markets resilient. NVIDIA is no longer the
  sole driver — data-centre revenue up 92~% YoY yet the stock is only ~20~%
  YTD; Intel +200~%, Micron +150~% YoY as capex flows through the supply
  chain.#footnote[KKR Flash Macro: Market Update May 2026; 24/7 Wall St. — The Semiconductor Rally Is Going Strong] More strikingly, cybersecurity has outpaced chips in May — an industry
  many held as AI-redundant now leads growth.#footnote[24/7 Wall St. — Palo Alto Is Positioning for the Next Security Supercycle as AI Threats Go Vertical]

  == Developments in Russo-Ukrainian War

  A first ceasefire ran 9–11 May; Putin has alluded to the war "coming to an
  end."#footnote[Al Jazeera — Putin suggests Russia's war on Ukraine 'coming to an end'; Euronews — Four years on: the economic toll] In reality Trump's peace talks are troubled and Ukraine's confidence in
  U.S. mediation is shallow. European defence spending surges regardless; a
  peace deal would unlock a large reconstruction trade, though this is not
  imminent.

  == Dollar Weakness and the Gold Run

  The DXY has fallen to ~97, a four-year low; Morgan Stanley sees "94 in Q2
  2026" as tariff credibility damage, fiscal concerns, and 2025 overvaluation
  compound.#footnote[Morgan Stanley — U.S. Dollar Depreciation Could Deepen Through First Half] Gold surges as the safe haven of choice — JP Morgan targets
  \$5,000/oz by Q4 2026, with \$6,000 possible longer term.#footnote[World Gold Council — Gold Demand Trends Q1 2026; JP Morgan research]
]

// ── INVESTMENT MEMOS ─────────────────────────────────────────

= Investment Memos

// ── ESIF ─────────────────────────────────────────────────────

#memo-header(
  ticker:  "ESIF",
  name:    "iShares MSCI Europe Financials ETF",
  tagline: "Multi-year EU infrastructure and rearmament investment cycle; loan growth and fee income re-rating closes the gap over 12–18 months.",
)

#memo-kv((
  ("Asset Class",   "Sector ETF"),
  ("Idea Category", "Growth"),
  ("Entry",         "€14.72 — 27/05/2026"),
  ("Target",        "€17.66 — +20%"),
  ("Stop Loss",     "€13.25 — −10%"),
  ("R/R",           "1:2"),
  ("Horizon",       "12–18 months"),
  ("Conviction",    "Medium — Initiated"),
))

#memo-rule("Thesis")

Europe is committing to fiscal investment via ReArm Europe, the €90bn Ukraine
loan, and NATO rearmament. European banks are the primary loan origination
channel. The market prices the sector on stagflation (3.0~% CPI, 1.1~% GDP)
and ignores the investment cycle entirely.

#memo-callout(label: "Edge")[Consensus treats EU financials as a stagflation victim; capex flows directly through bank balance sheets — NII and fee upgrades not yet in estimates.]

#memo-callout(label: "Driver")[Earnings re-rating on loan growth recovery as infrastructure disbursements accelerate through H2 2026.]

#memo-rule("Key Numbers")

#memo-kv((
  ("Fwd P/E",          "~8–9× vs. 11× hist."),
  ("Price",            "€14.72"),
  ("P/Book",           "~0.9×"),
  ("52-Wk Range",      "€11.87–€15.24"),
  ("Div. Yield",       "~5.5%"),
  ("vs. 52-Wk High",   "−3.4%"),
  ("Fwd Rev. Growth",  "+4–6% YoY"),
  ("TER",              "0.18%"),
))

#memo-rule("Catalysts & Scenarios")

*C1:* EU/ReArm spending announcements (Q2–Q4 2026) · *C2:* Bank Q2 earnings, NII upgrades (Jul/Aug) · *C3:* ECB holds or cuts

#v(4pt)

#data-table(
  (1fr, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−10%", "25%", "ECB hikes; growth cracks long-term",
  "Base", "+20%", "50%", "Stable ECB; loan growth 4–5%",
  "Bull", "+30%", "25%", "Full fiscal push; sector re-rates to historical P/E",
)

#v(4pt)
*Probability-weighted return: +15% · Max loss: −10%*

#memo-rule("Risks & Monitors")

#data-table(
  (1fr, 1fr, 1.8fr),
  ("Risk", "Monitor", "Trigger"),
  "ECB resumes hiking",        "HICP prints, ECB statements",  "CPI >3.5% + hiking signal → cut 50% within 6 months",
  "Stagflation deepens",       "PMI, GDP revisions",            "PMI <48 for two consecutive months → resize",
  "Loan / credit deterioration","ECB Lending Survey, NPLs",     "Standards tighten sharply → reduce",
)

#v(4pt)
*Next review:* ECB 05/06/2026 · Q2 earnings Jul 2026 · *Exit:* cut 50% at −10% · full exit at −15%

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
