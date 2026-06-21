// ============================================================
//  reports/2026-05/main.typ
//  Compile with: typst compile reports/2026-05/main.typ
//
//  Page order:
//    1. Cover             (dark)  — from report wrapper
//    2. Executive Summary (dark)  — dark-page[]
//    3. Team              (dark)  — dark-page[]
//    4. Content pages     (light) — standard flow
//    5. Portfolio Snapshot (light) — positions table + weighting pie charts
//    6. Trade Log         (light) — trade log table
//    7. Final / Imprint   (dark)  — dark-page[]
// ============================================================

#import "../../lib/report.typ": report
#import "../../lib/components.typ": *

#show: report.with(
  month: "May 2026",
)

// ── 2. EXECUTIVE SUMMARY (dark page) ────────────────────────
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Executive Summary

  Over the past month, we have opened our starter positions, launched the
  official capital team website, and published our first portfolio report for April. This
  report covers the period since inception in May and is the first to include
  performance metrics.
  
  #v(10pt)
  Over the reporting period, the portfolio returned -0.08~%, against benchmark
  returns of 0.08~% (MSCI Europe), 1.15~% (60/40), and 2.92~% (S&P 500). With
  only 30~% of capital currently deployed and the remainder held in cash, the
  portfolio carries low volatility and is not expected to track these benchmarks
  at this stage. The near-flat result is encouraging: our deployed positions have
  effectively offset the substantial transaction costs incurred at launch, which
  were sizeable relative to our current NAV. With only one month of data, we are
  not yet reporting standalone risk metrics; these will follow as the track
  record matures.
  
  #v(10pt)
  In the first investment round in the beginning of May, we allocated 30~% of total capital to
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
  Performance is evaluated against several benchmarks, including the 60/40 balanced portfolio, MSCI Europe, and S&P 500. For a comparison of daily returns, see @returns-daily. The remainder of this report consists of investment memos detailing the thesis behind each of our starter positions, concluding with an overview of our current holdings and executed trades.

  #v(14pt)
  #figure(
    image("../../assets/2026-05/returns_daily.png", width: 100%),
    caption: [Daily Portfolio Returns vs Benchmarks],
  ) <returns-daily>
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
      intro: "Gerasimos joined AIC in November 2025 and is currently in the sixth semester of B.Sc. Mechanical Engineering. With working student experience in energy markets and a personal interest in equity markets, his focus lies in robotics and AI monetization equities.",
      photo: "/assets/avatars/gerasimos_voutsinas.jpeg",
    ),
    new-member(
      name: "Kah-Ming Ly",
      intro: "Kah-Ming joined the AIC in November 2025 and currently pursues his B.Sc. in Business Administration & Engineering: Electrical Power Engineering. Having conducted research at the Department of Finance, RWTH Aachen, he is interested in portfolio optimization and derivatives.",
      photo: "/assets/avatars/kah-ming_ly.jpeg",
    ),
    new-member(
      name: "Jamie Bason",
      intro: "Jamie joined AIC in May 2026 as a first year B.Sc. Electrical Power Engineering and Business Administration student at RWTH Aachen. Coming from Indonesia, his financial interests lie in the commodity space, specifically energy and power.",
      photo: "/assets/avatars/jamie_bason.jpg",
    ),
    new-member(
      name: "Roua Messaoudi",
      intro: "Roua joined AIC in May 2026 and is currently pursuing a B.Sc. in Global Business and Economics at FH Aachen. Her interests lie in macroeconomics, monetary policy, and equity markets, with a particular focus on the impact of interest rates on investment decisions.",
      photo: "/assets/avatars/roua_messaoudi.jpeg",
    ),
    new-member(
      name: "Mohammad Sharey",
      intro: "Mohammad Sharey started his journey at the AIC Capital Team in May 2026 and is currently working full time as an automation technology engineer. He completed his master studies in automation engineering from RWTH in 2024 and his domain lies in the equity market related to cyber security.",
      photo: "/assets/avatars/mohammad_sharey.jpg",
    ),
  )
]

