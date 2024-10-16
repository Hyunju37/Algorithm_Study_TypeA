SELECT 
    name, 
    COUNT(*) AS count
FROM animal_ins
GROUP BY name
HAVING name IS NOT NULL AND count >= 2
ORDER BY name;