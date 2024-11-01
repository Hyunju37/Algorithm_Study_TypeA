SELECT 
    DISTINCT h.car_id
FROM car_rental_company_rental_history h
JOIN 
    car_rental_company_car c ON c.car_id = h.car_id
WHERE c.car_type = '세단'
    AND h.start_date LIKE '2022-10%'
ORDER BY car_id DESC;