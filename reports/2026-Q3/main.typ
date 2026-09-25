// ============================================================
//  reports/2026-Q3/main.typ
//  Compile with: typst compile --root . --font-path fonts reports/2026-Q3/main.typ
//  Watch with:   typst watch   --root . --font-path fonts reports/2026-Q3/main.typ
//
//  NEW QUARTERLY STRUCTURE (Q3 2026 onward, replaces the monthly format):
//    1. Cover + Table of Contents  (dark + light)
//    2. Executive Summary          (dark)
//    3. Team Introduction          (dark)
//    4. Market Environment         (light)
//    5. Portfolio Performance & AUM (light)
//    6. Risk & Factor Analysis     (light)
//    7. Portfolio Activity (light)
//    8. Notable News & Event Analysis (light)
//    9. Current Holdings & Positioning (light)
//   10. Outlook                    (light)
//   11. Appendix                   (light + dark final page)
//
//  Bracketed text like [X] marks a value that must be filled in before
//  publishing. Do not replace market/macro placeholders with invented
//  figures or events -- see Section 4 note.
// ============================================================

#import "../../lib/report.typ": report
#import "../../lib/components.typ": *
#import "../../lib/theme.typ": brand, fonts, sizes

#show: report.with(
  title: "Portfolio Report",
  month: "Q3 2026 (Jul - Sep)",
)

// ---- 1. TABLE OF CONTENTS (light) --------------------------
#align(center)[
  #text(size: sizes.h1, weight: "bold", fill: brand.primary)[Table of Contents]
]
#v(18pt)
#outline(title: none, depth: 1)

// ---- 2. EXECUTIVE SUMMARY (dark page) -----------------------
#pagebreak()
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  = Executive Summary

  The portfolio returned -2.98% in Q3 2026 (QTD), against +3.19% for MSCI
  World, +3.54% for the S&P 500, -0.55% for a 60/40 balanced portfolio, and
  -0.58% for MSCI Europe.

  #v(10pt)
  Ending AUM stood at €6,322 at the end of the quarter,
  up from €2,507 at the start. Net flows over the period were
  €4,000, with €0 in withdrawals.

  #v(10pt)
  *Biggest portfolio moves this quarter:*
  + Deployed part of available capital across 19 buy trades, adding
    or building out positions in AIXA, SGBS, 012330.KS, WDEF, URNU, SAN,
    COPAl, AMZN, NU, HCCD, and ORCL.
  + PURR (Hyperliquid Strategies) ended the quarter as the top-returning
    position, +71.6% since entry and 7.19% of NAV.
  + Fully exited two positions: iShares Europe Financials (ESIF) on 31 Aug
    and Trainline (TRNl) on 2 Sep.

  #v(10pt)
  *Thematic shift:* Cash stood at 25.1% of NAV at quarter end. We are
  deliberately holding a substantial cash position to wait for entry
  opportunities, having added cash to the portfolio amid market volatility,
  and are waiting for markets to settle to make more decisive moves.

  #v(10pt)
  This report covers performance and attribution, risk and factor exposure,
  the quarter's trading activity, notable events that moved the portfolio,
  current holdings, and our outlook for next quarter.
]

// ---- 3. TEAM INTRODUCTION (dark page) ------------------------
#pagebreak()
#dark-page[
  = Team Introduction

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
    current-member(name: "Thomas",    photo: "/assets/avatars/thomas_hahn.JPG",        title: "Analyst"),
    current-member(name: "Niklas",    photo: "/assets/avatars/niklas_luessgen.JPG",    title: "Analyst"),
    current-member(name: "Hyomin",    photo: "/assets/avatars/hyomin_back.JPG",        title: "Analyst"),
  )
]

// ---- 4. MARKET ENVIRONMENT (light) ---------------------------
#pagebreak()
#set page(background: none)
= Market Environment

#v(10pt)
== Rates

Central banks broadly turned back toward tightening this quarter. Rising
oil costs and their knock-on effects on energy bills pushed energy prices
sharply higher, with euro-area energy inflation running at 14.3% y/y in
August. At the Fed, Kevin Warsh, despite his previously dovish reputation, adopted a markedly more hawkish stance in September, and, much to
Trump's dismay, rates were hiked 25bp to 3.75-4.00%. The ECB held its
deposit rate at 2.25% through September before it, too, delivered a 25bp
hike. Inflationary pressure from global conflict is now visible in both
the European and US economies. The Bank of Japan also hiked, moving from
1% to a 31-year high of 1.25%. Hawkish themes are now common globally.

== Equity Markets & Sector Rotation

Major indices set fresh record highs earlier in 2026 before a broad pullback
through Q3: the S&P 500 down roughly 2.7% and the Nasdaq 100 down ~3.8%
off their early-June peaks. Leadership rotated away from prior tech
leadership into Energy, Consumer Staples, and Industrials.

AI-linked equity momentum broke down in September after industry leaders,
including OpenAI's Sam Altman, called for a slowdown in AI development.
Chipmakers were hit hardest, not just in the US but also in Asia. Critics
are speculating that the AI boom is nearing its end, whereas we remain
steadfast in our conviction that a bull market for AI is still in the
cards.

There is rising speculation about a bull market for cryptocurrencies,
catalysed by US regulatory developments, including expectation of a
CFTC-sanctioned path to legalise Hyperliquid in the US and the Clarity
Act's failed Senate cloture vote on 15 Sep.

== Global News