// ── 4. CONTENT PAGES (light) ───────────────────────────────

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

  == Semis and AI: A Cyber Rally?

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

  The first ceasefire brokered between Ukraine and Russia ran from 9–11 May.
  Putin has alluded to the war "coming to an end", and the situation appears to
  be calming. In reality, Trump's declared peace talks seem deeply troubled.
  Ukraine's confidence in U.S. peace-making capacity is shallow. European defence spending continues to surge regardless, with Germany,
  Poland, and the Nordics all committing to budgets well above the NATO 2~%
  floor. If a peace deal materialises, a massive Ukraine reconstruction trade
  will be unlocked. The World Bank estimates reconstruction costs at over
  \$500bn, though this does not appear imminent.

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

// ── ESIF ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "ESIF",
  name:    "iShares MSCI Europe Financials ETF",
  tagline: "Multi-year EU infrastructure and rearmament investment cycle; loan growth and fee income re-rating closes the gap over 12–18 months.",
)

#memo-kv((
  ("Asset Class",   "Sector ETF"),
  ("Idea Category", "Cyclical"),
  ("Entry",         "€15.01 (07/05/2026)"),
  ("Target",        "€18.01 (+20%)"),
  ("Stop Loss",     "€13.51 (−10%)"),
  ("Risk/Return","1:2"),
  ("Horizon",       "12–18 months"),
  ("Expected Value","+15%"),
))

#memo-rule("Thesis")

Europe is committing to fiscal investment in energy infrastructure, defence, and
industrial resilience, through ReArm Europe, the €90bn Ukraine loan, and NATO
rearmament. European banks are the primary structuring and loan origination
channel. The market is pricing the sector on near-term stagflation (3.0~% CPI,
1.1~% GDP growth) and ignoring the investment cycle entirely.

*Edge:* Consensus treats European financials as a stagflation victim; capex flows directly through bank balance sheets driving NII upgrades not yet in estimates.

*Driver:* Earnings re-rating on loan growth recovery as infrastructure disbursements accelerate through H2 2026.

#memo-rule("Catalysts & Scenarios")

*C1:* EU infrastructure/ReArm spending announcements, ongoing Q2–Q4 2026

*C2:* European bank Q2 earnings; NII guidance upgrades, Jul/Aug 2026

*C3:* ECB signals hold or cut, removing the primary bear risk (longer-term)

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−10%", "25%", "ECB hikes; growth cracks long-term",
  "Base", "+20%", "50%", "Stable ECB; loan growth 4–5%",
  "Bull", "+30%", "25%", "Full fiscal push; sector re-rates to historical P/E",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "ECB resumes hiking",        "HICP prints, ECB statements",  "CPI >3.5% + hiking signal → cut 50% within 6 months",
  "Stagflation deepens",       "PMI, GDP revisions",            "PMI <48 for two consecutive months → resize",
  "Loan / credit deterioration","ECB Lending Survey, NPLs",     "Standards tighten sharply → reduce",
)

#v(6pt)
*Next review:* ECB 05/06/2026 · Q2 bank earnings Jul 2026


// ── SAN ──────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "SAN",
  name:    "Banco Santander SA",
  tagline: "Spain's largest bank as primary financing channel for €163bn of NextGenerationEU investment; accelerating loan volumes and fee income will drive a re-rating from a depressed multiple over 12–18 months.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Average Grower"),
  ("Entry",         "€10.86 (08/05/2026)"),
  ("Target",        "€13.58 (+25%)"),
  ("Stop Loss",     "€9.77 (−10%)"),
  ("Risk/Reward",   "1:2.5"),
  ("Horizon",       "12–18 months"),
  ("Expected Value","+19%"),
))

#memo-rule("Thesis")

Santander is the dominant bank in Spain, the largest recipient of
NextGenerationEU funds in the EU at ~€163bn. Deployment is through PERTEs
(sector-specific industrial transformation programmes). Banks will be crucial
to structure and manage these loans; job creation and lending will in turn feed
back to them cyclically. The market is discounting the fiscal tailwind and
anchoring on ECB uncertainty.

*Edge:* NextGenerationEU spend is sovereign-backed demand, insensitive to consumer confidence and directly inflating Santander's most profitable business lines.

