<div align="center">

<!-- ========================================================= -->
<!--                    ANIMATED GREEN HEADER                  -->
<!-- ========================================================= -->

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:02110A,25:052E16,50:166534,75:16A34A,100:22C55E&height=300&section=header&text=DATA%20TRANSFORMER&fontSize=58&fontColor=FFFFFF&fontAlignY=40&desc=SQL%20%E2%80%A2%20Data%20Transformation%20%E2%80%A2%20Advanced%20Queries&descSize=20&descAlignY=62&animation=twinkling" width="100%">

<br>

# 🟢 DATA TRANSFORMER

### SQL • Data Transformation • Data Analysis

<br>

<img src="https://img.shields.io/badge/MYSQL-000000?style=for-the-badge&logo=mysql&logoColor=22C55E">
<img src="https://img.shields.io/badge/SQL-052E16?style=for-the-badge&logo=databricks&logoColor=22C55E">
<img src="https://img.shields.io/badge/DATA%20TRANSFORMATION-166534?style=for-the-badge">
<img src="https://img.shields.io/badge/DATA%20ANALYSIS-16A34A?style=for-the-badge">

<br>

<img src="https://img.shields.io/badge/RELATIONAL%20DATA-14532D?style=for-the-badge">
<img src="https://img.shields.io/badge/SQL%20JOINS-15803D?style=for-the-badge">
<img src="https://img.shields.io/badge/ADVANCED%20SQL-22C55E?style=for-the-badge">
<img src="https://img.shields.io/badge/STATUS-COMPLETED-16A34A?style=for-the-badge">

<br><br>

<img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=700&size=21&duration=2800&pause=700&color=22C55E&center=true&vCenter=true&width=800&lines=Transform+Raw+Data;Clean+Customer+Records;Join+Relational+Tables;Analyze+Business+Data;Master+Advanced+SQL;Turn+Data+Into+Insights" alt="Typing Animation">

</div>

---

# ✨ Project Overview

**Data Transformer** is a MySQL project focused on transforming, cleaning, joining and analyzing structured relational data.

The database is named `Data_Transformer` and contains three main data areas:

- 👥 `Customers`
- 🛒 `Orders`
- 👨‍💼 `Employees`

The project demonstrates practical SQL techniques including:

- 🧹 Data cleaning
- 🔗 Table joins
- 🔍 Subqueries
- 📅 Date functions
- 📊 Aggregate functions
- 📈 Window functions
- 🏆 Ranking
- 🧮 Running totals
- 🏷️ Conditional logic
- 🔤 String manipulation
- 🔠 Case conversion

---

# 📊 Project at a Glance

| Component | Details |
|---|---|
| 🗄️ Database | `Data_Transformer` |
| 👥 Customer Data | Customer information and registration dates |
| 🛒 Order Data | Orders, dates and total amounts |
| 👨‍💼 Employee Data | Employee information, departments and salaries |
| 🧹 Data Cleaning | `TRIM()` |
| 🔗 Joins | INNER, LEFT, RIGHT, FULL OUTER using UNION |
| 🔍 Subqueries | Nested `SELECT` statements |
| 📅 Date Functions | `YEAR()`, `MONTH()`, `CURRENT_DATE()`, `DATEDIFF()`, `DATE_FORMAT()` |
| 📈 Window Functions | `SUM() OVER`, `RANK() OVER` |
| 🏷️ Conditional Logic | `CASE` |
| 🔤 String Functions | `CONCAT()`, `REPLACE()`, `UPPER()`, `LOWER()` |

---

# 🏗️ Database Structure

```text
                    🟢 DATA TRANSFORMER
                           │
             ┌─────────────┼─────────────┐
             │             │             │
             ▼             ▼             ▼
      ┌────────────┐ ┌────────────┐ ┌─────────────┐
      │ 👥         │ │ 🛒         │ │ 👨‍💼        │
      │ CUSTOMERS  │ │ ORDERS     │ │ EMPLOYEES   │
      └─────┬──────┘ └─────┬──────┘ └─────────────┘
            │              │
            └────── JOIN ──┘
                   │
                   ▼
             📊 ANALYSIS
                   │
        ┌──────────┼──────────┐
        ▼          ▼          ▼
     🔗 JOINS   📅 DATES   📈 WINDOWS
        │          │          │
        └──────────┼──────────┘
                   ▼
             💡 INSIGHTS
```

