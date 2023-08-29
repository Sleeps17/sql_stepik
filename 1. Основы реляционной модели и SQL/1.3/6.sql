SELECT ROUND(AVG(price), 2) AS Средняя_цена, ROUND(SUM(price), 2) AS Стоимость 
FROM book
HAVING SUM(amount) BETWEEN 5 AND 14;