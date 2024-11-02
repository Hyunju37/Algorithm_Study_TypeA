SELECT
    car_id,
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM car_rental_company_rental_history AS h2
            WHERE h1.car_id = h2.car_id
                AND start_date <= '2022-10-16'
                AND end_date >= '2022-10-16'
        ) THEN '대여중'
        ELSE '대여 가능'
    END AS 'availability'
FROM car_rental_company_rental_history h1
GROUP BY car_id
ORDER BY car_id DESC;