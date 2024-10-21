SELECT
    CONCAT(FLOOR(MONTH(differentiation_date) / 4) + 1, 'Q') AS quarter,
    COUNT(*) AS ecoli_count
FROM ecoli_data
GROUP BY quarter
ORDER BY quarter ASC;