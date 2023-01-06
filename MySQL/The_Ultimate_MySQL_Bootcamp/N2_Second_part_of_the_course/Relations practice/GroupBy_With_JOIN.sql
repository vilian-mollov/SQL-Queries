USE shop_exercise;

SELECT first_name, last_name, SUM(amount) AS total, COUNT(*) AS order_count FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name
ORDER BY total DESC;


SELECT customers.id AS customers_id, first_name, SUM(amount) AS total, COUNT(*) AS order_count FROM customers
INNER JOIN orders ON orders.customer_id = customers.id
GROUP BY customers.id
ORDER BY order_count DESC, total ASC;
