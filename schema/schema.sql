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

