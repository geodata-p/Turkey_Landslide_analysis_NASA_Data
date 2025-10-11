-- Average fatalities per event by month
SELECT
    MONTH(event_date) AS month_num,
    DATE_FORMAT(event_date, '%M') AS month_name,
    COUNT(*) AS events,
    SUM(fatality_count) AS fatalities,
    ROUND(SUM(fatality_count) / COUNT(*), 2) AS fatalities_per_event
FROM landslides_tr
GROUP BY month_num, month_name
ORDER BY month_num;

