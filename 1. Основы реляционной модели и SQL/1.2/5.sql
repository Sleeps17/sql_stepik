select title, author, amout,
ROUND(0.7*price, 2) as new_price 
from book;