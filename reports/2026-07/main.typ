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
  The portfolio returned −2.13% month-to-date and −2.47% year-to-date.
  Annualised volatility stands at 9.1%. Correlation to the S&P 500 is −0.01,
  reflecting continued low dependence on broad equity market direction.

  #v(10pt)
  This marks our third investment round as we continue to build out our
  portfolio toward full size.

  #v(10pt)
  There has been a change in leadership: Nicolas is taking over as Portfolio
  Manager from Mathis, whom we thank for his leadership. The team continues
  to grow with the arrival of three new analysts:
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
    image("../../assets/2026-07/charts/returns_bar.png", width: 100%),
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
    current-member(name: "Justus",    photo: "/assets/avatars/justus_gosten.png",      title: "Head of Research"),
    current-member(name: "Mathis",    photo: "/assets/avatars/mathis_makarski.jpg",    title: "Advisor"),
    current-member(name: "Simon",     photo: "/assets/avatars/simon_gintars.png",      title: "Analyst"),
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
      intro: "Originally from Chile, Thomas joined AIC in May 2026 and is pursuing his B.Sc. in Business Administration at RWTH Aachen. He led the equity research behind the BlackBerry pitch on the Stock Pitches team, and is now joining Capital to focus on active equity strategies in tech and AI infrastructure.",
      photo: "/assets/avatars/thomas_hahn.JPG",
    ),
    new-member(
      name: "Niklas",
      intro: "Niklas joined AIC in July 2026 and is currently pursuing his M.Sc. in Business Administration at the University of Cologne. He works as a working student at an asset management company while pursuing the CFA charter, having passed Level I of the CFA Program. His interests lie in coding, equity and commodity markets.",
      photo: "/assets/avatars/niklas_luessgen.JPG",
    ),
    new-member(
      name: "Hyomin",
      intro: "Hyomin joined AIC in July 2026 and is pursuing his B.Sc. in Industrial Engineering at RWTH Aachen, currently in his sixth semester. With a strong interest in investment banking and financial modeling, his focus lies in equity valuation and the intersection of robotics/automation with capital markets.",
      photo: "/assets/avatars/hyomin_back.JPG",
    ),
  )
]

// �"?�"? 4. CONTENT PAGES (light) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?

= Market Environment