The US carried out further airstrikes on Iranian targets in September, in
response to attacks on shipping in the Strait of Hormuz and on US assets.
In Europe, Russian drone incursions into NATO airspace continued through
the quarter across Poland, Lithuania, and Romania, alongside a naval
incident in the Baltic, keeping European security and defence spending
firmly in focus. Germany blamed Russia for an explosive-laden drone found
near Leipzig airport in August, one of several suspected Russian sabotage
attempts against European infrastructure this quarter spanning both
physical attacks and cybersecurity violations. Russia also continued a
large-scale build-out of military infrastructure and troop presence along
its borders with Lithuania and, further north, with Norway and Finland,
keeping mobilisation risk on NATO's eastern and northern flanks firmly in
view. The September BRICS summit and UN General Assembly drew attention to
shifting economic and technology governance influence among non-Western
blocs.

South Korea's KOSPI saw bearish pressure tied to fading AI-chipmaker
enthusiasm. It was the market's steepest monthly drop on record, before it
recovered through August and September. Japan continued
its slow exit from ultra-low rates (above), with equities broadly taking
the September hike in stride. China's economy grew 4.3% y/y in Q2, its
slowest pace since late 2022, with investor sentiment surveys showing
caution even as corporate earnings began to recover.

In Latin America, the region's economies and fintech sector kept growing
faster than developed markets (strong double-digit growth in Brazil and
Mexico, more modest growth in Argentina), though signs of margin pressure
from aggressive reinvestment and early credit-quality softening (rising
delinquencies) emerged late in the quarter.

#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  Sources: CNBC, The Hill, PBS NewsHour (Fed/Kevin Warsh, Aug-Sep 2026); ECB
  press release (10 Sep 2026); Eurostat euro area inflation statistics (Aug
  2026 energy HICP); CNBC, Al Jazeera (Bank of Japan, 18 Sep 2026); State
  Street Q3 2026 sector note; Morningstar; Bloomberg, CNBC (Sam Altman/AI
  slowdown, Sep 2026); CNBC, Al Jazeera (US-Iran/Strait of Hormuz strikes,
  Sep 2026); France 24, Al Jazeera, ABC News (Sep 2026, NATO incursions);
  CNN, NPR, Defense News, Al Jazeera (Sep 2026, Leipzig airport drone
  attack); Meduza, Ukrainska Pravda (Jun 2026, Russian military build-up
  near Norway/Finland/Baltic borders); Euromaidan Press, Baltic Monitor (Sep
  2026, Lithuania border activity); BRICS 2026 summit (New Delhi, 12-13 Sep
  2026); The Block, NPR, CNBC, CoinDesk (Sep 2026, Clarity Act Senate vote
  and Hyperliquid CFTC developments); NPR, CNBC (China GDP, 15 Jul 2026);
  Trading Economics
  (KOSPI); CKGSB investor sentiment survey (China, Q3 2026); regional
  fintech/e-commerce earnings coverage (Latin America, Sep 2026).
]

// ---- 5. PORTFOLIO PERFORMANCE & AUM (light) -----
#set page(background: {
  place(top + left, image("../../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
})
#pagebreak()
= Portfolio Performance & AUM

== Returns

#data-table(
  (1.2fr, auto, auto, auto, auto, auto),
  ("Period", "AIC Portfolio", "MSCI World", "MSCI Europe", "60/40 Bal.", "S&P 500"),
  "QTD",              "-2.98%", "+3.19%", "-0.58%", "-0.55%", "+3.54%",
  "YTD",              "-3.32%", "+3.50%", "-0.76%", "+0.16%", "+4.60%",
  "Since Inception",  "-3.32%", "+3.50%", "-0.76%", "+0.16%", "+4.60%",
)

#v(4pt)
#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  Since Inception equals YTD because inception falls within 2026.
]

#v(14pt)
== AUM & Net Flows

#memo-kv((
  ("Starting AUM",       "€2,507 (1 Jul 2026)"),
  ("Net Contributions",  "€4,000 (24 Aug 2026)"),
  ("Net Withdrawals",    "€0"),
  ("Ending AUM",         "€6,322 (end of Q3 2026)"),
))

#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  AUM changes shown here are flows only, kept separate from investment
  performance above.
]

#v(10pt)
== Metrics

#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  Q3 2026. R#super[2] computed vs S&P 500.
]

#v(4pt)
#data-table(
  (1fr, 1fr),
  ("Metric", "Value"),
  "Annualised Return",              "-11.89%",
  "Annualised Volatility",          "11.00%",
  "Sharpe Ratio",                   "-1.08",
  "Sortino Ratio",                  "-12.40",
  "Calmar Ratio",                   "-2.10",
  "Maximum Drawdown",               "-5.66%",
  "Max Drawdown Duration (days)",   "57",
  "Max Drawdown Duration (months)", "2.7",
  "VaR (Monthly, 5%)",              "-2.09%",
  "CVaR (Monthly, 5%)",             "-2.13%",
  "Skewness",                       "1.62",
  [R#super[2] (Benchmark)],         "0.92",
)

#v(10pt)
== Performance Charts

#figure(
  block(fill: white, width: 100%, image("../../assets/2026-Q3/charts/returns_index.png", width: 100%)),
  caption: [Cumulative Portfolio Return vs Benchmark, Q3 2026],
)

#v(10pt)
#figure(
  block(fill: white, width: 100%, image("../../assets/2026-Q3/charts/returns_bar.png", width: 100%)),
  caption: [Daily Portfolio Returns vs Benchmark, Q3 2026],
)

// ---- 6. RISK & FACTOR ANALYSIS (light) ------------------------
#pagebreak()
= Risk & Factor Analysis

#text(size: 8pt, fill: brand.muted, style: "italic")[
  Barra factor model on current holdings: 14 positions
  covered, 90.2% of invested capital. PURR is not covered: its price history is still
  shorter than the model's minimum rolling window, so no factor exposures
  can be calculated for it yet.
]

