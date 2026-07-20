// ============================================================
//  reports/2026-07/main.typ
//  Compile with: typst compile reports/2026-07/main.typ
//
//  Page order:
//    1. Cover             (dark)  �?" from report wrapper
//    2. Executive Summary (dark)  �?" dark-page[]
//    3. Team              (dark)  �?" dark-page[]
//    4. Content pages     (light) �?" standard flow
//    5. Final / Imprint   (dark)  �?" final-page()
// ============================================================

#import "../../lib/report.typ": report
#import "../../lib/components.typ": *

#show: report.with(
  month: "July 2026",
)

// �"?�"? 2. EXECUTIVE SUMMARY (dark page) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Executive Summary

  In July, our portfolio came under considerable stress amid broader market
  corrections. Our hardest-hit positions included SMH and Aixtron. Despite
  ambivalent market sentiment on the near-term strength of semiconductors,
  our conviction in the sector remains steadfast. More broadly, we used the
  short-term pullback as an opportunity to open and scale additional
  positions across the portfolio.

  #v(10pt)
  The portfolio returned −0.02% month-to-date and −0.11% year-to-date.
  Annualised volatility stands at 8.3%. Correlation to the S&P 500 is 0.10,
  reflecting the portfolio's low dependence on broad equity market direction.
  Markets saw a broad sell-off this week, which accounted for the
  loss in our performance.

  #v(10pt)
  This marks our third investment round as we continue to build out our
  portfolio toward full size.

  #v(10pt)
  There has been a change in leadership: Nicolas is taking over as Portfolio
  Manager from Mathis, whom we thank for his leadership over the past two
  rounds. The team continues to grow with the arrival of three new analysts:
  Thomas, Niklas, and Hyomin; we value the motivation and expertise they
  bring. We would also like to thank Roua and Isabelle for their
  contributions to the team and wish them all the best.

  #v(10pt)
  Performance is evaluated against four benchmarks: MSCI Europe, MSCI World,
  the S&P 500, and a 60/40 balanced portfolio. For a comparison of
  daily returns, see @returns-daily. The remainder of this report consists of
  investment memos detailing the thesis behind our recent positions,
  concluding with an overview of our current holdings and executed trades.

  #v(14pt)
  #figure(
    image("../../assets/2026-06/returns_bar.png", width: 100%),
    caption: [Daily Portfolio Returns vs Benchmarks],
  ) <returns-daily>
]

// �"?�"? 3. TEAM (dark page) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?
#dark-page[
  = Our Team

  == Current Members

  #v(6pt)
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 0.8cm,
    current-member(name: "Nicolas",   photo: "/assets/avatars/nicolas_wellers.png",    title: "Portfolio Manager"),
    current-member(name: "Mathis",    photo: "/assets/avatars/mathis_makarski.jpg",    title: "Analyst"),
    current-member(name: "Simon",     photo: "/assets/avatars/simon_gintars.png",      title: "Analyst"),
    current-member(name: "Justus",    photo: "/assets/avatars/justus_gosten.png",      title: "Head of Research"),
    current-member(name: "Yujin",     photo: "/assets/avatars/yujin_song.png",         title: "Analyst"),
    current-member(name: "Gerasimos", photo: "/assets/avatars/gerasimos_voutsinas.jpeg", title: "Analyst"),
    current-member(name: "Kah-Ming",  photo: "/assets/avatars/kah-ming_ly.jpeg",       title: "Analyst"),
    current-member(name: "Mohammad",  photo: "/assets/avatars/mohammad_sharey.jpg",    title: "Analyst"),
    current-member(name: "Jamie",     photo: "/assets/avatars/jamie_bason.jpg",        title: "Analyst"),
  )

  == New Members
  #v(6pt)
  #stack(spacing: 14pt,
    new-member(
      name: "Thomas",
      intro: "Bio to follow; placeholder photo shown until Thomas's picture is available.",
      photo: "/assets/avatars/gerasimos_voutsinas.jpeg",
    ),
    new-member(
      name: "Niklas",
      intro: "Bio to follow; placeholder photo shown until Niklas's picture is available.",
      photo: "/assets/avatars/gerasimos_voutsinas.jpeg",
    ),
    new-member(
      name: "Hyomin",
      intro: "Bio to follow; placeholder photo shown until Hyomin's picture is available.",
      photo: "/assets/avatars/gerasimos_voutsinas.jpeg",
    ),
  )
]

