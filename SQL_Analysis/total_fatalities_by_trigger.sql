-- Total fatalities by trigger
SELECT
    landslide_trigger,
    COUNT(*) AS events,
    SUM(fatality_count) AS total_fatalities
FROM landslides_tr
WHERE landslide_trigger IS NOT NULL
  AND TRIM(landslide_trigger) <> ''
GROUP BY landslide_trigger
ORDER BY total_fatalities DESC;
