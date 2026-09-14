CREATE DATABASE Data_Transformer;
USE Data_Transformer;

-- ================= CUSTOMERS =================

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE
);

INSERT INTO Customers VALUES
(1,'James','Anderson',' james@gmail.com ','2025-01-05'),
(2,'Emily','Johnson','emily@gmail.com','2025-01-08'),
(3,'Michael','Williams','michael@gmail.com','2025-01-12'),
(4,'Olivia','Brown','olivia@gmail.com','2025-01-15'),
(5,'William','Jones','william@gmail.com','2025-01-20');

-- Display customers
SELECT * FROM Customers;

-- TRIM extra spaces
SELECT CustomerID, TRIM(Email) AS CleanEmail
FROM Customers;


-- ================= ORDERS =================

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1,1,'2025-01-10',125.50),
(2,2,'2025-01-12',89.99),
(3,3,'2025-01-15',245.75),
(4,4,'2025-01-18',350.40),
(5,5,'2025-01-22',310.25);

SELECT * FROM Orders;

-- 1. INNER JOIN
SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 2. LEFT JOIN
SELECT Customers.CustomerID, FirstName, LastName,
       Orders.OrderID, OrderDate, TotalAmount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 3. RIGHT JOIN
SELECT Customers.CustomerID, FirstName, LastName,
       Orders.OrderID, OrderDate, TotalAmount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 4. FULL OUTER JOIN using UNION
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT *
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

-- 5. Customers with orders above average
SELECT *
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM Orders)
);

-- 6. Extract year and month
SELECT OrderID, OrderDate,
       YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth
FROM Orders;

-- 7. Difference between order date and current date
SELECT OrderID, OrderDate,
       CURRENT_DATE() AS CurrentDate,
       DATEDIFF(CURRENT_DATE(),OrderDate) AS DaysDifference
FROM Orders;

-- 8. Format date
SELECT OrderID,
       DATE_FORMAT(OrderDate,'%d-%b-%Y') AS FormattedDate
FROM Orders;

-- 9. Running total
SELECT OrderID, OrderDate, TotalAmount,
       SUM(TotalAmount) OVER
       (ORDER BY OrderDate, OrderID) AS RunningTotal
FROM Orders;

-- 10. Rank orders
SELECT OrderID, CustomerID, TotalAmount,
       RANK() OVER
       (ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders;

-- 11. Discount using CASE
SELECT OrderID, TotalAmount,
       CASE
           WHEN TotalAmount > 300 THEN '10% OFF'
           WHEN TotalAmount > 100 THEN '5% OFF'
           ELSE 'No Discount'
       END AS Discount
FROM Orders;


-- ================= EMPLOYEES =================

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);

INSERT INTO Employees VALUES
(1,'James','Anderson','Sales','2020-01-15',58000),
(2,'Emily','Johnson','Marketing','2021-03-22',62000),
(3,'Michael','Williams','IT','2019-07-10',78000),
(4,'Olivia','Brown','HR','2022-02-18',65000),
(5,'William','Jones','Finance','2018-11-05',82000);

SELECT * FROM Employees;

-- 12. Employees earning above average
SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);

-- 13. Concatenate first and last name
SELECT EmployeeID,
       CONCAT(FirstName,' ',LastName) AS FullName
FROM Employees;

-- 14. Replace name
SELECT FirstName,
       REPLACE(FirstName,'James','Jonathan') AS UpdatedName
FROM Employees;

-- 15. Uppercase and lowercase
SELECT EmployeeID,
       UPPER(FirstName) AS FirstName,
       LOWER(LastName) AS LastName
FROM Employees;

-- 16. Salary category
SELECT EmployeeID, FirstName, LastName, Salary,
       CASE
           WHEN Salary > 80000 THEN 'High'
           WHEN Salary >= 60000 THEN 'Medium'
           ELSE 'Low'
       END AS SalaryCategory
FROM Employees;