-- Seasonality: Events per month (Jan–Dec)
SELECT
  MONTH(event_date) AS month_num,
  DATE_FORMAT(event_date, '%M') AS month_name,
  COUNT(*) AS events,
  ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM landslides_tr), 1) AS pct_of_total
FROM landslides_tr
GROUP BY month_num, month_name
ORDER BY month_num;