#v(8pt)
Market-level style exposures are estimated using a Barra WLS regression across
GICS sectors, as shown in @market-exposure-q3. Results are reported as
Z-scores, reflecting the significance of each style in determining returns.

#v(6pt)
#figure(
  image("../../assets/2026-Q3/Factor/sector_exposures.png", width: 100%),
  caption: [Factor Exposures by GICS Sector],
) <market-exposure-q3>

#v(10pt)
Portfolio factor tilts are derived from Barra factor breakdowns of individual
positions, averaged across the portfolio, as shown in @factor-tilts-q3.

#v(6pt)
#figure(
  image("../../assets/2026-Q3/Factor/portfolio_tilts.png", width: 100%),
  caption: [Portfolio Factor Tilt],
) <factor-tilts-q3>

#v(10pt)
Individual position exposures underlying the portfolio-level tilt above are
shown in @position-exposures-q3.

#v(6pt)
#figure(
  image("../../assets/2026-Q3/Factor/position_exposures.png", width: 100%),
  caption: [Style Factor Exposures by Position],
) <position-exposures-q3>

#v(6pt)
The largest tilts are negative Short-Term Reversal (-1.12), Liquidity
(-1.05), Value (-0.82) and Beta (-0.80), with positive Profitability
(+0.54). The book leans toward recent sellers, growth, and low-beta names.

// ---- 7. PORTFOLIO ACTIVITY (light) --
#pagebreak()
#set page(background: none)
= Portfolio Activity

#text(size: 8.5pt, fill: brand.muted)[
  21 executions this quarter: 19 buys and 2 sells (full exits of iShares
  Europe Financials (ESIF) and Trainline (TRNl)), settled across five
  currencies (EUR, USD, GBP, KRW, SGD).
]

#v(14pt)
== New Investments

Positions opened for the first time this quarter.

#v(6pt)
#data-table(
  (auto, 1fr, auto),
  ("Symbol", "Name", "Buy Date(s)"),
  "SGBS",      "WisdomTree Physical Swiss Gold", "24 Aug, 21 Sep",
  "012330.KS", "Hyundai Mobis Co Ltd",           "25 Aug",
  "AMZN",      "Amazon.com, Inc.",                "27 Aug",
  "NU",        "Nu Holdings Ltd/Cayman Isl-A",    "31 Aug",
  "HCCD",      "Contemporary Amperex Technology (SDR)", "8 Sep",
  "ORCL",      "Oracle Corporation",              "21 Sep",
)

#v(10pt)
== Reinvestments

Additions to positions already held entering the quarter.

#v(6pt)
#data-table(
  (auto, 1fr, auto),
  ("Symbol", "Name", "Buy Date(s)"),
  "MELI", "MercadoLibre, Inc.",                    "16 Jul, 27 Aug",
  "XLUS", "Invesco US Utilities S&P",              "20 Jul",
  "AIXA", "Aixtron SE",                            "10 Aug, 31 Aug",
  "PURR", "Hyperliquid Strategies",                "19 Aug, 27 Aug",
  "WDEF", "WisdomTree Europe Defence UCITS ETF",   "27 Aug",
  "URNU", "Global X Uranium UCITS USD-A",          "27 Aug",
  "SAN",  "Banco Santander SA",                    "27 Aug, 1 Sep",
  "COPAl","WisdomTree Copper",                     "27 Aug",
)

#v(10pt)
== Exits

Positions closed in full this quarter.

#v(6pt)
#data-table(
  (auto, 1fr, auto),
  ("Symbol", "Name", "Sell Date"),
  "ESIF", "iShares Europe Financials EUR A", "31 Aug",
  "TRNl", "Trainline PLC",                   "2 Sep",
)

#pagebreak()
== Investment Memos

#text(size: 8pt, fill: brand.muted, style: "italic")[
  One memo per new investment and exit this quarter.
]

#v(8pt)
#memo-header(
  ticker:  "SGBS",
  name:    "WisdomTree Physical Swiss Gold",
  tagline: "Physically-backed gold ETC",
)

#memo-kv((
  ("Asset Class",   "ETC"),
  ("Action",        "BUY"),
  ("Entry / Exit",  "\u{0024}450.50 (24 Aug 2026)"),
  ("Size",          "6.18% of NAV (+5.77%, 21 Sep 2026)"),
))

#memo-rule("Thesis / Rationale")

Gold is a defensive move to control overall portfolio volatility. After
pulling back from recent highs, we are continuing to buy to build a strong
position through cost averaging.

#memo-rule("Catalyst / Valuation Trigger")

Controlling inflation and the prospect of rate cuts will drive up the
price of gold, as buyers move away from interest-bearing products.

#v(10pt)
#memo-header(
  ticker:  "012330.KS",
  name:    "Hyundai Mobis Co Ltd",
  tagline: "Korean auto-parts and mobility-tech supplier",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Action",        "BUY"),
  ("Entry / Exit",  "₩484,000 (25 Aug 2026)"),
  ("Size",          "4.80% of NAV"),
))

#memo-rule("Thesis / Rationale")

Hyundai Mobis is a core parts supplier to the automobile industry, though
the company is taking an increasingly aggressive stance in robotics.
Hyundai Motor Group first acquired an 80% stake in Boston Dynamics in 2021
and completed a full buyout of SoftBank's remaining stake in 2026. As the
Group's parts-supply arm, Hyundai Mobis is the actuator supplier for Boston
Dynamics's Atlas robot and other humanoid platforms, positioning it as a
core component supplier to the wider robotics industry. Actuators make up
up to 60% of a humanoid robot's total material cost, and Hyundai Mobis's
decades of competitive, profitable auto-component manufacturing give it
the industrial expertise to capture significant market share as production
scales. Hyundai has committed to producing nearly 30,000 robot units
annually by 2028, a target well above any competitor's disclosed plans.
It is a profitable company with large-scale production capacity, giving
it a manufacturing edge over smaller-scale, pre-profit startups. A
Qualcomm partnership (Snapdragon Ride Flex) gives it the same exposure as
AMZN to software-defined vehicles and automation.