#columns(2, gutter: 16pt)[
  == Fed Holds

  On July 29, 2026, the FOMC held its policy rate at 3.50~%–3.75~% for a
  fifth consecutive meeting, voting 9–3. Three regional presidents (Cleveland's
  Beth Hammack, Minneapolis's Neel Kashkari, and Dallas's Lorie Logan)
  dissented, with inflation having run above the Fed's 2~% target for more
  than five years. At June's meeting, Kevin Warsh's first as Fed
  Chair, nine of eighteen committee members had projected at least one hike
  before year-end, and Warsh declined to submit his own dot, breaking with
  the Fed's usual forward-guidance practice. Warsh was confirmed to the role
  in a 54–45 Senate vote in May, the most divisive confirmation in the
  Fed's history. Markets currently price two 25-basis-point hikes for 2026.
  The 10-year Treasury yield has climbed to 4.70~%.

  == ECB Holds After June's Hike

  Having raised its three key rates by 25 basis points in June, its first
  hike in nearly three years and driven in part by the Iran war pushing
  inflation higher, the ECB held policy steady in July, keeping the deposit
  facility at 2.25~%. The move came despite a soft economy: eurozone GDP
  shrank 0.2~% in the first quarter of 2026. Energy inflation remains the
  ECB's central concern.

  == AI Capex Debate

  Semiconductor and AI-adjacent names sold off sharply in July on growing
  concern that hyperscaler capex is outrunning near-term demand. Combined
  2026 capex guidance from Amazon (\$200bn), Google (\$185bn), Meta
  (\$125–145bn), and Microsoft (\$120bn) totals close to \$700bn, up roughly
  77~% from 2025's \$410bn. Micron fell more than 10~% and AMD nearly 7~% over
  the period, wiping out over \$1 trillion in semiconductor market value,
  while Alphabet shed more than 7~% in a week after guiding 2026 capex to
  \$195–205bn. Meta's disclosure that it holds surplus GPU capacity added to
  concerns that the AI infrastructure build-out may be running ahead of
  demand.

  == Strait of Hormuz Conflict

  Iran fired on three commercial vessels in the Strait of Hormuz on 6–7
  July, prompting direct US airstrikes on Iranian military targets. The US
  carried out repeated further rounds of strikes through mid-July, including
  at least four consecutive nights of strikes reported by mid-month, aimed
  at degrading Iran's ability to threaten shipping through the Strait. Around
  a fifth of the world's oil and LNG normally transits Hormuz, so the
  conflict keeps shipping risk in the Gulf elevated and remains unresolved.

  == Oil Swings on Hormuz Escalation

  Brent crude traded around \$72–77 a barrel in early-to-mid July before
  spiking on the escalation, touching \$97 on 24 July and settling near \$90
  by month-end. The move lands on an already-stretched market: OPEC+ had
  approved a fourth output quota increase since the Strait's initial closure
  by early June, but Saudi Arabia and the UAE, which hold virtually all of
  the world's spare production capacity, both export through Hormuz
  themselves. Earlier in the year, the US released 172 million barrels from
  the Strategic Petroleum Reserve as part of a coordinated 400-million-barrel
  release across 32 nations, leaving the US reserve at 308 million barrels,
  its lowest level since 1983.

  == Gold Pulls Back From January Highs

  Gold traded at \$4,038/oz on 13 July, down roughly 28~% from its 29
  January intraday high of \$5,595.47, and was near \$4,010/oz by 20 July.
  The World Gold Council's valuation framework puts fair value near
  \$4,100, within a 5~% band. Analyst year-end targets have converged lower:
  Goldman Sachs cut its target to \$4,900 in June, while JPMorgan's Q4
  target stands at \$4,500.

  == China's Rare Earth Export Controls

  Beijing added 10 US entities, including MP Materials and USA Rare Earth,
  to its dual-use export blacklist effective 22 June, barring any global
  entity from transferring Chinese-origin dual-use goods to them. The move
  followed the US adding Chinese firms to a Pentagon list of military-linked
  entities. MP Materials and USA Rare Earth have received \$550m and \$1.6bn
  in federal backing respectively as Washington tries to build processing
  capacity outside China, which still accounts for roughly 90~% of global
  rare earth refining. China separately blacklisted four Japanese government
  defence research institutes over the same period, extending the same
  playbook to another US ally.

  == US Tariffs

  The 11 June deal with China left in place a 20~% "fentanyl" tariff and a
  10~% "reciprocal" tariff, for a combined 30~%. Elsewhere, the EU faces an
  all-in 15~% tariff under a deal effective 1 July, Japan faces 10~% plus a
  25~% tariff on autos, South Korea faces a flat 10~%, and Canada and Mexico
  face 0~% on USMCA-qualifying goods and 10~% otherwise. The USTR opened
  Section 301 investigations into structural overcapacity across 16
  economies, including the EU, Japan, Canada, and South Korea, back in
  March. The average US tariff rate has risen to over 18~% in 2026, from
  roughly 3~% before this administration's tariff actions.
]

// ── EXPOSURE REVIEW ──────────────────────────────────────────

#pagebreak()
= Factor Exposure Review

#text(size: 8pt, fill: rgb("#6b7280"), style: "italic")[July 2026 average]

#v(8pt)
Market-level style exposures are estimated using a Barra WLS regression across
GICS sectors, as shown in @market-exposure. Results are reported as Z-scores,
reflecting the significance of each style in determining returns. A strong
positive z-score indicates a large positive impact on returns, while a strongly
negative z-score indicates a large negative impact.

#v(6pt)
#figure(
  image("../../assets/2026-07/charts/market_factor_exposure.png", width: 100%),
  caption: [Factor Exposures by Market],
) <market-exposure>

#v(10pt)
Portfolio factor tilts are derived from Barra factor breakdowns of individual
positions, averaged across the portfolio. This reveals the aggregate exposure of
our holdings to each factor style, as shown in @factor-tilts.

#v(6pt)
#figure(
  image("../../assets/2026-07/charts/portfolio_factor_tilts.png", width: 100%),
  caption: [Portfolio Factor Tilt],
) <factor-tilts>

// ── MELI ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "MELI",
  name:    "MercadoLibre, Inc.",
  tagline: "Latin America's leading commerce and fintech platform.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Valuation Play"),
  ("Entry",         "$1,859.76 (16 Jul 2026)"),
  ("Stop Loss",     "−20%"),
))

#memo-rule("Thesis")

MercadoLibre leads Latin American e-commerce, logistics, and fintech at ~13–15% category penetration. A deliberate margin-investment cycle and CECL accounting, which books the full lifetime loss on an 87%-growing loan book upfront, suppress reported profit below the business's real earnings power. Valuing Commerce, Payments, and the credit book separately on normalized earnings (not consolidated FCF) implies ~\$2,010/share today, rising to ~\$3,430 by 2028 and ~\$6,040 by 2032 in the Base case.

