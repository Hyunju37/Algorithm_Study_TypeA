SELECT
    o1.user_id,
    o1.product_id
FROM online_sale o1
INNER JOIN
    online_sale o2 ON o1.product_id = o2.product_id 
    AND o1.user_id = o2.user_id 
    AND o1.online_sale_id != o2.online_sale_id
GROUP BY
    o1.user_id,
    o1.product_id
ORDER BY 
    o1.user_id ASC,
    o1.product_id DESC;