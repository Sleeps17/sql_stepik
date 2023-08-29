UPDATE fine AS f, (
    SELECT name, number_plate, violation
    FROM fine
    GROUP BY name, number_plate, violation
    HAVING COUNT(*) >= 2
    ORDER BY name, number_plate, violation 
    ) AS t
SET f.sum_fine=f.sum_fine*2
WHERE f.date_payment IS NULL AND f.violation=t.violation AND f.number_plate=t.number_plate AND f.name=t.name