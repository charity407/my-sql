git clone https://github.com/PLP-Database-Design/wk-2a-charity407.git
-- question1Write an SQL query to retrieve the checkNumber, paymentDate, and amount from the payments table.
--create TABLE
CREATE salesDB;

USE salesDB;

CREATE TABLE payments (
    checkNumber VARCHAR(50) PRIMARY KEY AUTO_INCREMENT,
    paymentDate DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL
);

--insert some data in the table
INSERT INTO payments (checkNumber, paymentDate, amount)
VALUES
('CHK001', '2025-03-01', 1500.50),
('CHK002', '2025-03-05', 2000.75),
('CHK003', '2025-03-10', 500.25);)

--retrieve the checkNumber,paymentDate and amount
SELECT checkNumber, paymentDate, amount FROM payments;


--QUESTION 2 ;Write an SQL query to retrieve the orderDate, requiredDate, and status of orders that are currently 'In Process' from the orders table. Sort the results in descending order of orderDate
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In process'
ORDER BY orderDate DESC;

--QUESTION3 ;
--Write a query to display the firstName, lastName, and email of employees whose job title is 'Sales Rep' and order them in descending order of employeeNumber.
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

--QUESTION4 ;Write a query to retrieve all the columns and records from the offices table.

SELECT * FROM offices;

--QUESTION 5;Write a query to fetch the productName and quantityInStock from the products table. Sort the results in ascending order of buyPrice and limit the output to 5 records.
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
git COMMIT
git push
