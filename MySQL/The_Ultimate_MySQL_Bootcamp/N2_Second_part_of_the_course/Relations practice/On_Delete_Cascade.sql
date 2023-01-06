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
  
  
  -- You can also specify that constrain when creating table 
  CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8 , 2 ),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id)
        ON DELETE CASCADE
);
  