*Driver:* NII and fee income earnings upgrades as PERTE capital deployment accelerates.

#memo-rule("Catalysts & Scenarios")

*C1:* PERTE programme capital deployment announcements

*C2:* H1 2026 earnings; NII and fee income guidance upgrades, July 2026

*C3:* ECB signals hold or cut, removing the primary rate risk overhang

#v(6pt)

#data-table(
  (auto, auto, auto, 1fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−10%", "25%", "ECB hikes; EM FX deteriorates; spending stalls",
  "Base", "+25%", "50%", "Stable ECB; PERTE deployment on track; NII grows 5%+",
  "Bull", "+35%", "25%", "Full fiscal acceleration; buyback boosts EPS",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "ECB resumes hiking",          "HICP prints, ECB statements",               "CPI >3.5% + hiking signal → cut 50%",
  "EM currency deterioration",   "BRL, MXN vs EUR (70% non-euro revenues)",   "EM FX basket −10% → cut 50%",
  "PERTE/NextGenEU delays",      "EC disbursement reports, Spanish budget",    "Material deployment delays flagged → reduce",
)

#v(6pt)
*Next review:* ECB 05/06/2026 · H1 2026 earnings Jul 2026


// ── WDEF ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "WDEF",
  name:    "WisdomTree Europe Defence UCITS ETF",
  tagline: "European rearmament is a multi-year structural commitment; defence companies trade at a fraction of US peers despite order books at record highs.",
)

#memo-kv((
  ("Asset Class",   "Sector ETF"),
  ("Idea Category", "Cyclical"),
  ("Entry",         "€31.38 (07/05/2026)"),
  ("Target",        "€40.79 (+30%)"),
  ("Stop Loss",     "€28.25 (−10%)"),
  ("Risk/Return","1:3"),
  ("Horizon",       "12–18 months"),
  ("Expected Value","+28%"),
))
#memo-rule("Thesis")

NATO's 2~% GDP floor is now a political floor; multiple states are committing
to 3~%+, and ReArm Europe adds €800bn in dedicated procurement. European
defence primes are the direct beneficiaries, with order books at record highs
and 3–5 year conversion visibility.

*Edge:* Order-to-revenue conversion lags mean 2027–2028 consensus estimates are still being revised upward; the upgrade cycle is early.

*Driver:* Re-rating toward US defence peer multiples as procurement commitments convert to contracts and earnings visibility extends.

#memo-rule("Catalysts & Scenarios")

*C1:* NATO Summit spending pledges, June 2026; member state commitments upgraded

*C2:* ReArm Europe contract announcements, Q3/Q4 2026; order intake acceleration

*C3:* European defence H1 earnings, Jul/Aug 2026; guidance upgrades across primes

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−10%", "20%", "Ukraine ceasefire reduces urgency; procurement delays",
  "Base", "+31%", "60%", "NATO commitments on track; steady contract flow; multiple re-rates",
  "Bull", "+55%", "20%", "NATO 3%+ target; accelerated procurement; US peer multiple achieved",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "Peace deal reduces urgency",    "Ceasefire negotiations, NATO statements",      "Sustained spending reversal signals → reduce",
  "Procurement execution delays",  "Prime delivery timelines, earnings commentary","Repeated guidance cuts → resize",
  "US political pressure",         "Transatlantic defence procurement news",        "Material shift to US-sourced equipment → reassess",
)

#v(6pt)
*Next review:* NATO Summit Jun 2026 · European defence earnings Aug 2026


// ── SMH ──────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "SMH",
  name:    "VanEck Semiconductor ETF",
  tagline: "Physical AI infrastructure requires semiconductors; hyperscaler CapEx is accelerating beyond prior forecasts and the earnings revision cycle in SMH's underlying holdings is still in motion.",
)
#memo-kv((
  ("Asset Class",   "Sector ETF"),
  ("Idea Category", "Growth"),
  ("Entry",         "$83.80 (07/05/2026)"),
  ("Target",        "$104.75 (+25%)"),
  ("Stop Loss",     "$71.25 (−15%)"),
  ("Risk/Return","1:1.7"),
  ("Horizon",       "18–24 months"),
  ("Expected Value","+21%"),
))

