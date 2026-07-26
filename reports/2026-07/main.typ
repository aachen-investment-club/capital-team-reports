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
      intro: "Originally from Chile, Thomas joined AIC in May 2026 and is pursuing his B.Sc. in Business Administration at RWTH Aachen. He led the equity research behind the BlackBerry pitch on the Stock Pitches team, and is now joining Capital to focus on active equity strategies in tech and AI infrastructure.",
      photo: "/assets/avatars/thomas_hahn.JPG",
    ),
    new-member(
      name: "Niklas",
      intro: "Niklas joined AIC in July 2026 and is currently pursuing his M.Sc. in Business Administration at the University of Cologne. He works as a working student at an asset management company while pursuing the CFA charter, having passed Level I of the CFA Program. His interests lie in coding, equity and commodity markets.",
      photo: "/assets/avatars/gerasimos_voutsinas.jpeg",
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
  == Fed Holds Again, Eyes September

  On July 29, 2026, the FOMC held its policy rate for a second consecutive
  meeting, keeping the range at 3.50~% and 3.75~%. The committee reiterated
  June's split dot plot (nine hikes, eight holds, one cut), and Fed Chair
  Warsh again declined to submit a forecast. Markets now price an 80~%
  probability of a hike at the September meeting, up sharply from near-zero
  odds priced in as of June. The 10-year Treasury yield has climbed to
  4.55~%, nearing the 4.7~% level that has historically triggered a broader
  de-rating of rate-sensitive equities.

  == AI Capex Debate

  AI and semiconductor-adjacent names led a broad market correction in July,
  as rising Treasury yields met growing scrutiny of hyperscaler capex. The
  largest cloud providers again guided 2027 capex higher, with sell-side
  estimates above \$500bn for 2026 alone, renewing doubts over whether returns
  justify current valuations after two years of AI-driven multiple expansion.
  Reports of data-centre lease cancellations added to concerns that some
  announced capacity is running ahead of near-term demand. The Nasdaq fell
  more than 10~% from its July high as investors rotated out of high-beta AI
  names into defensives, a sell-off that also hit structurally sound names,
  including several held in this portfolio.

  == Strait of Hormuz Crisis Deepens

  The ceasefire framework agreed at the G7's Versailles summit in June
  unravelled through July. Iran's newly formed Persian Gulf Strait Authority
  kept asserting control over passing vessels despite the 60-day
  free-passage guarantee. Traffic fell sharply after Israel's continued
  strikes on Lebanon led Iran to close the Strait for a second time. Peace
  talks in Switzerland stalled in early July after Iran withdrew over fresh
  US sanctions re-designations. By mid-month, war-risk insurance premiums on
  Hormuz-transiting tankers hit their highest level since 2019, and the US
  Navy increased its carrier presence in the Gulf as Saudi Arabia and the
  UAE pushed both sides to avoid a full closure.

  == Oil Surges on Hormuz Disruption

  Brent crude rose from around \$80 a barrel in June to the low \$90s by
  mid-July as tanker traffic through Hormuz, which carries roughly a fifth of
  global oil supply, fell to its lowest level in over a decade. OPEC+
  signalled it would release spare capacity to cap prices, but most of that
  capacity sits with Gulf producers whose own exports transit the same
  chokepoint. The US released a further tranche from the Strategic Petroleum
  Reserve, and diesel cracks widened as refiners bid up alternative crude
  grades. This complicates the inflation picture ahead of the Fed's
  September meeting.

  == China Widens Rare Earth Export Controls

  Beijing extended the licensing regime introduced in June, adding a further
  15 US-linked entities to its dual-use export blacklist and tightening
  documentation requirements for magnet- and battery-grade rare earth
  shipments to all destinations, not only blacklisted firms. Licence
  processing times, which already averaged over 180 days for more than half
  of surveyed semiconductor and IT firms in June, lengthened further. The
  controls now weigh on sectors well beyond AI infrastructure, including
  automakers and wind-turbine manufacturers dependent on rare earth magnets.

  Trump responded on social media, posting that the US would "never again"
  be dependent on China for rare earths and pledging fresh federal backing
  for domestic mining and processing capacity. The comments shifted market
  attention to US rare earth names, including MP Materials, and revived talk
  of invoking the Defense Production Act to fast-track permitting for new
  domestic refining projects.

  == US Tariffs Widen Beyond China

  The 30~% tariff arrangement struck with China on 11 June came under renewed
  strain after Beijing's July rare earth actions, with the USTR signalling it
  may revisit the Section 301 tariff proposal shelved after that agreement.
  Trump extended the tariff push to allies as well, imposing new duties on
  the EU, Japan, South Korea, and Canada, citing persistent trade imbalances.
  The broader effective US tariff rate, which had fallen to around 7~% after
  the Supreme Court's IEEPA ruling, ticked back up as these tariffs, plus
  additional forced-labour-related duties, took effect across more trading
  partners.

  == ECB Holds After June's Hike

  Having raised its three key rates by 25 basis points in June, its first
  hike in nearly three years, the ECB held policy steady in July, keeping the
  deposit facility at 2.25~%. Energy inflation, already running at 10.9~%
  before the latest oil move, is now the ECB's central concern heading into
  H2, with a return to the 2~% target not expected until the second half of
  2027.
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
  tagline: "Latin America's leading commerce and fintech platform.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Valuation Play"),
  ("Entry",         "NEEDS FILLING"),
  ("Stop Loss",     "NEEDS FILLING (−20%)"),
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

