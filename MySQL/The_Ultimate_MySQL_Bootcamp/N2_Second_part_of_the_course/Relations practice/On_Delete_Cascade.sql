USE shop_exercise;

-- Altering table so when deleting from customers also deletes every connected row in orders
ALTER TABLE orders 
  ADD CONSTRAINT fk_name 
  FOREIGN KEY (customer_id) 
  REFERENCES customers (id) 
  ON DELETE CASCADE;
  
  -- no problem with deletision
  DELETE FROM customers WHERE first_name = 'George';
  DELETE FROM customers WHERE last_name = 'George';
  
  SELECT * FROM orders;
  SELECT * FROM customers;
  