#memo-rule("Thesis")

Goldman Sachs projects hyperscaler CapEx from 2025–2027 will reach
\$1.15 trillion, more than double 2022–2024, flowing directly into chip
designers, foundries, and equipment makers across the semiconductor value chain.

*Edge:* The earnings revision cycle across SMH's holdings is still in motion; consensus has not fully priced the CapEx acceleration.

*Driver:* Sustained hyperscaler spend driving beats and guidance upgrades across the value chain through H2 2026 and into 2027.

#memo-rule("Catalysts & Scenarios")

*C1:* Hyperscaler Q2 CapEx guidance upgrades, earnings season Jul/Aug 2026

*C2:* NVIDIA, Micron, TSMC earnings beats and forward guidance revisions

*C3:* Broadening AI adoption beyond hyperscalers driving incremental chip demand

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−20%", "20%", "AI CapEx cycle reverses; inventory builds; multiples compress",
  "Base", "+25%", "55%", "Continued AI build-out; earnings revisions in line with CapEx",
  "Bull", "+45%", "25%", "CapEx acceleration; multiple expansion; new AI application wave",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "AI CapEx cycle reversal",  "Hyperscaler CapEx guidance, earnings calls",       "Guidance cut >15% → reduce",
  "Taiwan / geopolitical",    "Cross-strait tensions, TSMC supply commentary",    "Escalation signals → cut 50%",
  "Inventory correction",     "NVIDIA, Micron channel checks, earnings data",     "Two consecutive quarters inventory build → resize",
)

#v(6pt)
*Next review:* Hyperscaler earnings Jul/Aug 2026

// ── AIXA ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "AIXA.DE",
  name:    "Aixtron SE",
  tagline: "Dominant MOCVD equipment supplier for GaN and SiC power devices; de-rated on EV softness while data centre and industrial adoption accelerates.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Growth"),
  ("Entry",         "€49.16 (07/05/2026)"),
  ("Target",        "€68.82 (+40%)"),
  ("Stop Loss",     "€41.79 (−15%)"),
  ("Risk/Return","1:2.7"),
  ("Horizon",       "18–24 months"),
  ("Expected Value","+31%"),
))

#memo-rule("Thesis")

Aixtron is the dominant supplier of MOCVD reactors for GaN and SiC power
devices, which are structurally necessary for AI data centre power efficiency and EV
charging. The stock is de-rated on EV softness while its data centre and
industrial segments accelerate.

*Edge:* Consensus anchors on EV softness while data centre GaN adoption accelerates, not yet in estimates.

*Driver:* Order intake inflection from data centre design-wins and European industrial electrification.

#memo-rule("Catalysts & Scenarios")

*C1:* Q2/Q3 2026 order intake recovery, primary confirmation of data centre demand

*C2:* Data centre GaN design-win announcements from major hyperscalers

*C3:* EV order stabilisation, which removes the primary bear narrative

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−25%", "25%", "EV recovery delayed; data centre GaN adoption slower than expected",
  "Base", "+40%", "55%", "Data centre GaN accelerates; EV stabilises; multiple re-rates",
  "Bull", "+75%", "20%", "Data centre + EV recovery simultaneous; AI photonics optionality",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "EV demand disappoints further", "OEM CapEx commentary, order intake data",     "Further EV order cuts with no DC offset → reduce",
  "Customer concentration risk",   "TSMC, Samsung order and delivery commentary", "Major customer delays two consecutive quarters → resize",
  "Competitor encroachment",       "Veeco, Agnitron market share data",            "Meaningful design-win losses disclosed → reassess",
)

#v(6pt)
*Next review:* Q2 2026 results · Data centre design-win announcements

// ── XLUS ─────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "XLUS",
  name:    "Invesco S&P 500 Utilities Sector UCITS ETF (Acc)",
  tagline: "Defensive rotation into US utilities: structural power-demand growth from AI and electrification, plus a falling-rate backdrop; held accumulating so the ~3% underlying yield compounds inside the fund.",
  )

