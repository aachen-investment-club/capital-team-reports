// ============================================================
//  reports/2026-05/main.typ
//  Compile with: typst compile reports/2026-05/main.typ
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
  month: "June 2026",
)

// �"?�"? 2. EXECUTIVE SUMMARY (dark page) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Executive Summary

  Over the past month, we have seen our portfolio break even for the first
  time, accounting for transaction costs. We have also initiated a second
  investment round, consisting of new and scaled positions, which we will come
  to later.

  #v(10pt)
  The portfolio returned −0.02% month-to-date and −0.11% year-to-date.
  Annualised volatility stands at 8.3%. Correlation to the S&P 500 is 0.10,
  reflecting the portfolio's low dependence on broad equity market direction.
  Markets saw a broad sell-off this week, which accounted for the
  loss in our performance.

  #v(10pt)
  In the second investment round, we aimed to allocate 20~% of capital to scale
  three positions, and add two new positions. One position, however, did not
  make it through the final vote due to the portfolio manager's veto. This meant
  that only 16.4~% of capital was deployed for investments.

  #v(10pt)
  The team is looking to continue its growth, but for now we are wishing Yuri
  all the best. Justus has also been appointed Head of Research, helping to
  structure our research methodology going forward.

  #v(10pt)
  Performance is evaluated against several benchmarks, including the
  MSCI Europe and S&P 500. For a comparison of
  daily returns, see @returns-daily. The remainder of this report consists of
  investment memos detailing the thesis behind each of our starter positions,
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
    current-member(name: "Mathis",    photo: "/assets/avatars/mathis_makarski.jpg"),
    current-member(name: "Isabelle",  photo: "/assets/avatars/isabelle_chang.png"),
    current-member(name: "Simon",     photo: "/assets/avatars/simon_gintars.png"),
    current-member(name: "Justus",    photo: "/assets/avatars/justus_gosten.png"),
    current-member(name: "Yujin",     photo: "/assets/avatars/yujin_song.png"),
    current-member(name: "Nicolas",   photo: "/assets/avatars/nicolas_wellers.png"),
    current-member(name: "Gerasimos", photo: "/assets/avatars/gerasimos_voutsinas.jpeg"),
    current-member(name: "Kah-Ming",  photo: "/assets/avatars/kah-ming_ly.jpeg"),
    current-member(name: "Mohammad",  photo: "/assets/avatars/mohammad_sharey.jpg"),
    current-member(name: "Jamie",     photo: "/assets/avatars/jamie_bason.jpg"),
    current-member(name: "Roua",      photo: "/assets/avatars/roua_messaoudi.jpeg"),
  )
]

// �"?�"? 4. CONTENT PAGES (light) �"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?�"?

= Market Environment

#columns(2, gutter: 16pt)[
  == Fed Holds Rates Steady

  On June 17, 2026, the first FOMC meeting ends with no change in interest
  rates, keeping the rate range between 3.5~% and 3.75~%. The Fed stated that
  a rate hike is still possible, consistent with the hawkish tone of the
  post-meeting statement, which laid out intentions to bring inflation back to
  the 2~% target. Nine members expect at least one hike in 2026, eight expect
  rates to remain steady, and one projects a cut. Kevin Warsh did not submit a
  forecast, consistent with his longstanding opposition to forward guidance.
  The median end-2026 rate projection rose to 3.8~%, up from 3.4~% in March,
  reinforcing the case for a hike later this year. The FOMC also confirmed it
  will maintain an ample-reserves regime to keep short-term rates anchored.

  == ECB Raises Rates

  The ECB raised all three key rates by 25 basis points, the first hike in
  nearly three years, bringing the deposit facility, main refinancing, and
  marginal lending rates to 2.25~%, 2.40~%, and 2.65~% respectively. Rates
  had last been raised in September 2023, when the deposit facility peaked at
  4.0~%. The decision was driven by inflation pressure stemming from the
  conflict in the Middle East. Headline inflation rose to 3.2~% in May from
  3.0~% in April, with core inflation up to 2.5~% from 2.2~%. Food inflation
  bucked the trend, easing from 2.4~% to 2.0~%. Energy inflation ticked up to
  10.9~% and is expected to remain elevated until H1 2027, with a return to
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
  declared the Strait closed again. Peace talks in Switzerland are ongoing.
  Only 12 ships crossed on 21 June. Markets appeared largely unmoved: Brent
  was down just 0.9~% at \$80 a barrel, while Asian markets opened higher,
  with the Nikkei up 1.8~%, KOSPI up 1.5~%, and TAIEX up 2.6~%.

  == China Tightens Rare Earth Exports

  China identified 10 US firms linked to the American military and imposed a
  ban on dual-use exports to these entities, prohibiting all global
  organisations from supplying or transferring Chinese-origin dual-use goods
  to the blacklisted groups. Among them is MP Materials, a Pentagon-backed
  company that operates the only active rare earth mine in the United States,
  a direct strike at Washington's efforts to build a domestic critical minerals
  supply chain. The Chinese Finance Ministry also imposed a procurement embargo
  on around 40 companies, barring Chinese government buyers from purchasing
  from firms such as Raytheon and Lockheed Martin, in direct response to the
  US adding Chinese firms to a Pentagon list of military-linked entities.

  This matters because China produces approximately 60~% of global rare earth
  output and processes around 90~% of all refining capacity, giving it
  significant leverage over the components that underpin AI infrastructure.
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
  with China, leaving a 30~% tariff in place. Analysts note that while the
  Supreme Court ruling has slowed the pace of tariff action, it has not
  deterred the administration from pursuing its broader trade agenda.
]

