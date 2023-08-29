UPDATE book. supply
SET book.amount = supply.amount + book.amount, book.price = (book.price + supply.price)/2
WHERE book.author = supply.author AND book.title = supply.title 