// ── SGBS ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "SGBS",
  name:    "Gold Bullion Securities",
  tagline: "Defensive allocation to tie down portfolio volatility.",
)

#memo-kv((
  ("Asset Class",   "ETC"),
  ("Idea Category", "Commodity"),
  ("Entry",         "NEEDS FILLING"),
  ("Stop Loss",     "NEEDS FILLING (−15%)"),
))

#memo-rule("Thesis")

Gold hedges rate shocks, equity drawdowns, and dollar weakness, and controls portfolio volatility. Price fell ~28% from the January ATH (~\$5,600) to a June low of \$4,002, and is currently sitting around \$4,000 as GVZ falls and reverts to normal levels. Record central bank buying (~850t in 2026 vs. a 473t prior-decade average) is proving to be an underlying stabiliser in the price; demand is there.

*Edge:* With markets pricing an 80% probability of a September hike, positioning remains defensive as buyers wait for confirmation of a bottom before re-entering. We believe that bottom has already formed.

*Driver:* Gold is seeing less volatility, which means it is becoming more stable and less hype-driven. Central bank accumulation further supports a trend reversal.

#memo-rule("Catalysts")

*C1:* Fed path dictates how gold performs short term. Markets price 80% odds of a rate hike in September, and buyers are holding back in fear of a longer bear cycle

*C2:* China added 15t in June (largest since Oct 2023, streak 20+ months, holdings 2,346t) after 9.95t in May. WGC survey: 89% of reserve managers expect holdings to keep rising, 45% plan to add

*C3:* ECB June review: gold now 27% of global reserves vs. 22% for Treasuries, the first time it has overtaken Treasuries since 1996

#memo-rule("Risks")

#data-table(
  (1fr, 1fr),
  ("Risk", "Monitor"),
  "Fed hike / rising real rates",         "10yr TIPS yield",
  "Central bank buying slows",            "Monthly PBoC/WGC data vs. 850t pace",
  "USD strength",                         "DXY",
  "Volatility re-expands",                "GVZ",
)

#memo-rule("Scenarios")

#data-table(
  (1fr, 3fr),
  ("Scenario", "Assumption"),
  "Bear", "Fed hikes, buying slows",
  "Base", "Fed holds, buying holds near the 850t pace",
  "Bull", "Fed pivots to cuts or a risk-off shock hits, buying accelerates",
)

#v(6pt)
*Next review:* Next FOMC decision · GVZ level · monthly central bank buying data

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
  "27 Jul 2026", "SGBS",    "Gold Bullion Securities",                             "BUY", "8 / 0 / 1", "Starter Position",
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

