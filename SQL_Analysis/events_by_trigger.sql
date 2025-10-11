-- Landslide events by trigger (all years)
SELECT
    landslide_trigger,
    COUNT(*) AS events
FROM landslides_tr
GROUP BY landslide_trigger
ORDER BY events DESC;
