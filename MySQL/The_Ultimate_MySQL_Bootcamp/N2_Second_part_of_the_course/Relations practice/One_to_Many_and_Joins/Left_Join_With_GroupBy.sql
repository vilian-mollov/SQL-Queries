USE shop_exercise;

SELECT first_name, last_name, SUM(amount) AS total FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
WHERE customer_id IS NOT NULL
GROUP BY orders.customer_id; 

SELECT first_name, last_name, IFNULL(SUM(amount),0) AS money_spend FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name;
