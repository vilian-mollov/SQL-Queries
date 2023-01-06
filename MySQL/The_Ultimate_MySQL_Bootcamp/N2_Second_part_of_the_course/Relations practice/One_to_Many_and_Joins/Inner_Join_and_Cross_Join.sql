USE shop_exercise;

-- some basic selection without joins
SELECT * FROM orders WHERE customer_id = (SELECT id FROM customers WHERE first_name = 'Boy');

-- Cross JOIN
SELECT * FROM customers, orders;


-- Inner JOINTS
SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON orders.customer_id = customers.id;

SELECT * FROM customers
INNER JOIN orders ON orders.customer_id = customers.id;