#memo-rule("Catalyst / Valuation Trigger")

Progress on the Qualcomm SDV rollout and Boston Dynamics Atlas
commercialisation; new production bolstered by the Slovakia EV-component
plant.

#pagebreak()
#memo-header(
  ticker:  "AMZN",
  name:    "Amazon.com, Inc.",
  tagline: "E-commerce, AWS cloud & AI infrastructure",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Action",        "BUY"),
  ("Entry / Exit",  "\u{0024}257.72 (27 Aug 2026)"),
  ("Size",          "4.81% of NAV"),
))

#memo-rule("Thesis / Rationale")

A profitable company with good growth across every business segment: AWS revenue grew 36.7% y/y in Q2 (its fastest pace in 18
quarters, \$42.2bn), and Amazon raised FY26 capex guidance to ~\$220bn.
Most notable to us is the automation angle: Amazon's push into
high-automation, "dark" (lights-out) warehouses feeds directly into our
Robotics theme alongside 012330.KS, on top of the AWS/AI infrastructure
buildout. Amazon has also deployed over a million robots across its
fulfilment network, layered with an AI control system that lifts
throughput and lowers unit costs, directly combining the AI and Robotics
themes in one business. AWS's AI and custom-silicon businesses have each
independently crossed a \$25bn annualised run rate, growing at
triple-digit rates, AWS operating margin held at 39.4% in Q2, and
advertising grew 22%. We see Amazon as a stronger contender in the AI and
physical AI market.

#memo-rule("Catalyst / Valuation Trigger")

Q3 earnings (28 Oct 2026), guided at \$197-202bn net sales and
\$22.5-26.5bn operating income, a read-through on whether AWS/AI capex
is converting into margin.

#v(10pt)
#memo-header(
  ticker:  "NU",
  name:    "Nu Holdings Ltd/Cayman Isl-A",
  tagline: "Latin American digital bank",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Action",        "BUY"),
  ("Entry / Exit",  "\u{0024}14.49 (31 Aug 2026)"),
  ("Size",          "2.19% of NAV"),
))

#memo-rule("Thesis / Rationale")

A genuinely profitable business: 53% revenue growth and Nu's first
profitable Mexico quarter, on top of its large, established Brazil base.
Despite competing in the same Latin America market as MercadoLibre, Nu
solidified itself as a strong bet for diversification of South American
growth.

#memo-rule("Catalyst / Valuation Trigger")

Nu secured conditional approval from the US OCC in January 2026 for a de
novo national bank charter (Nubank, N.A.), with full approval and launch
targeted for 2027. US entry is still in the works, but it holds a huge
market potential of over 300 million people (nearly matching Nu's combined
Brazil, Mexico, and Colombia footprint). Rising delinquencies in South
America are a risk to watch.

#pagebreak()
#memo-header(
  ticker:  "HCCD",
  name:    "Contemporary Amperex Technology (SDR)",
  tagline: "World's largest EV battery maker (CATL)",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Action",        "BUY"),
  ("Entry / Exit",  "S\u{0024}3.03 (8 Sep 2026)"),
  ("Size",          "3.24% of NAV"),
))

#memo-rule("Thesis / Rationale")

CATL dominates EV battery production: it commands the largest share of
battery manufacturing in Europe as well as globally (~40% worldwide). It
is a proven leader of the market in terms of execution and innovation. It
unveiled its TENER sodium-ion energy storage system in Munich, and
certified all 20 of its battery plants carbon-neutral in August.

#memo-rule("Catalyst / Valuation Trigger")

TENER's adoption and performance: cumulative shipments targeted at 1GWh by
end-2026, with global deliveries beginning June 2027.

#v(10pt)
#memo-header(
  ticker:  "ORCL",
  name:    "Oracle Corporation",
  tagline: "Neocloud / AI infrastructure",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Action",        "BUY"),
  ("Entry / Exit",  "\u{0024}149.24 (21 Sep 2026)"),
  ("Size",          "4.09% of NAV"),
))

#memo-rule("Thesis / Rationale")

Oracle has seen a strong selloff on investor worries about the debt it's
taking on to fund its AI buildout: Oracle funded roughly \$43bn of its
\$56bn FY2026 capex with debt, and its bonds have drifted 60-80bps wider
with the equity down sharply since September on that leverage and
OpenAI-concentration concern. Despite the selloff, Oracle remains highly
competitive and, unlike much of the neocloud peer group (CoreWeave and
Cerebras are both posting large net losses), still profitable, with a net
margin near 21.7%. We see Larry Ellison's dealmaking and industry
relationships as a real edge in securing contracts and defending Oracle's
backlog going forward. If Oracle converts this capex into returns, it
acts as a leveraged neocloud play on the broader AI infrastructure theme,
though the position is heavily concentrated on OpenAI specifically, a
company we view as a serious long-term competitor in the AI race, not
just a customer, and the key risk to watch.

#memo-rule("Catalyst / Valuation Trigger")

Bond-spread stabilisation rather than continued widening toward a
ratings downgrade (Barclays has flagged BBB- risk); Q3/Q4 earnings on
the capex/free-cash-flow trajectory.

