SELECT 
    COUNT(*) AS fish_count,
    n.fish_name AS fish_name
FROM fish_info i
INNER JOIN 
    fish_name_info n ON i.fish_type = n.fish_type
GROUP BY 
    i.fish_type, 
    n.fish_name
ORDER BY fish_count DESC;