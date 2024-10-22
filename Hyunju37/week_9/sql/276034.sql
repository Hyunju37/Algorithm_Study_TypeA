SELECT DISTINCT
    d.id,
    d.email, 
    d.first_name,
    d.last_name
FROM 
    developers d
JOIN 
    skillcodes s ON s.name in ('Python', 'C#')
WHERE d.skill_code & s.code = s.code
ORDER BY d.id ASC;