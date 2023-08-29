UPDATE book
SET price = IF(buy=0, price*0.9, price), buy = LEAST(buy, amount);