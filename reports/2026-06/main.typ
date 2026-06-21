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
  Stats...

  #v(10pt)
  In the second investment round, we aimed to allocate 20~% of capital to scale
  three positions, and add two new positions. One position, however, did not
  make it through the final vote due to the portfolio manager's veto. This meant
  that only 16.4~% of capital was deployed for investments.

  #v(10pt)
  The team is looking to continue its growth, but for now we are wishing Yuri
  all the best.

  #v(10pt)
  Performance is evaluated against several benchmarks, including the
  60/40 balanced portfolio, MSCI Europe, and S&P 500. For a comparison of
  daily returns, see @returns-daily. The remainder of this report consists of
  investment memos detailing the thesis behind each of our starter positions,
  concluding with an overview of our current holdings and executed trades.

  #v(14pt)
  #figure(
    image("../../assets/2026-05/returns_daily.png", width: 100%),
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
  == The Conflict in the Middle East

  As the month of May comes to an end, a certain end to the conflict is still
  nowhere to be seen. Despite statements of progress from U.S. officials, there
  has been no confirmation of any commitments from either side: shots have been
  fired by both parties, and Trump has threatened full-scale war. As the
  escalation continues, the closure of the Strait of Hormuz has triggered a
  severe negative supply shock, abruptly halting the pre-conflict momentum that
  had global growth projected at 3.4~%. According to the IMF's reference
  forecast, even a short-lived temporary disruption of this magnitude will cause
  a 19~% spike in energy commodities, dragging global growth down to 3.1~% and
  driving headline inflation up to 4.4~%. The rise in oil prices is seen as a
  disruptor in terms of economic growth, undoing the recent progress on
  inflation. Central banks are now enforcing higher interest rates and tighter
  monetary policy. Due to these policies, investors are beginning to flee to
  safer assets, strengthening the dollar but weakening the stock market. The
  IMF warns that a resolution needs to be found as soon as possible in ensuring
  energy security and the reopening of the Strait of Hormuz.

  == Inflation and Interest Expectations

  The US CPI reached a seasonally adjusted increase of 0.6~% in April 2026,
  putting the one-year pace at 3.8~%, the highest since May 2023, and
  significantly above the Federal Reserve's 2~% target. Fed Chair Kevin Warsh
  will not be in a position to push rates lower. A significant inflationary
  driver has been energy prices, which jumped 3.8~%. Trump's global tariff
  dynamic has added further pressure. Chris Zaccarelli, CIO at Northlight Asset
  Management, speculates that the Fed will be forced to hike rates, a view
  shared by the general consensus. The US economy has proved resilient so far,
  but if inflation persists at these levels, the risk of recession becomes
  harder to dismiss. Consumer confidence surveys have already begun to soften,
  suggesting that the lagged effects of higher borrowing costs are beginning
  to reach household balance sheets.

  For the Eurozone, the story is similar. The one-year pace hit 3.0~% in April
  2026, the highest since September 2023; the UK reached 3.2~%. Energy inflation
  ran at an annual rate of 10.8~% in April, up from 5.1~% in March. The ECB
  remains determined and held rates unchanged in April, prioritising credibility
  over growth support in an environment where inflation expectations risk
  becoming unanchored.

  == Semiconductors and AI: A Cyber Rally?

  Despite inflationary pressures, the global capex cycle is helping keep markets
  relatively resilient. More countries are investing domestically in a push
  toward self-sufficiency. NVIDIA is no longer the sole driver: despite
  shattering records with data-centre revenue up 92~% YoY, the stock is up only
  ~20~% YTD. Intel is up 200~% YoY; Micron, 150~%. Capex is flowing through
  the entire supply chain. The breadth of this cycle distinguishes it from
  prior semiconductor booms, which were concentrated in one or two lead names.
  Even more impressively, cybersecurity has outpaced chips in May: an industry
  many had written off as redundant in the age of AI now stands at the forefront
  of growth.

  == Developments in Russo-Ukrainian War

  The first ceasefire brokered between Ukraine and Russia ran from 9�?"11 May.
  Putin has alluded to the war "coming to an end", and the situation appears to
  be calming. In reality, Trump's declared peace talks seem deeply troubled.
  Ukraine's confidence in U.S. peace-making capacity is shallow, and rightly
  so. European defence spending continues to surge regardless, with Germany,
  Poland, and the Nordics all committing to budgets well above the NATO 2~%
  floor. If a peace deal materialises, a massive Ukraine reconstruction trade
  will be unlocked (the World Bank estimates reconstruction costs at over
  \$500bn), though this does not appear imminent.

  == Dollar Weakness and the Gold Run

  The DXY has broken down to around 97, a four-year low. Most major banks are
  forecasting further weakness through Q2 2026: Morgan Stanley projects it
  "could fall to 94 in the second quarter of 2026." Tariff credibility damage,
  fiscal concerns, and the overvaluation of 2025 have all stacked up. Amidst
  dollar weakness and global conflict, gold continues to surge as a safe haven.
  Central bank gold buying (particularly from China, India, and Turkey)
  has added a structural bid beneath the commodity. This sovereign demand is
  widely seen as a deliberate diversification away from dollar-denominated
  reserves, reinforcing the long-term de-dollarisation trend. JP Morgan
  projects prices "toward \$5,000/oz by Q4 2026, with \$6,000/oz a
  possibility longer term."
]

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
    name: "AI & SEMIS", nav: "13.79%", ret: "+13.92%",
    positions: (
      (symbol: "SMH",  name: "VanEck Semiconductor ETF", isin: "IE00BMC38736", nav: "7.06%", ret: "+17.84%"),
      (symbol: "AIXA", name: "Aixtron SE",               isin: "DE000A0WMPJ6", nav: "6.73%", ret: "+9.82%"),
    ),
  ),
  (
    name: "COPPER", nav: "5.65%", ret: "-1.64%",
    positions: (
      (symbol: "COPAl", name: "WT Copper", isin: "GB00B15KXQ89", nav: "5.65%", ret: "-1.64%"),
    ),
  ),
  (
    name: "EU FINANCIALS", nav: "8.08%", ret: "+6.11%",
    positions: (
      (symbol: "SAN",  name: "Banco Santander SA",              isin: "ES0113900J37", nav: "4.13%", ret: "+8.44%"),
      (symbol: "ESIF", name: "iShares Europe Financials EUR A", isin: "IE00BMW42306", nav: "3.95%", ret: "+3.68%"),
    ),
  ),
  (
    name: "EU SOVEREIGNTY", nav: "7.25%", ret: "-3.27%",
    positions: (
      (symbol: "WDEF", name: "WisdomTree Europe Defence UCITS ETF", isin: "IE0002Y8CX98", nav: "7.25%", ret: "-3.27%"),
    ),
  ),
  (
    name: "ENERGY DEMAND", nav: "3.85%", ret: "-11.80%",
    positions: (
      (symbol: "XLUS", name: "Invesco US Utilities S&P",     isin: "IE00B3VPKB53", nav: "2.27%", ret: "-3.72%"),
      (symbol: "URNU", name: "Global X Uranium UCITS USD-A", isin: "IE000NDWFGA5", nav: "1.58%", ret: "-23.37%"),
    ),
  ),
  (
    name: "SINGLE POSITIONS", nav: "3.96%", ret: "+2.99%",
    positions: (
      (symbol: "TRNl", name: "Trainline PLC",          isin: "GB00BKDTK925", nav: "1.58%", ret: "-14.34%"),
      (symbol: "PURR", name: "Hyperliquid Strategies", isin: "US44916Y1064", nav: "2.38%", ret: "+14.49%"),
    ),
  ),
  (
    name: "CASH", nav: "57.41%", ret: "+0.19%",
    positions: (
      (symbol: "CASH_EUR", name: "Euro Cash",          isin: "", nav: "41.91%", ret: "--"),
      (symbol: "CASH_USD", name: "US Dollar Cash",     isin: "", nav: "8.13%",  ret: "+2.22%"),
      (symbol: "CASH_GBP", name: "British Pound Cash", isin: "", nav: "7.37%",  ret: "-0.98%"),
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

