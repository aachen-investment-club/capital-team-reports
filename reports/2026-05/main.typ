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

  Over the past few weeks, we have opened our starter positions, launched the
  official portfolio website, and published our first portfolio report.

  #v(10pt)

  In the first investment round in April, we allocated 30~% of total capital to
  starter positions, weighted using classical Markowitz optimisation. The second
  investment round will include both new starter positions and the opportunity to
  scale up existing ones. Scaling decisions will be driven entirely by our
  evaluation of each position's performance and a review of its underlying
  thesis. We are targeting equity holdings in excess of 50~% and do not plan to
  exit any current positions at this time.

  #v(10pt)

  With the official portfolio launch, we have expanded our team. We are pleased
  to welcome five new members, who will be introduced later in this report.
  Their expertise and energy will be valuable assets as we continue to grow the
  portfolio. We also wish Josephine all the best in her future endeavours.

  #v(10pt)

  Portfolio performance will be evaluated against several benchmarks across
  return and risk metrics, including the MSCI Europe, S&P 500, and a 60/40
  portfolio, among others.
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

  As the month of May comes to an end, a certain end to the conflict is still
  nowhere to be seen. Despite statements of progress from U.S. officials, there
  has been no confirmation of any commitments from either side — shots have been
  fired by both parties, and Trump has threatened full-scale war. The closure of
  the Strait of Hormuz has triggered a severe negative supply shock, abruptly
  halting the pre-conflict momentum that had global growth projected at 3.4~%.
  According to the IMF's reference forecast, even a short-lived disruption of
  this magnitude will cause a 19~% spike in energy commodities, dragging global
  growth down to 3.1~% and driving headline inflation up to 4.4~%. Central banks
  are now enforcing higher interest rates and tighter monetary policy, and
  investors are beginning to flee to safer assets, strengthening the dollar but
  weakening the stock market.#footnote[NYT, 29 May 2026 — iran-war-us-trump-deal; IMF Spring 2026 Economic Forecast]

  == Inflation and Interest Expectations

  The US CPI reached a seasonally adjusted increase of 0.6~% in April 2026,
  putting the one-year pace at 3.8~% — the highest since May 2023 and
  significantly above the Federal Reserve's 2~% target.#footnote[CNBC, 12 May 2026 — cpi-inflation-april-2026] Fed Chair Kevin Warsh will not
  be in a position to push rates lower. A significant inflationary driver has
  been energy prices, which jumped 3.8~%. Trump's global tariff dynamic has
  added further pressure. Chris Zaccarelli, CIO at Northlight Asset Management,
  speculates that the Fed will be forced to hike rates — a view shared by the
  general consensus. The US economy has proved resilient so far, but if
  inflation persists at these levels, the risk of recession becomes harder to
  dismiss.

  For the Eurozone, the story is similar. The one-year pace hit 3.0~% in April
  2026, the highest since September 2023; the UK reached 3.2~%. Energy inflation
  ran at an annual rate of 10.8~% in April, up from 5.1~% in March.#footnote[Eurostat Euro Area Inflation Rate; EC Spring 2026 Economic Forecast] The ECB
  remains determined and held rates unchanged in April.

  == Semiconductors and AI — A Cyber Rally?

  Despite inflationary pressures, the global capex cycle is helping keep markets
  relatively resilient. More countries are investing domestically in a push
  toward self-sufficiency. NVIDIA is no longer the sole driver: despite
  shattering records with data-centre revenue up 92~% YoY, the stock is up only
  ~20~% YTD. Intel is up 200~% YoY; Micron, 150~%.#footnote[KKR Flash Macro: Market Update May 2026; 24/7 Wall St. — The Semiconductor Rally Is Going Strong] Capex is flowing through
  the entire supply chain. Even more impressively, cybersecurity has outpaced
  chips in May — an industry many had written off as redundant in the age of AI
  now stands at the forefront of growth.#footnote[24/7 Wall St. — Palo Alto Is Positioning for the Next Security Supercycle as AI Threats Go Vertical]

  == Developments in Russo-Ukrainian War

  The first ceasefire brokered between Ukraine and Russia ran from 9–11 May.
  Putin has alluded to the war "coming to an end", and the situation appears to
  be calming.#footnote[Al Jazeera — Putin suggests Russia's war on Ukraine 'coming to an end'; Euronews — Four years on: the economic toll] In reality, Trump's declared peace talks seem deeply troubled.
  Ukraine's confidence in U.S. peace-making capacity is shallow — and rightly
  so. European defence spending continues to surge regardless. If a peace deal
  materialises, a massive Ukraine reconstruction trade will be unlocked, though
  this does not appear imminent.

  == Dollar Weakness and the Gold Run

  The DXY has broken down to around 97, a four-year low. Most major banks are
  forecasting further weakness through Q2 2026: Morgan Stanley projects it
  "could fall to 94 in the second quarter of 2026."#footnote[Morgan Stanley — U.S. Dollar Depreciation Could Deepen Through First Half] Tariff credibility damage,
  fiscal concerns, and the overvaluation of 2025 have all stacked up. Amidst
  dollar weakness and global conflict, gold continues to surge as a safe haven.
  JP Morgan projects prices "toward \$5,000/oz by Q4 2026, with \$6,000/oz a
  possibility longer term."#footnote[World Gold Council — Gold Demand Trends Q1 2026; JP Morgan research]
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

Europe is committing to fiscal investment in energy infrastructure, defence, and
industrial resilience — ReArm Europe, the €90bn Ukraine loan, and NATO
rearmament. European banks are the primary structuring and loan origination
channel. The market is pricing the sector on near-term stagflation (3.0~% CPI,
1.1~% GDP growth) and ignoring the investment cycle entirely.

*Edge:* Consensus treats European financials as a stagflation victim; we see
capex flowing directly through bank balance sheets, driving NII and fee income
upgrades not yet in estimates.

*Driver:* Earnings re-rating on loan growth recovery as infrastructure and
defence disbursements accelerate through H2 2026.

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

*C1:* EU infrastructure/ReArm spending announcements — ongoing Q2–Q4 2026

*C2:* European bank Q2 earnings; NII guidance upgrades — Jul/Aug 2026

*C3:* ECB signals hold or cut, removing the primary bear risk (longer-term)

#v(6pt)

#data-table(
  (1fr, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−10%", "25%", "ECB hikes; growth cracks long-term",
  "Base", "+20%", "50%", "Stable ECB; loan growth 4–5%",
  "Bull", "+30%", "25%", "Full fiscal push; sector re-rates to historical P/E",
)

#v(6pt)
*Probability-weighted return: +15% · Max loss: −10%*

#memo-rule("Risks & Monitors")

#data-table(
  (1fr, 1fr, 1.8fr),
  ("Risk", "Monitor", "Trigger"),
  "ECB resumes hiking",        "HICP prints, ECB statements",  "CPI >3.5% + hiking signal → cut 50% within 6 months",
  "Stagflation deepens",       "PMI, GDP revisions",            "PMI <48 for two consecutive months → resize",
  "Loan / credit deterioration","ECB Lending Survey, NPLs",     "Standards tighten sharply → reduce",
)

#v(6pt)
*Next review:* ECB 05/06/2026 · Q2 bank earnings Jul 2026 · *Exit rules:* cut 50% at −10% · full exit at −15%

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