*Edge:* Consensus values MELI on 12-month consolidated FCF, making the ~44x forward P/E look expensive; that fails since loan originations consume cash despite being high-return investments.

*Driver:* GMV/TPV/credit-book scale and a high-margin advertising ramp lift Commerce margin as the capex cycle peaks and CECL provisioning normalizes.

#memo-rule("Catalysts")

*C1:* Q2'26 earnings (~3–4 Aug 2026): first read on whether NIMAL stabilizes off the 17.8% trough and operating margin inflects

*C2:* Margin-trough inflection expected H2'26–2027 as credit growth decelerates

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
  "Bear", "Ads build stalls (~5.5% of GMV); Commerce margin ~13%; NIMAL ~15%",
  "Base", "Ads reach ~7% of GMV; Commerce margin normalizes ~17%; NIMAL ~21%",
  "Bull", "Ads toward ~8% of GMV; Commerce margin ~19%; NIMAL ~23%",
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
  ("Scale Entry",  "$658.70 (20 Jul 2026)"),
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
    name: "AI & SEMIS", nav: "10.32%", ret: "-15.38%",
    positions: (
      (symbol: "SMH",  name: "VanEck Semiconductor ETF", isin: "IE00BMC38736", nav: "6.07%", ret: "-2.74%"),
      (symbol: "AIXA", name: "Aixtron SE",               isin: "DE000A0WMPJ6", nav: "4.25%", ret: "-33.44%"),
    ),
  ),
  (
    name: "COMMODITY", nav: "5.96%", ret: "+0.10%",
    positions: (
      (symbol: "COPAl", name: "WT Copper", isin: "GB00B15KXQ89", nav: "5.96%", ret: "+0.10%"),
    ),
  ),
  (
    name: "EU FINANCIALS", nav: "8.89%", ret: "+12.06%",
    positions: (
      (symbol: "SAN",  name: "Banco Santander SA",              isin: "ES0113900J37", nav: "4.49%", ret: "+13.18%"),
      (symbol: "ESIF", name: "iShares Europe Financials EUR A", isin: "IE00BMW42306", nav: "4.40%", ret: "+10.92%"),
    ),
  ),
  (
    name: "EU SOVEREIGNTY", nav: "7.93%", ret: "+1.55%",
    positions: (
      (symbol: "WDEF", name: "WisdomTree Europe Defence UCITS ETF", isin: "IE0002Y8CX98", nav: "7.93%", ret: "+1.55%"),
    ),
  ),
  (
    name: "ENERGY DEMAND", nav: "9.69%", ret: "-7.52%",
    positions: (
      (symbol: "XLUS", name: "Invesco US Utilities S&P",     isin: "IE00B3VPKB53", nav: "8.35%", ret: "-2.72%"),
      (symbol: "URNU", name: "Global X Uranium UCITS USD-A", isin: "IE000NDWFGA5", nav: "1.34%", ret: "-37.39%"),
    ),
  ),
  (
    name: "SINGLE POSITIONS", nav: "9.61%", ret: "-5.09%",
    positions: (
      (symbol: "MELI", name: "MercadoLibre, Inc.",      isin: "US58733R1023", nav: "6.14%", ret: "+0.39%"),
      (symbol: "TRNI", name: "Trainline PLC",           isin: "GB00BKDTK925", nav: "1.82%", ret: "-6.97%"),
      (symbol: "PURR", name: "Hyperliquid Strategies", isin: "US44916Y1064", nav: "1.65%", ret: "-23.39%"),
    ),
  ),
  (
    name: "CASH", nav: "47.59%", ret: "+0.06%",
    positions: (
      (symbol: "CASH_EUR", name: "Euro Cash",          isin: "", nav: "39.80%", ret: "--"),
      (symbol: "CASH_USD", name: "US Dollar Cash",     isin: "", nav: "0.00%",  ret: "+0.00%"),
      (symbol: "CASH_GBP", name: "British Pound Cash", isin: "", nav: "7.78%",  ret: "+0.35%"),
    ),
  ),
))

#v(12pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 0pt,
  figure(image("../../assets/2026-07/charts/weights_by_position.png", width: 100%), caption: [Positions Weighting]),
  figure(image("../../assets/2026-07/charts/weights_by_theme.png",    width: 100%), caption: [Themes Weighting]),
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
  "27 Jul 2026", "SGBS",    "Gold Bullion Securities",                             "VETOED", "8 / 0 / 1", "PM Veto",
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