// �"?�"? 4. CONTENT PAGES (light) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?

= Market Environment

#columns(2, gutter: 16pt)[
  == Fed Holds Rates Steady

  On June 17, 2026, the first FOMC meeting ended with no change in interest
  rates, keeping the rate range between 3.5~% and 3.75~%. The Fed stated that
  a rate hike remained possible, consistent with the hawkish tone of the
  post-meeting statement, which laid out intentions to bring inflation back to
  the 2~% target. Nine members expected at least one hike in 2026, eight
  expected rates to remain steady, and one projected a cut. Kevin Warsh did
  not submit a forecast, consistent with his longstanding opposition to
  forward guidance. The median end-2026 rate projection rose to 3.8~%, up
  from 3.4~% in March, reinforcing the case for a hike later in the year.
  The FOMC also confirmed it would maintain an ample-reserves regime to keep
  short-term rates anchored. Supporting the hold, 5-year break-even inflation
  rates had been trending lower, suggesting that long-run inflation
  expectations remained well-anchored despite the near-term price pressures
  the Fed cited. Despite the Fed's hawkish stance, markets were pricing in
  virtually zero probability of a hike for the remainder of 2026, a sharp
  divergence from the committee's own projections. This raised the question
  of whether markets were overreacting to near-term disinflation signals.

  == ECB Raises Rates

  The ECB raised all three key rates by 25 basis points, the first hike in
  nearly three years, bringing the deposit facility, main refinancing, and
  marginal lending rates to 2.25~%, 2.40~%, and 2.65~% respectively. Rates
  had last been raised in September 2023, when the deposit facility peaked at
  4.0~%. The decision was driven by inflation pressure stemming from the
  conflict in the Middle East. Headline inflation rose to 3.2~% in May from
  3.0~% in April, with core inflation up to 2.5~% from 2.2~%. Food inflation
  bucked the trend, easing from 2.4~% to 2.0~%. Energy inflation ticked up to
  10.9~% and was expected to remain elevated until H1 2027, with a return to
  the 2~% target not expected until the second half of that year.

  == Iran War Resolution

  Some good news emerged as an initial deal was reached between the US and Iran,
  with the main priority of reopening the Strait of Hormuz. This resulted in a
  memorandum of understanding signed on 17 June at the Palace of Versailles
  during the G7 summit, guaranteeing free passage for vessels for 60 days.
  The US also committed to terminating all sanctions on Iran and unfreezing all
  frozen Iranian assets. On 18 June, around 25 vessels passed through the
  Strait, however complications arose with the creation of the newly formed
  Persian Gulf Strait Authority, as Iran continued to assert authority over
  passing ships. On 19 June, Trump announced a ceasefire between Israel and
  Hezbollah in an attempt to stabilise the region, but that came to an abrupt
  end as Israel continued to strike Lebanon. In direct retaliation, Iran
  declared the Strait closed again. Peace talks in Switzerland were ongoing.
  Only 12 ships crossed on 21 June. Markets appeared largely unmoved: Brent
  was down just 0.9~% at \$80 a barrel, while Asian markets opened higher,
  with the Nikkei up 1.8~%, KOSPI up 1.5~%, and TAIEX up 2.6~%.

  == China Tightens Rare Earth Exports

  China identified 10 US firms linked to the American military and imposed a
  ban on dual-use exports to these entities, prohibiting all global
  organisations from supplying or transferring Chinese-origin dual-use goods
  to the blacklisted groups. Among them was MP Materials, a Pentagon-backed
  company that operated the only active rare earth mine in the United States,
  a direct strike at Washington's efforts to build a domestic critical minerals
  supply chain. The Chinese Finance Ministry also imposed a procurement embargo
  on around 40 companies, barring Chinese government buyers from purchasing
  from firms such as Raytheon and Lockheed Martin, in direct response to the
  US adding Chinese firms to a Pentagon list of military-linked entities.

  This mattered because China produced approximately 60~% of global rare earth
  output and processed around 90~% of all refining capacity, giving it
  significant leverage over the components that underpinned AI infrastructure.
  A survey of IT and semiconductor firms found 56~% faced export licence
  review times of over 180 days, with a third waiting more than 300 days,
  pointing to growing friction in the supply chain.

  == New US Tariffs

  In February, the US Supreme Court struck down Trump's IEEPA tariffs, bringing
  the average effective tariff rate down to around 7~% by April. China remained
  the highest-tariffed major trading partner at around 24~%. On 2 June, the
  USTR proposed a new 12.5~% tariff on China under Section 301 of the Trade
  Act of 1974, following forced labour investigations into 60 trading partners
  launched in March. A 10~% tariff was applied to economies that have partially
  banned forced-labour goods, and a further 12.5~% to other partners including
  the EU, Brazil, and India. On 11 June, Trump announced a separate arrangement
  with China, leaving a 30~% tariff in place. Analysts noted that while the
  Supreme Court ruling had slowed the pace of tariff action, it had not
  deterred the administration from pursuing its broader trade agenda.
]