---

# 🔗 Data Relationships

The Customers and Orders tables are connected through `CustomerID`, which is used in the JOIN operations throughout the project. :contentReference[oaicite:1]{index=1} :contentReference[oaicite:2]{index=2}

| Table | Related Table | Connection |
|---|---|---|
| 👥 Customers | 🛒 Orders | `CustomerID` |
| 🛒 Orders | 👥 Customers | `CustomerID` |

---

# 👥 Customers

## 📋 Table Structure

| Column | Data Type | Key |
|---|---|---|
| `CustomerID` | INT | 🔑 PRIMARY KEY |
| `FirstName` | VARCHAR(50) | — |
| `LastName` | VARCHAR(50) | — |
| `Email` | VARCHAR(100) | — |
| `RegistrationDate` | DATE | — |

The Customers table uses `CustomerID` as its primary key. :contentReference[oaicite:3]{index=3}

## 👤 Customer Records

| CustomerID | FirstName | LastName | Email | RegistrationDate |
|---:|---|---|---|---|
| 1 | James | Anderson | james@gmail.com | 2025-01-05 |
| 2 | Emily | Johnson | emily@gmail.com | 2025-01-08 |
| 3 | Michael | Williams | michael@gmail.com | 2025-01-12 |
| 4 | Olivia | Brown | olivia@gmail.com | 2025-01-15 |
| 5 | William | Jones | william@gmail.com | 2025-01-20 |

These records are inserted into the Customers table by the SQL script. :contentReference[oaicite:4]{index=4}

## 🔎 Display Customers

```sql
SELECT * FROM Customers;
```

### 📸 Screenshot 1 — Customer Data

<img width="576" height="171" alt="Screenshot 01" src="https://github.com/user-attachments/assets/096522f0-88b5-445b-a8d8-c1ae5da2e001" />


---

# 🧹 Data Cleaning

## ✨ Cleaning Email Values

The project uses `TRIM()` to remove extra spaces from email values.

```sql
SELECT CustomerID,
       TRIM(Email) AS CleanEmail
FROM Customers;
```

The original customer data contains an extra space around the first email value, making this query a practical example of cleaning text data. :contentReference[oaicite:5]{index=5} :contentReference[oaicite:6]{index=6}

### 📸 Screenshot 2 — Clean Email

<img width="302" height="151" alt="Screenshot 02" src="https://github.com/user-attachments/assets/c497e15a-a6fe-4c70-b2cc-a20dddc9bc83" />


---

# 🛒 Orders

## 📋 Table Structure

| Column | Data Type |
|---|---|
| `OrderID` | INT PRIMARY KEY |
| `CustomerID` | INT |
| `OrderDate` | DATE |
| `TotalAmount` | DECIMAL(10,2) |

:contentReference[oaicite:7]{index=7}

## 📦 Order Records

| OrderID | CustomerID | OrderDate | TotalAmount |
|---:|---:|---|---:|
| 1 | 1 | 2025-01-10 | 125.50 |
| 2 | 2 | 2025-01-12 | 89.99 |
| 3 | 3 | 2025-01-15 | 245.75 |
| 4 | 4 | 2025-01-18 | 350.40 |
| 5 | 5 | 2025-01-22 | 310.25 |

:contentReference[oaicite:8]{index=8}

---

# 🔗 SQL JOIN Operations

The project demonstrates four ways of combining customer and order data.

## 1️⃣ INNER JOIN

```sql
SELECT *
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

Returns records where the `CustomerID` exists in both tables. :contentReference[oaicite:9]{index=9}

### 📸 Screenshot 3 — Customer + Order JOIN

<img width="910" height="147" alt="Screenshot 03" src="https://github.com/user-attachments/assets/b543671e-cb84-4245-bc68-babf93d85274" />


---


## 2️⃣ LEFT JOIN

```sql
SELECT Customers.CustomerID,
       FirstName,
       LastName,
       Orders.OrderID,
       OrderDate,
       TotalAmount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

:contentReference[oaicite:10]{index=10}

