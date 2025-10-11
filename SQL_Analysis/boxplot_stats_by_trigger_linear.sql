-- Boxplot stats per trigger (pandas/NumPy linear interpolation for Q1, Median, Q3)
WITH base AS (
  SELECT
    landslide_trigger,
    CAST(fatality_count AS DECIMAL(18,6)) AS x
  FROM landslides_tr
  WHERE landslide_trigger IS NOT NULL
    AND TRIM(landslide_trigger) <> ''
),
ord AS (
  SELECT
    landslide_trigger,
    x,
    ROW_NUMBER() OVER (PARTITION BY landslide_trigger ORDER BY x) AS rn,
    COUNT(*)    OVER (PARTITION BY landslide_trigger)            AS n
  FROM base
),
pos AS (
  SELECT
    landslide_trigger,
    x, rn, n,
    -- pandas/NumPy “linear” method: h = 1 + (n-1)*p
    (1 + (n-1)*0.25) AS h25,
    FLOOR(1 + (n-1)*0.25) AS j25,
    (1 + (n-1)*0.50) AS h50,
    FLOOR(1 + (n-1)*0.50) AS j50,
    (1 + (n-1)*0.75) AS h75,
    FLOOR(1 + (n-1)*0.75) AS j75
  FROM ord
),
interp AS (
  SELECT
    p.landslide_trigger,
    p.n,
    o.x,
    p.rn,
    -- Prepare the “next” value (x_{j+1}) within each trigger
    LEAD(o.x) OVER (PARTITION BY p.landslide_trigger ORDER BY p.rn) AS x_next,

    p.h25, p.j25,
    p.h50, p.j50,
    p.h75, p.j75
  FROM pos p
  JOIN ord o
    ON o.landslide_trigger = p.landslide_trigger
   AND o.rn = p.rn
),
qvals AS (
  SELECT
    landslide_trigger,
    n,
    -- Q1: if j == n, use x_j; else x_j + (h-j)*(x_{j+1}-x_j)
    MAX(
      CASE WHEN rn = j25
           THEN COALESCE(
                  x + (h25 - j25) * (COALESCE(x_next, x) - x),
                  x
                )
      END
    ) AS q1,

    -- Median (same interpolation)
    MAX(
      CASE WHEN rn = j50
           THEN COALESCE(
                  x + (h50 - j50) * (COALESCE(x_next, x) - x),
                  x
                )
      END
    ) AS median,

    -- Q3
    MAX(
      CASE WHEN rn = j75
           THEN COALESCE(
                  x + (h75 - j75) * (COALESCE(x_next, x) - x),
                  x
                )
      END
    ) AS q3
  FROM interp
  GROUP BY landslide_trigger, n
)
SELECT
  b.landslide_trigger,
  COUNT(*)                                 AS count,
  MIN(b.x)                                 AS min,
  ROUND(q.q1,     2)                       AS Q1,
  ROUND(q.median, 2)                       AS Median,
  ROUND(q.q3,     2)                       AS Q3,
  MAX(b.x)                                 AS max,
  ROUND(AVG(b.x), 2)                       AS mean,
  ROUND(STDDEV_SAMP(b.x), 2)               AS std
FROM base b
JOIN qvals q USING (landslide_trigger)
GROUP BY b.landslide_trigger, q.q1, q.median, q.q3
ORDER BY count DESC;
