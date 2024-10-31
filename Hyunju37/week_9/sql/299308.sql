SELECT
    CASE
        WHEN MONTH(differentiation_date) <= 3 THEN '1Q'
        WHEN MONTH(differentiation_date) <= 6 THEN '2Q'
        WHEN MONTH(differentiation_date) <= 9 THEN '3Q'
        ELSE '4Q'
    END AS quarter,
    COUNT(*) AS ecoli_count
FROM ecoli_data
GROUP BY quarter
ORDER BY quarter ASC;