---

## 3️⃣ RIGHT JOIN

```sql
SELECT Customers.CustomerID,
       FirstName,
       LastName,
       Orders.OrderID,
       OrderDate,
       TotalAmount
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

:contentReference[oaicite:11]{index=11}

---

## 4️⃣ FULL OUTER JOIN Using UNION

```sql
SELECT *
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT *
FROM Customers
RIGHT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;
```

The project uses `UNION` to combine LEFT JOIN and RIGHT JOIN results. :contentReference[oaicite:12]{index=12}

---

# 🔍 Advanced Filtering

## Customers With Orders Above Average

```sql
SELECT *
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE TotalAmount > (SELECT AVG(TotalAmount) FROM Orders)
);
```

This uses nested subqueries to compare order values against the average order amount. :contentReference[oaicite:13]{index=13}

---

# 📅 Date Transformation

## 🗓️ Extract Year and Month

```sql
SELECT OrderID,
       OrderDate,
       YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth
FROM Orders;
```

:contentReference[oaicite:14]{index=14}

---

## ⏳ Difference Between Order Date and Current Date

```sql
SELECT OrderID,
       OrderDate,
       CURRENT_DATE() AS CurrentDate,
       DATEDIFF(CURRENT_DATE(),OrderDate) AS DaysDifference
FROM Orders;
```

:contentReference[oaicite:15]{index=15}

---

## 📆 Format Order Dates

```sql
SELECT OrderID,
       DATE_FORMAT(OrderDate,'%d-%b-%Y') AS FormattedDate
FROM Orders;
```

:contentReference[oaicite:16]{index=16}

---

# 📈 Window Functions

## 💰 Running Total

```sql
SELECT OrderID,
       OrderDate,
       TotalAmount,
       SUM(TotalAmount) OVER
       (ORDER BY OrderDate, OrderID) AS RunningTotal
FROM Orders;
```

This calculates a cumulative order total based on order date and order ID. :contentReference[oaicite:17]{index=17}

---

## 🏆 Rank Orders

```sql
SELECT OrderID,
       CustomerID,
       TotalAmount,
       RANK() OVER
       (ORDER BY TotalAmount DESC) AS OrderRank
FROM Orders;
```

This ranks orders according to their total amount. :contentReference[oaicite:18]{index=18}

---

# 🏷️ Conditional Logic

## 💸 Discount Classification

```sql
SELECT OrderID,
       TotalAmount,
       CASE
           WHEN TotalAmount > 300 THEN '10% OFF'
           WHEN TotalAmount > 100 THEN '5% OFF'
           ELSE 'No Discount'
       END AS Discount
FROM Orders;
```

The `CASE` expression assigns discount categories based on order amount. :contentReference[oaicite:19]{index=19}

---

# 👨‍💼 Employees

## 📋 Table Structure

| Column | Data Type | Key |
|---|---|---|
| `EmployeeID` | INT | 🔑 PRIMARY KEY |
| `FirstName` | VARCHAR(50) | — |
| `LastName` | VARCHAR(50) | — |
| `Department` | VARCHAR(50) | — |
| `HireDate` | DATE | — |
| `Salary` | DECIMAL(10,2) | — |

:contentReference[oaicite:20]{index=20}

## 👥 Employee Records

| EmployeeID | FirstName | LastName | Department | HireDate | Salary |
|---:|---|---|---|---|---:|
| 1 | James | Anderson | Sales | 2020-01-15 | 58,000 |
| 2 | Emily | Johnson | Marketing | 2021-03-22 | 62,000 |
| 3 | Michael | Williams | IT | 2019-07-10 | 78,000 |
| 4 | Olivia | Brown | HR | 2022-02-18 | 65,000 |
| 5 | William | Jones | Finance | 2018-11-05 | 82,000 |

:contentReference[oaicite:21]{index=21}

---

# 📊 Employee Analysis

## 💰 Employees Earning Above Average

```sql
SELECT *
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees);
```

:contentReference[oaicite:22]{index=22}

---

# 🔤 String Transformation

## 👤 Concatenate First and Last Name

```sql
SELECT EmployeeID,
       CONCAT(FirstName,' ',LastName) AS FullName
