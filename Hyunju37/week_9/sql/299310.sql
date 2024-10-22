SELECT 
    YEAR(e.differentiation_date) AS year,
    max_colony.max_size - e.size_of_colony AS year_dev,
    e.id
FROM ecoli_data e
JOIN (
    SELECT 
        YEAR(differentiation_date) AS year,
        MAX(size_of_colony) AS max_size
    FROM 
        ecoli_data
    GROUP BY YEAR(differentiation_date)
) AS max_colony ON YEAR(e.differentiation_date) = max_colony.year
ORDER BY 
    year ASC,
    year_dev ASC;