#pagebreak()
#memo-header(
  ticker:  "ESIF",
  name:    "iShares Europe Financials EUR A",
  tagline: "Diversified European financials ETF (exited)",
)

#memo-kv((
  ("Asset Class",   "ETF"),
  ("Action",        "SELL"),
  ("Entry / Exit",  "€16.88 (31 Aug 2026)"),
  ("Size",          "4.40% of NAV pre-exit"),
))

#memo-rule("Thesis / Rationale")

Exited the diversified basket to make room for a higher-risk-appetite,
more targeted bet: we still see good long-term performance ahead for
European financials as a sector, but would rather express that view
through concentrated coverage of a single name we have conviction in
than spread it thinly across a basket.

#memo-rule("Catalyst / Valuation Trigger")

Decision to consolidate financials exposure into SAN rather than any
single ESIF-specific event.

#v(10pt)
#memo-header(
  ticker:  "TRNl",
  name:    "Trainline PLC",
  tagline: "UK rail ticketing platform (exited)",
)

#memo-kv((
  ("Asset Class",   "Stock"),
  ("Action",        "SELL"),
  ("Entry / Exit",  "£1.65 (2 Sep 2026)"),
  ("Size",          "1.82% of NAV pre-exit"),
))

#memo-rule("Thesis / Rationale")

Exited on persistent volatility and a steady drumbeat of
opposition/counter-flow news rather than any single catalyst: the CEO's
February departure, the CMA's August drip-pricing investigation, and
the Great British Railways nationalisation programme's planned national
ticketing app all pointed the same direction: rising business and
regulatory risk to the core model that we didn't think the
buyback-supported share price was pricing in. See Notable News for the
full detail.

#memo-rule("Catalyst / Valuation Trigger")

Consistent regulatory and state-led opposition and intervention posed too
many short- and long-term risks for stock performance.

// ---- 8. NOTABLE NEWS & EVENT ANALYSIS (light) -------------------
#pagebreak()
#set page(background: none)
= Notable News & Event Analysis

#v(10pt)
== AIXA -- Aixtron

*What happened:* Aixtron raised full-year 2026 revenue guidance to
€560m±€30m on strong optoelectronics/GaN demand, with H1 order intake up
54% y/y to €386m. Despite this, AIXA was the book's worst-performing
position in Q3 (~-32.5% price return over the period), amid a broader
September AI/semis selloff.

*How we interpreted:* The gap between company fundamentals and
share price is unusual enough to flag for further diligence. We did not
trim the position this quarter and are watching for a clearer catalyst
before Q4.

== HCCD -- Contemporary Amperex Technology (CATL)

*What happened:* CATL certified all 20 of its battery plants
carbon-neutral in August and unveiled its TENER sodium-ion energy storage
system in Munich, reinforcing its ~40% global EV-battery market share.

*How we interpreted:* We opened this position on 8 Sep, sizing
it as a direct read on CATL's continued technology and market leadership in
EV batteries.

== SAN -- Banco Santander

*What happened:* The US Federal Reserve approved Santander's acquisition of
Webster Financial Corp, which closed 20 Aug 2026, making Santander Holdings
USA the 19th-largest bank in the US. Q2 net income rose to €3.58bn; Citi
raised its price target to €14.50 on 18 Sep.

*How we interpreted:* We added to SAN twice this quarter (27
Aug, 1 Sep), on strong performance and the Webster deal's step-change in US
scale, but also on our own read of net interest margin: we expect SAN to
keep operating good NIMs off the ECB's rate path, and see a further ECB
hike as more likely than not, a tailwind for European bank margins into
Q4.

== 012330.KS -- Hyundai Mobis

*What happened:* Hyundai Mobis deepened its software-defined-vehicle
partnership with Qualcomm (Snapdragon Ride Flex) and its Boston Dynamics
collaboration (supplying actuators for the Atlas robot), and opened a new
EV-component plant in Slovakia. Q1 net profit was still down 14.4% y/y.

*How we interpreted:* We read the Boston Dynamics acquisition and the
Qualcomm partnership as an aggressive commitment to the robotics theme and
to expanding beyond the core auto-parts business. That matters to us
because we want to see Hyundai Mobis transition further into, and
ultimately dominate, the robotics parts market.

== TRNl -- Trainline (exited)

*What happened:* CEO Jody Ford's February 2026 departure weighed on the
stock earlier in the year; shares were supported through Q3 by an active
buyback program (~£150m cumulative) and remained up ~4% YTD. In August, the
UK Competition and Markets Authority opened an investigation into Trainline
over alleged "drip pricing" practices. Separately, the UK government's
Great British Railways nationalisation programme continued rolling
operators into public ownership through the quarter (Chiltern Railways in
September; Great Western Railway due December), with GBR's planned national
ticketing app a direct structural threat to Trainline's third-party
ticket-retailing model, a clear case of state intervention reshaping the
sector Trainline operates in.

*How we interpreted:* Between the CMA investigation and the
state's expanding footprint in retail ticketing, we saw the regulatory and
competitive risk to Trainline's business model rising faster than its
buyback-supported share price reflected, and exited the position in full on
2 Sep.

== URNU -- Global X Uranium

*What happened:* US-Canada trade tension (Ontario floating uranium export
leverage amid tariff retaliation) added sector volatility, while SMR
developers NuScale and Oklo sold off sharply in September after a UBS
downgrade and a securities-fraud probe.

*How we interpreted:* We continue to hold URNU as a
diversified uranium/nuclear basket rather than single-name SMR exposure,
which limits, but doesn't eliminate, the idiosyncratic risk seen in the
selloff.

== AMZN -- Amazon

