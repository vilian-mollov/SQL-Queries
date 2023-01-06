USE shop_exercise;

-- using left join
SELECT * FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

-- Using this query to find customers with no orders made
SELECT * FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id
WHERE orders.id IS NULL;
