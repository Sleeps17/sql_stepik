SELECT author, title, price
FROM book
WHERE price - (SELECT MIN(price) FROM book) >= 0 AND price - (SELECT MIN(price) FROM book) <= 150
ORDER BY price ASC;