USE exercise;

CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT unique_name_address UNIQUE (name , address)
);


INSERT INTO companies(name, address) VALUES ('Luigis pies', 'Baker Street 221b');
-- no problem because diffrent name 
INSERT INTO companies(name, address) VALUES ('Holmes', 'Baker Street 221b');
-- here should throw error: Error Code: 1062. Duplicate entry 'Holmes-Baker Street 221b' for key 'companies.unique_name_address'
INSERT INTO companies(name, address) VALUES ('Holmes', 'Baker Street 221b');


CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT salePrice_greatherThan_purchasePrice CHECK(sale_price > purchase_price)
);

-- OK
INSERT INTO houses(purchase_price, sale_price) VALUES (500, 1500);

-- Error Code: 3819. Check constraint 'salePrice_greatherThan_purchasePrice' is violated.
INSERT INTO houses(purchase_price, sale_price) VALUES (50000, 1500);


 