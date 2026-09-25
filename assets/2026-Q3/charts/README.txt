AIC Portfolio — Performance Report Export
Generated from the dashboard's Performance page.

Period                : 2026-07-01 to 2026-09-24
Holdings/theme snapshot as-of : 2026-09-24
Benchmarks             : S&P 500, MSCI World, MSCI Europe, 60/40 Balanced

FILES
-----
returns_index.png, returns_bar.png
    Index & daily-return charts for the selected period and benchmarks.

weights_by_position.png, weights_by_class.png, weights_by_theme.png
    Portfolio weight pies, as of the snapshot date.

daily_returns.csv
    One row per trading day, portfolio inception -> 2026-09-24.
    portfolio_return_pct is a TIME-WEIGHTED daily return: it tracks the
    fund's unit price (nav_history.fund_nav), which moves only with
    investment performance — deposits/withdrawals buy or redeem units at
    the prior day's unit price and never affect it. Safe to chain for
    QTD/YTD/trailing-12M/since-inception returns over any date range.

aum_and_flows.csv
    One row per day, portfolio inception -> 2026-09-24. aum_eur is end-of-day
    fund NAV; external_flow_eur is net deposits/withdrawals that day.
    Reconciliation: this fund's unit-price accounting applies a flow at
    the PRIOR day's unit price, so new capital participates in that
    day's return. The exact identity is therefore
        aum(t) = (aum(t-1) + external_flow_eur(t)) * (1 + portfolio_return_pct(t)/100)
    rather than aum(t-1)*(1+r) + flow(t) applied strictly after the
    day's return — the two differ only by flow(t) x return(t), which is
    negligible for realistic flow sizes.

theme_position_snapshot.csv
    One row per held position as of 2026-09-24, grouped by theme.
    period_return_pct is compounded from 2026-07-01; cumulative_return_pct
    is since the position's own inception (cost basis).

theme_attribution.csv
    Brinson-Fachler attribution by theme, 2026-07-01 -> 2026-09-24.
    SIMPLIFICATION: the tracked benchmarks have no native breakdown by
    this portfolio's themes, so benchmark_weight_pct is assumed equal
    to portfolio_weight_pct and each theme's benchmark return is
    assumed equal to the benchmark's total return. Both assumptions
    force allocation_effect_bps to 0 by construction (there's no data
    to measure it from); all measurable excess return per theme is
    reported as selection_effect_bps. Labelled approximation, not a
    true per-theme Brinson-Fachler split.
    CAVEAT: a cash-heavy theme's selection_effect_bps can be distorted
    if a currency balance was fully swept to zero and later refilled
    during the period (reads as a -100% day for that cash symbol, a
    pre-existing quirk of the underlying position data, not a real
    investment loss) — cross-check against theme_position_snapshot.csv.

trades.csv
    Trade log, 2026-07-01 -> 2026-09-24.

metrics.csv
    Risk/return metrics (Sharpe, Sortino, drawdown, VaR, etc.) for the
    portfolio over 2026-07-01 -> 2026-09-24, vs S&P 500 where applicable.
    Omitted if fewer than 5 trading days fall in range.

section5_returns_and_attribution.html
    Formatted "Section 5" report page: a Returns table (QTD / YTD /
    Trailing 12M / Since Inception, portfolio + each benchmark) and an
    Attribution table (selection vs. allocation by theme) per
    benchmark, both computed as of 2026-09-24. Built standalone — not yet
    wired into a larger numbered report or an Executive Summary; the
    file notes which figure (QTD portfolio return) is meant to feed
    that Executive Summary's return line once it exists. Same
    methodology and caveats as daily_returns.csv / theme_attribution.csv.
