USE exercise;

DESC houses;

-- OK
INSERT INTO houses(purchase_price, sale_price) VALUES (200,522);

ALTER TABLE houses
ADD CONSTRAINT positive_purchase_price CHECK(purchase_price >= 0);

-- should throw error positive_purchase_price violated
INSERT INTO houses(purchase_price, sale_price) VALUES (-2,522);


SELECT * FROM houses;


ALTER TABLE houses
DROP CONSTRAINT positive_purchase_price;

-- OK
INSERT INTO houses(purchase_price, sale_price) VALUES (-2,522);

SELECT * FROM houses;