#memo-kv((
  ("Asset Class",   "Synthetic Sector ETF"),
  ("Idea Category", "Cyclical"),
  ("Entry",         "$657.50 (08/05/2026)"),
  ("Target",        "$723 (+10%)"),
  ("Stop Loss",     "$605 (−8%)"),
  ("Risk/Return","1:1.25"),
  ("Horizon",       "6–12 months"),
  ("Expected Value","+6%"),
))

#memo-rule("Thesis")

US utilities have re-rated from a bond-proxy into a structural growth story:
AI and data-centre electricity demand are driving the first sustained load
growth in decades, lifting rate-base expansion and pushing sector EPS growth
to ~6–9~% for 2026. With the Fed having cut to 3.50–3.75~% and the long end
range-bound, the discount-rate headwind that hurt utilities in 2022–24 has
reversed. The Acc wrapper compounds the ~3~% underlying yield inside the fund.

*Edge:* Market treats the AI power trade as a one-off; rate-base growth is multi-year and regulator-backed.

*Driver:* EPS compounding at ~6–9~% on an expanding rate base as falling rates remove the de-rating risk.

#memo-rule("Catalysts & Scenarios")

*C1:* Fed rate path, FOMC June 16–17 2026; further cuts lower utility WACC and re-rate long-duration cash flows

*C2:* AI/data-centre capex guidance upgrades; raised utility capex plans and ISO/RTO load forecasts confirming structural demand

*C3:* Utility Q2 earnings, Jul/Aug 2026; rate-base and connection pipeline guidance

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−8.5%", "25%", "10yr backs up >4.7%; multiple de-rates; risk-on rotation out of defensives",
  "Base", "+8.5%", "50%", "Rates stable; EPS grows ~7%; multiple holds ~18.5×",
  "Bull", "+15.5%","25%", "Fed keeps cutting; load-growth re-rating pushes multiple toward prior premium",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "Rates back up",            "US 10yr yield; sector earnings yield vs 10yr",      "10yr breaks >4.7% and XLUS closes below $595 → exit",
  "Valuation stretched",      "Sector fwd P/E vs S&P 500 and own history",         "Relative P/E hits prior peak and momentum rolls → reduce",
  "Thin liquidity / swap",    "Premium/discount to NAV; daily value traded",        "Premium >150bps or spread blows out → do not add",
)

#v(6pt)
*Next review:* FOMC 17/06/2026 · Utility Q2 earnings Jul/Aug 2026


// ── URA ──────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "URNU",
  name:    "Global X Uranium UCITS ETF USD-A",
  tagline: "Structural uranium supply deficit meets AI-driven power demand; a multi-year buildout cycle and sovereign reshoring of the nuclear supply chain underpin a long-duration thematic trade.",
)

#memo-kv((
  ("Asset Class",   "Sector ETF"),
  ("Idea Category", "Cyclical/Commodity"),
  ("Entry",         "$35.00 (08/05/2026)"),
  ("Target",        "$50.75 (+45%)"),
  ("Stop Loss",     "$29.75 (−15%)"),
  ("Risk/Return","1:3"),
  ("Horizon",       "3–5 years"),
  ("Expected Value","+36%"),
))

#memo-rule("Thesis")

Data centre electricity demand could rise 160~% by 2030; hyperscalers are
contracting nuclear as the only 24/7 carbon-free baseload source. Supply
cannot keep up: 2025 mine production fell ~31M lbs short of primary demand and
the long-term contract price of \$93/lb confirms genuine utility demand.

*Edge:* Utility contracting at \$93/lb signals a multi-year demand floor that the market is not pricing into uranium equity multiples.

*Driver:* Re-rating as the supply deficit forces long-term utility contracts and sovereign reshoring programmes accelerate.

#memo-rule("Catalysts & Scenarios")

*C1:* Utility long-term contracting wave; supply deficit forces multi-year commitments

*C2:* New reactor approvals and SMR construction starts in US and Europe

