WITH prov_stats AS (
  SELECT
    admin_division_name AS province,
    COUNT(event_date) AS events,
    SUM(COALESCE(fatality_count, 0)) AS fatalities
  FROM landslides_tr
  WHERE TRIM(admin_division_name) <> ''     -- drop empty province names
  GROUP BY admin_division_name
),
prov_top AS (
  SELECT
    province,
    events,
    ROUND(fatalities / events, 2) AS fatalities_per_event
  FROM prov_stats
  ORDER BY events DESC
  LIMIT 12                                   -- same as .head(12)
)
SELECT *
FROM prov_top
ORDER BY events DESC;