FROM Employees;
```

:contentReference[oaicite:23]{index=23}

---

## ✏️ Replace a Name

```sql
SELECT FirstName,
       REPLACE(FirstName,'James','Jonathan') AS UpdatedName
FROM Employees;
```

:contentReference[oaicite:24]{index=24}

---

## 🔠 Uppercase and Lowercase

```sql
SELECT EmployeeID,
       UPPER(FirstName) AS FirstName,
       LOWER(LastName) AS LastName
FROM Employees;
```

:contentReference[oaicite:25]{index=25}

---

# 💵 Salary Categorization

```sql
SELECT EmployeeID,
       FirstName,
       LastName,
       Salary,
       CASE
           WHEN Salary > 80000 THEN 'High'
           WHEN Salary >= 60000 THEN 'Medium'
           ELSE 'Low'
       END AS SalaryCategory
FROM Employees;
```

The query categorizes employee salaries as **High**, **Medium**, or **Low**. :contentReference[oaicite:26]{index=26}

### 📸 Screenshot 4 — Salary Category

<img width="495" height="152" alt="Screenshot 04" src="https://github.com/user-attachments/assets/68459a95-4a75-4a9d-a4f0-58c5fa2eefa0" />


---

# 🧪 SQL Techniques Demonstrated

| Technique | SQL |
|---|---|
| 🧹 Data Cleaning | `TRIM()` |
| 🔗 Inner Join | `INNER JOIN` |
| ⬅️ Left Join | `LEFT JOIN` |
| ➡️ Right Join | `RIGHT JOIN` |
| 🔄 Full Join | `UNION` |
| 🔍 Subqueries | Nested `SELECT` |
| 📅 Year Extraction | `YEAR()` |
| 📅 Month Extraction | `MONTH()` |
| ⏳ Date Difference | `DATEDIFF()` |
| 📆 Date Formatting | `DATE_FORMAT()` |
| 📈 Running Total | `SUM() OVER()` |
| 🏆 Ranking | `RANK() OVER()` |
| 🏷️ Conditional Logic | `CASE` |
| 🔤 Concatenation | `CONCAT()` |
| ✏️ Replacement | `REPLACE()` |
| 🔠 Uppercase | `UPPER()` |
| 🔡 Lowercase | `LOWER()` |

---

# 🔄 Data Transformation Pipeline

```text
       🗃️ RAW DATA
            │
            ▼
       🧹 CLEAN DATA
            │
            ▼
       🔗 JOIN TABLES
            │
            ▼
       🔍 FILTER DATA
            │
            ▼
       📅 TRANSFORM DATES
            │
            ▼
       📈 APPLY WINDOWS
            │
            ▼
       🏷️ CLASSIFY DATA
            │
            ▼
       📊 ANALYZE RESULTS
            │
            ▼
       💡 DATA INSIGHTS
```

---

# 🧠 Key Concepts Learned

### 🧹 Data Cleaning

Using `TRIM()` to remove unwanted whitespace from text values.

### 🔗 Relational Joins

Working with:

```text
INNER JOIN
LEFT JOIN
RIGHT JOIN
UNION
```

### 🔍 Subqueries

Using nested queries for filtering and comparisons.

### 📅 Date Manipulation

Working with:

```text
YEAR()
MONTH()
CURRENT_DATE()
DATEDIFF()
DATE_FORMAT()
```

### 📈 Window Functions

Using:

```text
SUM() OVER()
RANK() OVER()
```

### 🏷️ Conditional Transformation

Using `CASE` to classify order discounts and employee salary levels.

### 🔤 Text Transformation

Using:

```text
TRIM()
CONCAT()
REPLACE()
UPPER()
LOWER()
```

---

# 🛠️ Technologies

<div align="center">

<img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white">

<img src="https://img.shields.io/badge/SQL-000000?style=for-the-badge&logo=databricks&logoColor=22C55E">

<img src="https://img.shields.io/badge/Data%20Transformation-166534?style=for-the-badge">

<img src="https://img.shields.io/badge/Data%20Analysis-16A34A?style=for-the-badge">

</div>

---

# 🎯 Project Objectives

- Create a structured MySQL database
- Store customer, order and employee information
- Clean raw data
- Transform text values
- Transform date values
- Combine related tables
- Perform advanced filtering
- Use nested subqueries
- Calculate running totals
- Rank records
- Apply conditional classifications
- Analyze employee salary data

---

# 📈 Skills Demonstrated

| Skill | Demonstrated |
|---|---|
| 🐬 MySQL | ⭐⭐⭐⭐⭐ |
| 🧠 SQL | ⭐⭐⭐⭐⭐ |
| 🧹 Data Cleaning | ⭐⭐⭐⭐ |
| 🔗 SQL Joins | ⭐⭐⭐⭐⭐ |
| 🔍 Subqueries | ⭐⭐⭐⭐ |
| 📅 Date Functions | ⭐⭐⭐⭐⭐ |
| 📈 Window Functions | ⭐⭐⭐⭐ |
| 🏷️ CASE Statements | ⭐⭐⭐⭐⭐ |
| 🔤 String Functions | ⭐⭐⭐⭐⭐ |
| 📊 Data Analysis | ⭐⭐⭐⭐ |

---

# 📁 Project Structure

```text
Data_Transformer/
│
├── Data Transformer(2).sql
├── README.md
│
└── assets/
    ├── customer-data.png
    ├── clean-email.png
    ├── customer-orders.png
    └── salary-category.png