*C3:* Spot uranium breakout above \$90/lb on tightening secondary supply

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−25%", "25%", "Uranium spot drops; reactor delays; sentiment unwinds",
  "Base", "+45%", "50%", "Supply deficit persists; utility contracting accelerates",
  "Bull", "+80%", "25%", "SMR commercial deployment; utility buying spree; spot breakout",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "Uranium spot weakness",      "UxC spot price weekly",                         "Spot sustained below $60/lb → reduce",
  "Reactor delays/cancellations","NRC filings, utility press releases",           "Major cancellation wave → cut 50%",
  "Pre-revenue constituent drag","Oklo, NANO Nuclear price vs NAV",               "Narrative-driven divergence from fundamentals → monitor",
)

#v(6pt)
*Next review:* Quarterly uranium market reports · US reactor licensing updates


// ── TRN ──────────────────────────────────────────────────────

#pagebreak()
#memo-header(
  ticker:  "TRN.L",
  name:    "Trainline PLC",
  tagline: "The market prices Trainline as a dying UK ticket retailer; it is a growing European B2B rail infrastructure platform at 9× normalised FCF.",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Idea Category", "Valuation"),
  ("Entry",         "235p (08/05/2026)"),
  ("Target",        "457p (+95%)"),
  ("Stop Loss",     "188p (−20%)"),
  ("Risk/Return","1:4.75"),
  ("Horizon",       "2 years"),
  ("Expected Value","+88%"),
))


#memo-rule("Thesis")

Trainline has halved from its peak despite EBITDA +11~%, NTS +7~%, and £294m
in buybacks since 2023. Solutions and International already account for >50~%
of group EBITDA, grow at double-digit rates, and are entirely immune to GBR —
yet at 222p the market prices in GBR capturing 40~%+ UK share, Solutions
stagnating, and International never scaling, simultaneously.

*Edge:* By FY2029 UK Consumer will be ~35~% of EBITDA; Trainline will be a European B2B rail platform for which UK Consumer is mature cashflow, not the thesis.

*Driver:* Multiple re-rating on GBR clarity; Solutions and International growing 10–15~% p.a. with buybacks reducing share count 4–5~% p.a.

#memo-rule("Catalysts & Scenarios")

*C1:* GBR Code of Practice, H2 2026/H1 2027; removes binary UK overhang

*C2:* Digital PAYG trial outcome, summer 2026; confirms Trainline as GBR infrastructure partner

*C3:* International Consumer EBITDA breakeven, H1 FY2027 (Aug 2026); proves platform thesis

#v(6pt)

#data-table(
  (auto, auto, auto, 2fr),
  ("Scenario", "Return", "Prob.", "Assumption"),
  "Bear", "−20%",  "20%", "GBR privileged access; Solutions <8% growth; second commission cut",
  "Base", "+95%", "65%", "Code parity; GBR real but slow; Solutions +8–10%; Intl breakeven",
  "Bull", "+200%", "15%", "PAYG success; Wave-2 accelerates; Solutions >15% growth",
)

#memo-rule("Risks & Monitors")

#data-table(
  (auto, auto, 1fr),
  ("Risk", "Monitor", "Trigger"),
  "GBR privileged fare access",     "Code of Practice content; ORR enforcement",      "Exclusive access granted → re-evaluate",
  "Solutions/Intl B2B deceleration","Intl B2B NTS growth each half-year",              "Three halves below +15% without explanation → reduce",
  "PAYG trial abandoned",           "Management commentary; H1 FY2027 results",        "Trial discontinued with no successor → reassess",
)

#v(6pt)
*Next review:* H1 FY2027 results Aug 2026 · PAYG trial outcome summer 2026


// ── PORTFOLIO SNAPSHOT (light) ──────────────────────────────
#pagebreak()
= Holdings as of 31/05/2026