// ── EXPOSURE REVIEW ──────────────────────────────────────────

#pagebreak()
= Factor Exposure Review

#text(size: 8pt, fill: rgb("#6b7280"), style: "italic")[June 2026 average]

#v(8pt)
Market-level style exposures are estimated using a Barra WLS regression across
GICS sectors, as shown in @market-exposure. Results are reported as Z-scores,
reflecting the significance of each style in determining returns. A strong
positive z-score indicates a large positive impact on returns, while a strongly
negative z-score indicates a large negative impact.

#v(6pt)
#figure(
  image("../../assets/2026-06/market_factor_exposure.png", width: 100%),
  caption: [Factor Exposures by Market],
) <market-exposure>

#v(10pt)
Portfolio factor tilts are derived from Barra factor breakdowns of individual
positions, averaged across the portfolio. This reveals the aggregate exposure of
our holdings to each factor style, as shown in @factor-tilts.

#v(6pt)
#figure(
  image("../../assets/2026-06/portfolio_factor_tilts.png", width: 100%),
  caption: [Portfolio Factor Tilt],
) <factor-tilts>

// ── MELI ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "MELI",
  name:    "MercadoLibre, Inc.",
  tagline: "Latin America's leading commerce-and-fintech platform; earnings depressed by a margin-investment cycle and front-loaded credit provisions.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Valuation Play"),
  ("Entry",         "NEEDS FILLING"),
  ("Stop Loss",     "NEEDS FILLING (−20%)"),
))

#memo-rule("Thesis")

MercadoLibre leads Latin American e-commerce, logistics, and fintech, at only ~13–15% category penetration. Reported earnings understate the business: a deliberate margin-investment cycle and CECL accounting, which books the full lifetime loss on an 87%-growing loan book upfront, both suppress near-term profit. Valuing Commerce, Payments, and the credit book separately on normalized earnings (not consolidated FCF) implies ~\$2,010/share today, rising to a Base ~\$3,430 by 2028 and ~\$6,040 by 2032.

*Edge:* Consensus values MELI on 12-month consolidated FCF, making the ~44x forward P/E look expensive; that fails since loan originations consume cash despite being high-return investments.

*Driver:* GMV/TPV/credit-book scale and a high-margin advertising ramp lift Commerce margin as the capex cycle peaks and CECL provisioning normalizes.

#memo-rule("Catalysts")

*C1:* Q2'26 earnings (~3–4 Aug 2026): first read on whether NIMAL stabilizes off the 17.8% trough and operating margin inflects

*C2:* Margin-trough inflection (H2'26–2027) as the capex cycle peaks and CECL provisioning normalizes with decelerating credit growth

*C3:* Ads acceleration: Video, Mercado Play, and Brand Ads expand into brand budgets, growing >60% YoY at ~100% margin

#memo-rule("Risks")

#data-table(
  (1fr, 1fr),
  ("Risk", "Monitor"),
  "Credit-book quality deterioration",           "NIMAL, NPL >90d, provision coverage (quarterly)",
  "Ads build stalls / margin fails to inflect",  "Ads growth YoY; Commerce segment margin",
  "LatAm consumer-credit down-cycle & FX",       "Regional NPL trends; USD vs local FX-neutral growth spread",
)

