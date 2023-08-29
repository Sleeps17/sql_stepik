SELECT name, city, date_first, per_diem * (DATEDIFF(date_last, date_first) + 1) AS Сумма
FROM trip
WHERE YEAR(date_first)=2020 AND (MONTH(date_first) = 2 OR MONTH(date_first) = 3)
ORDER BY name, сумма DESC