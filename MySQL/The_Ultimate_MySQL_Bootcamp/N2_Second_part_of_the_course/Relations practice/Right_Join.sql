USE shop_exercise;

-- inset null in customer_id so the right table would have a diff value for our example
INSERT INTO orders (order_date, amount) VALUES (CURRENT_DATE(), 100);

-- right join example
SELECT  * FROM customers
RIGHT JOIN orders ON orders.customer_id = customers.id;

DELETE FROM orders WHERE customer_id IS NULL;