#memo-rule("Scenarios")

#data-table(
  (1fr, 3fr),
  ("Scenario", "Assumption"),
  "Bear", "Ads build stalls (~5.5% of GMV); Commerce margin ~13%; NIMAL ~15%; multiple de-rates",
  "Base", "Ads reach ~7% of GMV; Commerce margin normalizes ~17%; NIMAL ~21%",
  "Bull", "Ads toward ~8% of GMV; Commerce margin ~19%; NIMAL ~23%; multiples hold",
)

#v(6pt)
*Next review:* Q2'26 earnings ~3–4 Aug 2026 · NIMAL trend

// ── SCALED POSITIONS ─────────────────────────────────────────
#pagebreak()
= Scaled Positions

#v(4pt)
#text(size: 8.5pt, fill: rgb("#6b7280"))[
  XLUS was initiated in May 2026 and is being scaled in July 2026, following a review of performance and thesis integrity. The core investment case remains unchanged; the following summarises the original rationale and current status.
]

#v(12pt)

// ── XLUS ─────────────────────────────────────────────────────
#memo-header(
  ticker:  "XLUS",
  name:    "Invesco S&P 500 Utilities Sector UCITS ETF",
  tagline: "Defensive rotation into US utilities riding structural electrification and rising electricity demand.",
)

#memo-kv((
  ("Asset Class",  "Synthetic Sector ETF"),
  ("Scale Entry",  "NEEDS FILLING"),
))

#memo-rule("Catalysts")

*C1:* Fed held 3.50–3.75% through the June FOMC; rate futures now price >2/3 odds of a year-end hike, and the 10yr yield (4.55%) is approaching the 4.7% de-rate trigger

*C2:* Electrification is lifting utility capex: AEP raised its 2026–30 plan 8% to \$78bn (63GW of incremental contracted load), Duke Energy leads the sector at \$102.2bn, and the US power shortfall (9.3GW in 2026, rising to 45GW by 2028) confirms electricity demand ahead of prior estimates

*C3:* Sector M&A and nuclear restarts confirm the capex cycle: the NextEra/Dominion merger would create the largest regulated utility globally, and Constellation's Crane and Holtec's Palisade restarts show revived nuclear capacity returning faster than new-build

#memo-rule("Risks")

#data-table(
  (auto, 1fr),
  ("Risk", "Monitor"),
  [Rates back up / hike risk],                        [US 10yr yield vs 4.7% trigger],
  [Affordability-politics backlash],                   [State rate-case outcomes; utility PUC election/appointment shifts (VA, NJ, GA)],
  [Live legislation curbing data-centre load growth],  [VA data-centre power tax, OK Ratepayer Protection Act, NY moratorium, federal bill progress],
)

// ── 5. PORTFOLIO SNAPSHOT (light) ───────────────────────────
#pagebreak()
= Portfolio Snapshot