// ── EXPOSURE REVIEW ──────────────────────────────────────────

#pagebreak()
= Factor Exposure Review

#text(size: 8pt, fill: rgb("#6b7280"), style: "italic")[June 2026 average]

#v(6pt)
#figure(
  image("../../assets/2026-06/market_factor_exposure.png", width: 100%),
  caption: [Factor Exposures by Market],
)

#v(2pt)
#figure(
  image("../../assets/2026-06/individual_position_exposure.png", width: 100%),
  caption: [Factor Exposures by Position],
)

#v(2pt)
#figure(
  image("../../assets/2026-06/portfolio_factor_tilts.png", width: 100%),
  caption: [Portfolio Factor Tilt],
)

// ── PURR ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "PURR",
  name:    "Hyperliquid Strategies Inc.",
  tagline: "Discounted public-market exposure to Hyperliquid, one of the fastest-growing decentralised derivatives exchanges.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Asset Play"),
  ("Entry",         "$8.03 (10/06/2026)"),
  ("Stop Loss",     "$6.82 (−15%)"),
))

#memo-rule("Thesis")

Hyperliquid is a self-funded decentralised derivatives exchange generating ~\$900M in annualised revenue at ~90% operating margins. PURR holds ~20M HYPE and \$130M in cash while trading at an estimated 15% discount to NAV. Value can be created through both HYPE appreciation and a narrowing of that discount, with regulatory progress on perpetual futures providing an additional re-rating catalyst.

*Edge:* The market prices PURR on crypto volatility risk while underappreciating the underlying profitability and the discount to hard assets.

*Driver:* NAV discount narrows as institutional access to HYPE improves and regulatory clarity on perpetual futures increases.

#memo-rule("Catalysts")

*C1:* PURR's ~15% NAV discount narrows as the market recognises the value of HYPE holdings and \$130M cash

*C2:* CFTC approved first regulated U.S. Bitcoin perpetual futures contract on 29 May 2026, opening the path to institutional adoption

*C3:* Hyperliquid continues to gain trading volume and market share against Binance and Coinbase

#memo-rule("Risks")

#data-table(
  (1fr, 1fr),
  ("Risk", "Monitor"),
  "Adoption slows materially",        "Trading volumes, revenue, user growth",
  "Regulatory crackdown on perps",    "CFTC/SEC announcements; U.S. crypto policy",
  "NAV discount persists or widens",  "PURR discount to NAV; weekly check",
)

#memo-rule("Scenarios")

#data-table(
  (1fr, 3fr),
  ("Scenario", "Assumption"),
  "Bear", "HYPE adoption slows; NAV discount persists or widens",
  "Base", "Hyperliquid grows steadily; NAV discount narrows to parity",
  "Bull", "Strong HYPE appreciation and institutional adoption; NAV premium emerges",
)

#v(6pt)
*Next review:* CFTC regulatory updates · Quarterly NAV prints

// ── COPAl ────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "COPAl",
  name:    "WisdomTree Copper ETC",
  tagline: "Copper smelter margins collapsing; refined supply crunch incoming as grid and AI demand holds firm.",
)

#memo-kv((
  ("Asset Class",   "ETC"),
  ("Idea Category", "Commodity"),
  ("Entry",         "$54.46 (10/06/2026)"),
  ("Stop Loss",     "$45.00 (−16.5%)"),
))

#memo-rule("Thesis")

Processing fees for copper concentrate are approaching zero as smelter margins collapse, forcing production cutbacks globally. Exchange-visible inventories are set to breach the 30-day consumption floor, triggering an acute squeeze on spot and front-month futures prices. The market is mispricing this supply crunch by failing to account for inelastic demand from grid infrastructure modernisation and AI data centre buildout. We are positioned ahead of the physical shortage before it registers in exchange inventories.

*Edge:* The smelter margin collapse leads visible inventory drawdowns by several months. We are buying before the deficit shows up in LME warehouse data.

*Driver:* Physical spot price repricing as exchange stocks decline and the structural refined copper deficit becomes undeniable.

#memo-rule("Catalysts")

*C1:* Spot processing fees approaching zero as Chinese copper smelters begin production cuts

*C2:* Global exchange inventories (LME, CME, SHFE) drawing down toward the 30-day consumption floor

*C3:* Global Joint Smelter Committee updates and monthly LME/COMEX inventory prints, Jun/Jul 2026

