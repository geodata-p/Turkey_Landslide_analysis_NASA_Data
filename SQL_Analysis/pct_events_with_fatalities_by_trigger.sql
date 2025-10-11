-- % of events with ≥1 fatality by trigger
SELECT
    landslide_trigger,
    COUNT(*) AS total_events,
    SUM(CASE WHEN fatality_count >= 1 THEN 1 ELSE 0 END) AS events_with_fatalities,
    ROUND(100.0 * SUM(CASE WHEN fatality_count >= 1 THEN 1 ELSE 0 END) / COUNT(*), 1) AS pct_events_with_fatalities
FROM landslides_tr
GROUP BY landslide_trigger
ORDER BY pct_events_with_fatalities DESC;