#portfolio-table((
  (
    name: "AI & SEMIS", nav: "13.06%", ret: "+6.66%",
    positions: (
      (symbol: "SMH",  name: "VanEck Semiconductor ETF", isin: "IE00BMC38736", nav: "7.00%", ret: "+14.90%"),
      (symbol: "AIXA", name: "Aixtron SE",               isin: "DE000A0WMPJ6", nav: "6.06%", ret: "-2.88%"),
    ),
  ),
  (
    name: "COMMODITY", nav: "5.56%", ret: "-5.63%",
    positions: (
      (symbol: "COPAl", name: "WT Copper", isin: "GB00B15KXQ89", nav: "5.56%", ret: "-5.63%"),
    ),
  ),
  (
    name: "EU FINANCIALS", nav: "8.29%", ret: "+7.02%",
    positions: (
      (symbol: "SAN",  name: "Banco Santander SA",              isin: "ES0113900J37", nav: "4.24%", ret: "+9.49%"),
      (symbol: "ESIF", name: "iShares Europe Financials EUR A", isin: "IE00BMW42306", nav: "4.05%", ret: "+4.44%"),
    ),
  ),
  (
    name: "EU SOVEREIGNTY", nav: "6.97%", ret: "-8.65%",
    positions: (
      (symbol: "WDEF", name: "WisdomTree Europe Defence UCITS ETF", isin: "IE0002Y8CX98", nav: "6.97%", ret: "-8.65%"),
    ),
  ),
  (
    name: "ENERGY DEMAND", nav: "3.90%", ret: "-11.84%",
    positions: (
      (symbol: "XLUS", name: "Invesco US Utilities S&P",     isin: "IE00B3VPKB53", nav: "2.39%", ret: "-1.02%"),
      (symbol: "URNU", name: "Global X Uranium UCITS USD-A", isin: "IE000NDWFGA5", nav: "1.51%", ret: "-29.05%"),
    ),
  ),
  (
    name: "SINGLE POSITIONS", nav: "3.69%", ret: "-7.52%",
    positions: (
      (symbol: "PURR", name: "Hyperliquid Strategies", isin: "US44916Y1064", nav: "2.11%", ret: "-1.05%"),
      (symbol: "TRNI", name: "Trainline PLC",           isin: "GB00BKDTK925", nav: "1.58%", ret: "-16.15%"),
    ),
  ),
  (
    name: "CASH", nav: "58.52%", ret: "+0.39%",
    positions: (
      (symbol: "CASH_EUR", name: "Euro Cash",          isin: "", nav: "42.64%", ret: "--"),
      (symbol: "CASH_USD", name: "US Dollar Cash",     isin: "", nav: "8.34%",  ret: "+3.11%"),
      (symbol: "CASH_GBP", name: "British Pound Cash", isin: "", nav: "7.54%",  ret: "-0.44%"),
    ),
  ),
))

#v(12pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 0pt,
  figure(image("../../assets/2026-06/weights_by_position.png", width: 100%), caption: [Positions Weighting]),
  figure(image("../../assets/2026-06/weights_by_theme.png",    width: 100%), caption: [Themes Weighting]),
)

// �"?�"? 6. TRADE LOG (light) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?
#pagebreak()
= Executed Trades

#v(4pt)
#data-table(
  (auto, auto, auto, auto, auto, auto),
  ("Date", "Symbol", "Name", "Side", [Votes#footnote[In favour / against / abstain]], "Notice"),
  "15 Jul 2026", "MELI",    "MercadoLibre, Inc.",                                  "BUY", "9 / 0 / 0", "Starter Position",
  "19 Jul 2026", "XLUS",    "Invesco S&P 500 Utilities Sector UCITS ETF",    "BUY", "7 / 0 / 2", "Scaled Position",
)

// �"?�"? 7. FINAL PAGE (dark) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Disclosures

  This report has been prepared by students of the Aachen Investment Club
  e.V. (AIC) at RWTH Aachen University for general informational and
  educational purposes only. It does not constitute investment advice, a
  personal recommendation, or an offer or solicitation to buy or sell any
  securities or financial instruments.

  The views and opinions expressed are those of the student portfolio manager
  and analysts and do not necessarily reflect the official policy or position
  of RWTH Aachen University or its faculty. They may change without notice.
  Information contained herein is obtained from sources believed to be
  reliable, but its accuracy cannot be guaranteed.

  Past performance is not indicative of future results. All investments
  involve risk, including the possible loss of principal. Readers should
  conduct their own due diligence and consult a qualified financial advisor
  before making any investment decisions. Neither the AIC, its members, nor
  the university shall be responsible for any investment losses incurred as
  a result of using this information. The AIC is a student organisation and
  is not regulated by BaFin or any other financial supervisory authority.

  = Imprint

  #v(4pt)
  #grid(
    columns: (90pt, 1fr),
    row-gutter: 5pt,
    column-gutter: 14pt,
    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Publisher],
    [Aachen Investment Club e.V. \ Pontwall 3 · 52062 Aachen · Deutschland],

    [#v(4pt)], [],

    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Register],
    [Amtsgericht Aachen · VR 6216 · Hauptsitz Aachen],

    [#v(4pt)], [],

    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Responsible],
    [Nicolas Wellers (Portfolio Manager)],

    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Contact],
    [nicolas.wellers\@aic.rwth-aachen.de],

    [#v(4pt)], [],

    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Published],
    [July 2026 · © 2026 Aachen Investment Club e.V.],
  )
]

