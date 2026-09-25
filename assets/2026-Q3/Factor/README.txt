Barra Portfolio Report
Model run   : 20260925-164956-2bf9077f  (Factor model, W-FRI)
As of       : 2026-07-01
Positions   : 14 covered, 90.2% of NAV

FILES
-----
sector_exposures.png / .csv
    Style-factor Z-scores by GICS sector, as of the date
    above. A range averages each security's daily Z-score across every date
    in it before grouping by sector (same as the old Barra page's "Monthly"
    mode, generalised to any range). "Unclassified"/"Other" sectors (mostly
    ETFs — no native GICS sector) are excluded from the average.

portfolio_tilts.png / .csv
    The portfolio's weighted-average exposure (Z-score) to each style
    factor: exposure_matrix.T . weights, renormalised to the covered book
    (see capital.analytics.factors.risk.portfolio_exposure). Unlike the
    "Portfolio style exposures" chart on the Factor Screen tab, this is not
    cap-weighted-market-neutral and does not need the run's covariance
    matrix — it is the direct style tilt, same definition as the old
    (pre-refactor) Barra page.

position_exposures.png / .csv
    Style-factor Z-scores for each currently-held, model-covered position.

Read Factor Screen's Portfolio tab for the fuller risk decomposition
(volatility attribution, factor covariance) — this report covers only the
Barra-style tilt and sector view, both scoped to the "as of" date above.
