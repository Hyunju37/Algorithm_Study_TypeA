SELECT ROUND(AVG(GREATEST(COALESCE(LENGTH, 0), 10)), 2) AS AVERAGE_LENGTH
FROM FISH_INFO;
