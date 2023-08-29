CREATE TABLE supply (
    supply_id INT PRIMARY KEY AUTOINCREMENT supply_id,
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
)