SELECT 
    animal_id, 
    name
FROM animal_ins
WHERE 1 = 1
    AND UPPER(name) LIKE '%EL%'
    AND animal_type = 'Dog'
ORDER BY name ASC;