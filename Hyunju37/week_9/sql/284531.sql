SELECT
    route,
    CONCAT(ROUND(MAX(d_cumulative) / 10, 1), 'km') AS total_distance,
    CONCAT(ROUND(AVG(d_between_dist), 2), 'km') AS average_distance
FROM subway_distance
GROUP BY route
ORDER BY total_distance DESC;