#v(4pt)
#portfolio-table((
  (
    name: "AI & SEMIS", nav: "5.79%", ret: "+12.26%",
    positions: (
      (symbol: "AIXA", name: "Aixtron SE",               isin: "DE000A0WMPJ6", nav: "2.95%", ret: "+13.02%"),
      (symbol: "SMH",  name: "VanEck Semiconductor ETF", isin: "IE00BMC38736", nav: "2.83%", ret: "+11.46%"),
    ),
  ),
  (
    name: "EU FINANCIALS", nav: "7.65%", ret: "−1.26%",
    positions: (
      (symbol: "ESIF", name: "iShares Europe Financials EUR A", isin: "IE00BMW42306", nav: "3.83%", ret: "−1.09%"),
      (symbol: "SAN",  name: "Banco Santander SA",              isin: "ES0113900J37", nav: "3.82%", ret: "−1.43%"),
    ),
  ),
  (
    name: "EU SOVEREIGNTY", nav: "7.71%", ret: "+1.12%",
    positions: (
      (symbol: "WDEF", name: "WisdomTree Europe Defence UCITS ETF", isin: "IE0002Y8CX98", nav: "7.71%", ret: "+1.12%"),
    ),
  ),
  (
    name: "ENERGY DEMAND", nav: "3.97%", ret: "−9.92%",
    positions: (
      (symbol: "XLUS", name: "Invesco US Utilities S&P",     isin: "IE00B3VPKB53", nav: "2.25%", ret: "−4.41%"),
      (symbol: "URNU", name: "Global X Uranium UCITS USD-A", isin: "IE000NDWFGA5", nav: "1.71%", ret: "−17.16%"),
    ),
  ),
  (
    name: "SINGLE POSITIONS", nav: "1.62%", ret: "−13.72%",
    positions: (
      (symbol: "TRNl", name: "Trainline PLC", isin: "GB00BKDTK925", nav: "1.62%", ret: "−13.72%"),
    ),
  ),
  (
    name: "CASH", nav: "73.26%", ret: "+0.02%",
    positions: (
      (symbol: "CASH_EUR", name: "Euro Cash",          isin: "", nav: "49.81%", ret: ""),
      (symbol: "CASH_USD", name: "US Dollar Cash",     isin: "", nav: "15.96%", ret: "+0.53%"),
      (symbol: "CASH_GBP", name: "British Pound Cash", isin: "", nav: "7.50%",  ret: "−0.97%"),
    ),
  ),
))

#v(12pt)
#grid(
  columns: (1fr, 1fr),
  gutter: 0pt,
  figure(image("../../assets/2026-05/weights_by_position.png", width: 100%), caption: [Positions Weighting]),
  figure(image("../../assets/2026-05/weights_by_theme.png",    width: 100%), caption: [Themes Weighting]),
)

// ── TRADE LOG (light) ───────────────────────────────────────
#pagebreak()
= Executed Trades

#v(4pt)
#data-table(
  (auto, auto, auto, auto, auto, auto),
  ("Date", "Symbol", "Name", "Side", [Votes#footnote[In favour / against / abstain]], "Notice"),
  "07 May 2026", "AIXA",    "Aixtron SE",                          "BUY",  "7 / 0 / 1", "Starter Position",
  "07 May 2026", "ESIF",    "iShares Europe Financials EUR A",     "BUY",  "7 / 0 / 1", "Starter Position",
  "07 May 2026", "EUR.USD", "EUR/USD",                             "SELL", "", "FX Conversion",
  "07 May 2026", "SMH",     "VanEck Semiconductor ETF",            "BUY",  "7 / 0 / 1", "Starter Position",
  "07 May 2026", "WDEF",    "WisdomTree Europe Defence UCITS ETF", "BUY",  "7 / 0 / 1", "Starter Position",
  "08 May 2026", "EUR.GBP", "EUR/GBP",                             "SELL", "", "FX Conversion",
  "08 May 2026", "SAN",     "Banco Santander SA",                  "BUY",  "7 / 0 / 1", "Starter Position",
  "08 May 2026", "TRNl",    "Trainline PLC",                       "BUY",  "7 / 0 / 1", "Starter Position",
  "08 May 2026", "URNU",    "Global X Uranium UCITS USD-A",        "BUY",  "8 / 0 / 0", "Starter Position",
  "08 May 2026", "XLUS",    "Invesco US Utilities S&P",            "BUY",  "6 / 0 / 2", "Starter Position",
)

// ── 5. FINAL PAGE (dark) ────────────────────────────────────
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
    [May 2026 · © 2026 Aachen Investment Club e.V.],
  )
]

