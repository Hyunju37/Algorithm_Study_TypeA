SELECT
    b.category,
    SUM(s.sales) AS total_sales
FROM book b
INNER JOIN 
    book_sales s ON b.book_id = s.book_id
WHERE s.sales_date like '2022-01%'
GROUP BY b.category
ORDER BY category ASC;