*What happened:* AWS revenue grew 36.7% y/y in Q2 (its fastest pace in 18
quarters, \$42.2bn), and Amazon raised FY26 capex guidance to ~\$220bn; Q3
guidance points to \$197-202bn in net sales.

*How we interpreted:* We added to AMZN on 27 Aug on continued
conviction in AWS/AI infrastructure spend feeding through to the Robotics
theme.

== ORCL -- Oracle

*What happened:* On 24 Sep, reports surfaced that Oracle sent a "force
majeure" notice on Project Jupiter, its New Mexico data centre campus. The
notice lets Oracle delay certain payments if the campus misses its planned
2028 operational target. The project has faced delays over power supply
and a proposed gas pipeline, plus lawsuits over water and air-quality
permits. Oracle said the project "remains on our planned schedule". The
stock fell sharply on the news.

*How we interpreted:* The notice adds execution risk to Oracle's AI
buildout on top of the existing debt concern, and hit the stock days after
our 21 Sep entry. We read it as a hedge against delay rather than a
cancellation, and hold the position. We are watching for further
permitting or power-supply setbacks on Project Jupiter.

== PURR -- Hyperliquid Strategies

*What happened:* Crypto markets rallied through Q3, with Bitcoin back
above \$80k and Hyperliquid trading in the mid-\$90s. The Clarity Act crypto
market-structure bill failed a Senate cloture vote on 15 September (49-50,
short of the 60 needed) but did not stop the rally, and reported White
House commentary suggested the CFTC is
working to bring Hyperliquid into the US "in a fully compliant and legal
fashion."

*How we interpreted:* PURR ended the quarter as our
top-returning position (+71.6% since entry, 7.19% of NAV); see Outlook
for how we're positioning into Q4.

#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  Sources: semiconductor-today.com, Investing.com, Aixtron investor releases
  (AIXA); CATL press releases, Electrek, FuelCellsWorks, RenewablesNow
  (HCCD); Santander press release, Federal Reserve, Banking Dive, Yahoo
  Finance (SAN); Yahoo Finance, PitchBook, Hyundai Motor Group and Boston
  Dynamics investor/press releases, Korea Herald (012330.KS); Cleary
  Gottlieb, Yahoo Finance UK, GOV.UK CMA case listing, railway-news.com,
  Business Travel News Europe (TRNl); 24/7 Wall St., TIKR, Pomerantz LLP
  investigation notice (URNU); CNBC, Investing.com,
  Amazon Q2 2026 earnings release (AMZN); CNBC, Forbes, Yahoo Finance
  (ORCL, 24 Sep 2026); The Block, NPR, CNBC, CoinDesk (PURR).
]

#set page(background: {
  place(top + left, image("../../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
})
// ---- 9. CURRENT HOLDINGS & POSITIONING (light) -------------------
#pagebreak()
= Current Holdings & Positioning

#portfolio-table(
  (
    (
      name: "AI & SEMIS", nav: "13.06%", ret: "-7.16%",
      positions: (
        (symbol: "AIXA", name: "Aixtron SE",               isin: "DE000A0WMPJ6", nav: "6.49%", ret: "-15.99%"),
        (symbol: "ORCL", name: "Oracle Corporation",       isin: "US68389X1054", nav: "3.98%", ret: "-3.14%"),
        (symbol: "SMH",  name: "VanEck Semiconductor ETF", isin: "IE00BMC38736", nav: "2.59%", ret: "+8.74%"),
      ),
    ),
    (
      name: "COMMODITIES", nav: "16.03%", ret: "-3.85%",
      positions: (
        (symbol: "SGBS",  name: "WisdomTree Physical Swiss Gold", isin: "JE00B588CD74", nav: "11.27%", ret: "-6.02%"),
        (symbol: "COPAl", name: "WisdomTree Copper",               isin: "GB00B15KXQ89", nav: "4.76%",  ret: "+1.29%"),
      ),
    ),
    (
      name: "EU SOVEREIGNTY", nav: "5.95%", ret: "-3.21%",
      positions: (
        (symbol: "WDEF", name: "WisdomTree Europe Defence UCITS ETF", isin: "IE0002Y8CX98", nav: "5.95%", ret: "-3.21%"),
      ),
    ),
    (
      name: "ELECTRIFICATION", nav: "9.04%", ret: "-12.88%",
      positions: (
        (symbol: "URNU", name: "Global X Uranium UCITS USD-A",         isin: "IE000NDWFGA5", nav: "3.13%", ret: "-17.87%"),
        (symbol: "HCCD", name: "Contemporary Amperex Technology (SDR)", isin: "SGXE51956733", nav: "2.99%", ret: "-8.10%"),
        (symbol: "XLUS", name: "Invesco US Utilities S&P",              isin: "IE00B3VPKB53", nav: "2.91%", ret: "-12.40%"),
      ),
    ),
    (
      name: "FINANCIALS", nav: "8.48%", ret: "+2.17%",
      positions: (
        (symbol: "SAN", name: "Banco Santander SA", isin: "ES0113900J37", nav: "8.48%", ret: "+2.17%"),
      ),
    ),
    (
      name: "FINTECH", nav: "6.76%", ret: "-6.00%",
      positions: (
        (symbol: "MELI", name: "MercadoLibre, Inc.",             isin: "US58733R1023", nav: "4.69%", ret: "-6.00%"),
        (symbol: "NU",   name: "Nu Holdings Ltd/Cayman Isl-A",   isin: "KYG6683N1034", nav: "2.06%", ret: "-6.01%"),
      ),
    ),
    (
      name: "OPTIONALITY", nav: "7.19%", ret: "+16.10%",
      positions: (
        (symbol: "PURR", name: "Hyperliquid Strategies", isin: "US44916Y1064", nav: "7.19%", ret: "+16.10%"),
      ),
    ),
    (
      name: "ROBOTICS", nav: "8.38%", ret: "-12.47%",
      positions: (
        (symbol: "AMZN",      name: "Amazon.com, Inc.",     isin: "US0231351067", nav: "4.67%", ret: "-3.28%"),
        (symbol: "012330.KS", name: "Hyundai Mobis Co Ltd", isin: "KR7012330007", nav: "3.70%", ret: "-24.07%"),
      ),
    ),
    (
      name: "CASH", nav: "25.12%", ret: "+1.01%",
      positions: (
        (symbol: "CASH", name: "Cash & Equivalents", isin: "", nav: "25.12%", ret: "+1.01%"),
      ),
    ),
  ),
)

