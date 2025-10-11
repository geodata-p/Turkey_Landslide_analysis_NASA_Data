-- Average fatalities per event by trigger
SELECT
    landslide_trigger,
    COUNT(*)                          AS events,
    SUM(fatality_count)               AS total_fatalities,
    ROUND(AVG(fatality_count), 2)     AS avg_fatalities_per_event
FROM landslides_tr
WHERE landslide_trigger IS NOT NULL
  AND TRIM(landslide_trigger) <> ''
GROUP BY landslide_trigger
ORDER BY avg_fatalities_per_event DESC;
