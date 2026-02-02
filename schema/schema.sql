create database sameer_db;
use sameer_Db;

create table customer(
id INT AUTO_INCREMENT PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL,
  country VARCHAR(100),
  score INT
);
Select  * from  customer;
SHOW TABLES;
DESCRIBE CUSTOMER;
iNSERT INTO CUSTOMER (FIRSTNAME, COUNTRY, SCORE)
 VALUES
('Sameer', 'India', 92),
('Aman', 'USA', 85),
('Rahul', 'India', 78);

-- Retrive All customer		
SELECT * FROM CUSTOMER;

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE,
  sales DECIMAL(10,2),
  CONSTRAINT fk_customer
    FOREIGN KEY (customer_id)
    REFERENCES customer(id)
);

-- Retrive each customers name country score
SELECT  FIRSTNAME, COUNTRY, SCORE  FROM CUSTOMER;

-- Retrive customer with a score not equal to zero
SELECT * FROM  CUSTOMER WHERE  SCORE != 91;
-- Retrive  customer from  India
SELECT  * 
FROM CUSTOMER 
 WHERE COUNTRY = 'INDIA';


