CREATE TABLE ordering AS
SELECT author, title, (
    SELECT ROUNG(AVG(amount))
    FROM book
) AS amount
FROM book
WHERE amount < (
    SELECT ROUND(AVG(amount))
    FROM book
)