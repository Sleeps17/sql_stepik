SELECT city, COUNT(city) AS Количество
FROM trip
GROUP BY city
ORDER BY COUNT(city) DESC, city DESC
LIMIT 2