#memo-rule("Risks")

#data-table(
  (1fr, 1fr),
  ("Risk", "Monitor"),
  "Inventory builds; curve shifts to contango",  "LME/COMEX/SHFE stocks; cash-to-3M spread",
  "Macro demand destruction",                    "China FAI in power grids; global PMIs",
  "Roll yield drag and tracking error",           "Fund premium/discount to NAV; 30-day ADV",
)

#memo-rule("Scenarios")

#data-table(
  (1fr, 3fr),
  ("Scenario", "Assumption"),
  "Bear", "Manufacturing slowdown freezes industrial expansion; inventories stabilise",
  "Base", "Smelter cuts take effect with stable AI and grid demand; deficit priced in",
  "Bull", "Extreme mine disruptions trigger short squeeze and panic buying",
)

#v(6pt)
*Next review:* Joint Smelter Committee updates · China PMI releases

// ── SCALED POSITIONS ─────────────────────────────────────────
#pagebreak()
= Scaled Positions

#v(4pt)
#text(size: 8.5pt, fill: rgb("#6b7280"))[
  Both positions were initiated in May 2026 and scaled in June 2026 following a review of performance and thesis integrity. The core investment cases remain unchanged; the following summarises the original rationale and current status.
]

#v(12pt)

// ── SMH ──────────────────────────────────────────────────────
#memo-header(
  ticker:  "SMH",
  name:    "VanEck Semiconductor ETF",
  tagline: "Broad semiconductor exposure as AI spending drives chip demand across the full value chain.",
)

#memo-kv((
  ("Asset Class",     "Sector ETF"),
  ("Scale Entry",     "$94.58 (10/06/2026)"),
  ("Scaled Capital",  "€87.50"),
  ("Stop Loss",       "$71.25 (−15%)"),
))

#memo-rule("Catalysts")

- NVIDIA Q1 2026 beat: data-centre revenue up 92% YoY, H2 outlook raised again
- Microsoft and Google both lifted FY26 CapEx guidance in April earnings calls
- TSMC raised its 2026 revenue forecast in May on sustained advanced node demand

#memo-rule("Risks")

#data-table(
  (auto, 1fr),
  ("Risk", "Monitor"),
  [Hyperscalers cut CapEx in H2],    [Q2 earnings guidance; Azure/AWS/GCP commentary],
  [New US export controls on HBM],   [BIS rule updates; NVIDIA and SK Hynix response],
  [Deepseek-style efficiency shock], [Model release cadence; inference cost per token],
)

#v(16pt)
#line(length: 100%, stroke: 0.5pt + rgb("#d4d9e2"))
#v(16pt)

// ── AIXA ─────────────────────────────────────────────────────
#memo-header(
  ticker:  "AIXA",
  name:    "Aixtron SE",
  tagline: "Semiconductor equipment supplier with a strong position in GaN and SiC deposition tools.",
)

#memo-kv((
  ("Asset Class",     "Stock"),
  ("Scale Entry",     "€54.96 (10/06/2026)"),
  ("Scaled Capital",  "€87.50"),
  ("Stop Loss",       "€41.79 (−15%)"),
))

#memo-rule("Catalysts")

- Q1 2026 results showed order intake recovering after four quarters of decline
- BMW and Stellantis resumed SiC tool orders in May, signalling EV floor
- Microsoft confirmed GaN-based PSU design-ins for next-gen data centre builds

#memo-rule("Risks")

#data-table(
  (auto, 1fr),
  ("Risk", "Monitor"),
  [EV demand softens again after May bounce],  [OEM production schedules; Q2 order intake],
  [GaN data centre wins fail to materialise],  [Hyperscaler supply-chain announcements],
  [Veeco closes MOCVD gap],                    [Veeco Q2 earnings; customer win disclosures],
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
    name: "COPPER", nav: "5.56%", ret: "-5.63%",
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
  "10 Jun 2026", "AIXA",    "Aixtron SE",                          "BUY",  "10 / 0 / 0", "Scaled Position",
  "10 Jun 2026", "COPAl",   "WT Copper",                           "BUY",  "9 / 0 / 0",  "Starter Position",
  "10 Jun 2026", "PURR",    "Hyperliquid Strategies",              "BUY",  "10 / 0 / 0", "Starter Position",
  "10 Jun 2026", "SMH",     "VanEck Semiconductor ETF",            "BUY",  "10 / 0 / 0", "Scaled Position",
  "10 Jun 2026", "WDEF",    "WisdomTree Europe Defence UCITS ETF", "VETO", "2 / 1 / 5",  "Portfolio Manager Veto (Mathis)",
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
  conduct their own due diligence and consult a qualified financial adviser
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
    [Mathis Makarski (Portfolio Manager)],

    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Contact],
    [mathis.makarski\@aic.rwth-aachen.de],

    [#v(4pt)], [],

    text(fill: rgb("#8fafd8"), weight: "bold", size: 8pt)[Published],
    [June 2026 · © 2026 Aachen Investment Club e.V.],
  )
]