```

---

# ▶️ How to Run

### 1️⃣ Install MySQL

Install MySQL and MySQL Workbench or another SQL client.

### 2️⃣ Open the SQL File

Open:

```text
Data Transformer(2).sql
```

### 3️⃣ Create the Database

```sql
CREATE DATABASE Data_Transformer;
USE Data_Transformer;
```

### 4️⃣ Execute the SQL Script

Run the SQL statements from beginning to end.

### 5️⃣ Explore the Results

Explore:

- 👥 Customer records
- 🧹 Clean email values
- 🛒 Orders
- 🔗 JOIN results
- 📅 Date transformations
- 📈 Running totals
- 🏆 Order rankings
- 💸 Discount classifications
- 👨‍💼 Employee records
- 💵 Salary categories

---

# 📸 Project Screenshots

<div align="center">

### 👥 Customer Data

<img width="576" height="171" alt="Screenshot 01" src="https://github.com/user-attachments/assets/9a0db438-f024-4e2c-97bb-5d5ffb914f6d" />


<br><br>

### 🧹 Clean Email

<img width="302" height="151" alt="Screenshot 02" src="https://github.com/user-attachments/assets/41045971-b27f-411c-a982-e0dd44169dfb" />


<br><br>

### 🔗 Customer + Order JOIN

<img width="910" height="147" alt="Screenshot 03" src="https://github.com/user-attachments/assets/ddb2d442-65d1-41a7-af87-072cae76d82d" />


<br><br>

### 👨‍💼 Employee Salary Category

<img width="495" height="152" alt="Screenshot 04" src="https://github.com/user-attachments/assets/b18a9a3a-24ac-4de7-91dd-c1c923d4eccf" />


</div>

---

# 🚀 Future Improvements

- 📊 Create interactive SQL dashboards
- 📈 Add more analytical queries
- 🔗 Add additional relational tables
- 🧮 Add advanced business metrics
- 📅 Add monthly and yearly analysis
- 👥 Add customer segmentation
- 📊 Connect results to Power BI
- 🤖 Automate data transformation workflows

---

# 🏁 Conclusion

**Data Transformer** demonstrates how SQL can be used to clean, transform, combine and analyze structured data.

The project covers data cleaning, relational joins, subqueries, date manipulation, window functions, ranking, conditional logic and string transformations.

It provides practical experience with MySQL and advanced SQL techniques for working with structured business data.

---

<div align="center">

# 🟢 DATA TRANSFORMER

### Transform • Analyze • Discover

<br>

<img src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=700&size=20&duration=3000&pause=800&color=22C55E&center=true&vCenter=true&width=750&lines=Clean+Data;Transform+Data;Join+Data;Analyze+Data;Discover+Insights" alt="Animated Footer">

<br><br>

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:22C55E,50:166534,100:02110A&height=130&section=footer&animation=twinkling" width="100%">

</div>