#v(12pt)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0pt,
  figure(image("../../assets/2026-Q3/charts/weights_by_position.png", width: 100%), caption: [Positions Weighting]),
  figure(image("../../assets/2026-Q3/charts/weights_by_theme.png",    width: 100%), caption: [Themes Weighting]),
  figure(image("../../assets/2026-Q3/charts/weights_by_class.png",    width: 100%), caption: [Asset Class Weighting]),
)

// ---- 10. OUTLOOK (light) ------------------------------------------
#pagebreak()
#set page(background: none)
= Outlook

== Our View for Q4 2026

Four macro threads dominate our Q4 view: the US yield curve, the Iran
conflict, Russian aggression on NATO's eastern flank, and the crypto rally.

- *Yield curve:* the 2s10s spread has narrowed to roughly 26bp (2Y ~4.75%,
  10Y just above 5%) even as the Fed leaves the door open to one more hike.
  We're watching for a re-inversion (a recession signal).
- *Iran:* continued US strikes on IRGC targets and attacks on Strait of
  Hormuz shipping keep an oil-and-inflation risk live into Q4. Any
  escalation may mean that the ECB and Fed will have to maintain higher
  rates for longer, a risk for aggregate demand.
- *Russia / Europe:* repeated drone incursions into NATO airspace (Poland,
  Lithuania, Romania) through Q3 support the case for a continued European
  defence build-out. EU defence spending is already projected at €454bn for
  2026 (up from €418bn in 2025, ~2.4% of GDP) and climbing toward €547bn by
  2029.
- *Crypto:* the rally is running on US regulatory clarity (CFTC rulemaking,
  the SEC's tokenization exemption) as much as risk appetite; see Notable
  News for the Clarity Act/PURR detail. If a formal, CFTC-sanctioned path
  for Hyperliquid lands in Q4, it's a catalyst for our PURR position
  specifically.

== Positioning

- *Cash:* at 25.1% of NAV, cash is our largest single position by far. We
  are holding large amounts of cash to act on events and move quickly and
  decisively to take advantage of positioning opportunities.
- *Rate exposure:* XLUS (US utilities) is rate-sensitive and compresses if
  long yields keep rising.
- *Gold:* our gold position (SGBS) is a defensive holding to control
  overall portfolio volatility, and a safe-haven position if the Iran
  conflict escalates further.
- *Defence:* WDEF (Europe Defence UCITS ETF) is our direct read on the
  Russia/NATO thread; continued incursions and multi-year EU defence
  spending being in place support staying long here into Q4.
- *Crypto / Optionality:* PURR remains our highest-conviction,
  highest-volatility position; see Notable News for the quarter's specific
  regulatory developments.
- *AI & Semis:* AIXA and SMH were the quarter's weakest theme after
  September's momentum crack in AI-linked chip names. We are waiting for
  profits to realise from the backlogs, and will see how the situation
  develops; it is too early to make a definitive sell.
- *Neocloud -- Oracle:* Oracle funded roughly \$43bn of its \$56bn FY2026
  capex with debt, and its bonds have drifted 60-80bps wider with the
  equity down sharply since September as investors weigh the scale of its
  AI buildout and its heavy reliance on OpenAI. We are aware of high
  levels of debt, but are positioning to make a contrarian play.

== Key Risks & Opportunities
- Iran escalation spilling into a sustained oil-price shock, reviving
  inflation just as the Fed and ECB were signalling a pause.
- Russia testing NATO's Article 5 threshold directly rather than via
  drones/proxies, a tail risk beyond the defence-spending trade.
- AI capex/profit gap: if Q4 earnings don't validate the "profits are
  coming" thesis, AI & Semis has further downside.
- Oracle/neocloud credit risk: if bond spreads keep widening toward a
  ratings downgrade rather than stabilising, our contrarian entry thesis
  is wrong and the debt concern is the real story, not overdone sentiment.
- Crypto regulatory path still runs through the CFTC/SEC rather than
  Congress; if the administrative track stalls too, the Hyperliquid
  US-legalisation catalyst for PURR would need reassessing.
- Opportunity: a genuine (non-Fed-driven) yield-curve steepening has
  historically favoured financials and cyclicals.

#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  Sources: centralbank.watch / Treasury yield curve data (18 Sep 2026); The
  Block, NPR, CNBC, CoinDesk (crypto/Clarity Act, Sep 2026); France 24, Al
  Jazeera, ABC News (NATO incursions, Sep 2026); European Defence Agency
  Defence Data 2025-2026 report (Jul 2026); Bloomberg, CNBC (AI slowdown,
  Sep 2026); Oracle SEC filings and investor relations, FinanceFeeds (Oracle
  debt/capex, 2026).
]

// ---- 11. APPENDIX (light + dark final page) -----------------------
#set page(background: {
  place(top + left, image("../../assets/background.svg", width: 100%, height: 100%, fit: "cover"))
})
#pagebreak()
= Appendix

