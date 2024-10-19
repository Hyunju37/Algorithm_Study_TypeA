SELECT
    i.ingredient_type AS ingredient_type,
    SUM(total_order) AS total_order
FROM first_half f
INNER JOIN
    icecream_info i ON f.flavor = i.flavor
GROUP BY i.ingredient_type
ORDER BY total_order ASC;