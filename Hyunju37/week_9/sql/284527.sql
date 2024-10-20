SELECT
    s.score,
    e.emp_no,
    e.emp_name,
    e.position,
    e.email
FROM hr_employees e
INNER JOIN (
    SELECT 
        emp_no,
        SUM(score) AS score
    FROM hr_grade
    WHERE half_year IN (1, 2)
    GROUP BY 
        emp_no, 
        year
    HAVING COUNT(DISTINCT half_year) = 2
    ORDER BY score DESC
    LIMIT 1
) s on e.emp_no = s.emp_no;
    