== Q3 Trade Record

#data-table(
  (auto, auto, auto, auto, auto, auto, auto),
  ("Date", "Symbol", "Side", "Qty", "NAV Added", [Votes#footnote[In favour / abstain / against]], "Commission"),
  "2026-07-16", "MELI",      "BUY",  "0.0919",   "2.36%", "9 / 0 / 0",  "-\u{0024}1.00",
  "2026-07-20", "XLUS",      "BUY",  "0.2596",   "2.37%", "7 / 2 / 0",  "-\u{0024}1.70",
  "2026-08-10", "AIXA",      "BUY",  "3.6407",   "2.41%", "9 / 0 / 0",  "-€3.00",
  "2026-08-19", "PURR",      "BUY",  "18.9286",  "2.41%", "6 / 6 / 0",  "-\u{0024}1.00",
  "2026-08-24", "SGBS",      "BUY",  "1.0000",   "6.18%", "10 / 1 / 0", "-\u{0024}4.00",
  "2026-08-25", "012330.KS", "BUY",  "1.0000",   "4.80%", "5 / 4 / 0",  "-₩4,000.00",
  "2026-08-27", "WDEF",      "BUY",  "6.0000",   "3.18%", "9 / 1 / 0",  "-€3.00",
  "2026-08-27", "URNU",      "BUY",  "7.2733",   "2.98%", "9 / 1 / 0",  "-\u{0024}4.00",
  "2026-08-27", "SAN",       "BUY",  "22.0000",  "4.41%", "9 / 1 / 0",  "-€3.00",
  "2026-08-27", "PURR",      "BUY",  "11.0701",  "2.07%", "6 / 6 / 0",  "-\u{0024}1.00",
  "2026-08-27", "MELI",      "BUY",  "0.0976",   "2.62%", "9 / 0 / 0",  "-\u{0024}1.00",
  "2026-08-27", "COPAl",     "BUY",  "3.0000",   "2.39%", "9 / 1 / 0",  "-\u{0024}4.00",
  "2026-08-27", "AMZN",      "BUY",  "1.3619",   "4.81%", "7 / 3 / 0",  "-\u{0024}1.00",
  "2026-08-31", "AIXA",      "BUY",  "5.0000",   "2.90%", "9 / 0 / 0",  "-€3.00",
  "2026-08-31", "NU",        "BUY",  "11.0000",  "2.19%", "7 / 0 / 1",  "-\u{0024}1.00",
  "2026-08-31", "ESIF",      "SELL", "6.2475",   "1.66%", "9 / 1 / 0",  "-€3.00",
  "2026-09-01", "SAN",       "BUY",  "12.0000",  "2.41%", "9 / 1 / 0",  "-€3.00",
  "2026-09-02", "TRNl",     "SELL", "15.9574",  "0.48%", "9 / 1 / 0",  "-£4.00",
  "2026-09-08", "HCCD",      "BUY",  "100.0000", "3.24%", "5 / 4 / 0",  "-S\u{0024}2.50",
  "2026-09-21", "SGBS",      "BUY",  "1.0000",   "5.77%", "6 / 1 / 0",  "-\u{0024}4.00",
  "2026-09-21", "ORCL",      "BUY",  "2.0000",   "4.09%", "7 / 0 / 0",  "-\u{0024}1.00",
)

#v(4pt)
#text(size: 7.5pt, fill: brand.muted, style: "italic")[
  NAV Added is each trade's value as a % of current portfolio NAV (€6,345,
  18 Sep 2026), converted to EUR at approximate Sep 2026 spot FX rates (not
  trade-date rates) for non-EUR trades.
]

#v(10pt)
== Glossary

#data-table(
  (auto, 1fr),
  ("Term", "Definition"),
  "AUM",        "Assets Under Management -- the total market value of the portfolio.",
  "NAV",        "Net Asset Value -- AUM per unit, or a position's share of total AUM.",
  "VaR",        "Value at Risk -- estimated maximum loss over a given horizon at a given confidence level.",
  "Drawdown",   "Peak-to-trough decline in portfolio value.",
  "Sharpe Ratio", "Excess return per unit of total volatility.",
  "Turnover",   "Share of the portfolio bought or sold during the period.",
  "Barra Factor", "A multi-factor risk model used to decompose returns into style factor exposures.",
)

// ---- FINAL PAGE: DISCLOSURES + IMPRINT (dark) ----------------------
#pagebreak()
#dark-page(logo: image("../../assets/logo-white.png", width: 3.5cm))[
  == Disclosures

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

  == Imprint

  #v(4pt)
  #grid(
    columns: (90pt, 1fr),
    row-gutter: 5pt,
    column-gutter: 14pt,
    text(fill: brand.dim, weight: "bold", size: 8pt)[Publisher],
    [Aachen Investment Club e.V. \ Pontwall 3 · 52062 Aachen · Deutschland],

    [#v(4pt)], [],

    text(fill: brand.dim, weight: "bold", size: 8pt)[Register],
    [Amtsgericht Aachen · VR 6216 · Hauptsitz Aachen],

    [#v(4pt)], [],

    text(fill: brand.dim, weight: "bold", size: 8pt)[Responsible],
    [Nicolas Wellers (Portfolio Manager)],

    text(fill: brand.dim, weight: "bold", size: 8pt)[Contact],
    [nicolas.wellers\@aic.rwth-aachen.de],

    [#v(4pt)], [],

    text(fill: brand.dim, weight: "bold", size: 8pt)[Published],
    [1 October 2026 · © 2026 Aachen Investment Club e.V.],
  )
]
