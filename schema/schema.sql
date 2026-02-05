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
 
 -- Retrive all customer  and sort the result by the highest score first
 
 SELECT * FROM CUSTOMER ORDER BY SCORE DESC;
 -- Retrive all customer  and sort the result by the country and then by the highest score first
 
 SELECT * FROM CUSTOMER ORDER BY  SCORE DESC, COUNTRY ASC;
 
 -- Find the total score for each country
 
SELECT COUNTRY, SUM(SCORE) AS TOTAL_SCORE  FROM CUSTOMER GROUP BY COUNTRY ;

-- Find the total score for each country and the total number of  customers for each country
SELECT COUNTRY,SUM(SCORE) AS TOTAL_SCORE , COUNT(id) AS TOTAL_CUSTOMERS  FROM CUSTOMER GROUP BY COUNTRY;

/* find the average score for each country
 considering only customers with a score not equal to 0 and 
return only those countries with an average score greater then 430  */
 SELECT COUNTRY,
 AVG(SCORE) AS AVG_SCORE 
 FROM CUSTOMER 
 WHERE SCORE != 0
 GROUP BY COUNTRY  
 HAVING AVG(SCORE) > 80;
 ;


-- Return unique list for All countries
SELECT
   COUNTRY FROM 
  CUSTOMER;

