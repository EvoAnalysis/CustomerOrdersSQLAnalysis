# Customer Orders SQL Analysis

## Project Overview

This project analyzes a simulated Customer Orders database using SQL. The goal is to answer key business questions and demonstrate core SQL skills.

## Database Structure

- Customers
    - CustomerID
    - CustomerName
    - Region
- Orders
    - OrderID
    - CustomerID
    - OrderDate
    - OrderAmount

## Business Questions & Queries

### 1️⃣ Top 5 Customers by Total Revenue

**SQL Query:**

```sql
SELECT
    Customers.CustomerName,
    '$' || SUM(Orders.OrderAmount) AS Total
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY Total DESC
LIMIT 5;
```

**Insights:**  
Isolated the company's top 5 highest spenders. This gives us the opportunity to gain insight on retention strategies to keep our customers happy.

---

### 2️⃣ Total Revenue in Q1 of 2024

**SQL Query:**

```sql
SELECT 
    '$' || SUM(Orders.OrderAmount) AS Q1_Total_Revenue
FROM Orders
WHERE OrderDate BETWEEN '2024-01-01' AND '2024-03-31';
```

**Insights:**  
Highlighted the company's total revenue made in Q1 2024, giving us a bar to surpass for Q1 2025.

---

### 3️⃣ Total Sales by Region

**SQL Query:**

```sql
SELECT
    Customers.Region,
    '$' || SUM(OrderAmount) AS TotalSales
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Region
ORDER BY TotalSales DESC;
```

**Insights:**  
Regional sales distribution reveals which of our markets are the strongest and where potential growth opportunities exist.

---

### 4️⃣ Number of Orders in April 2024

**SQL Query:**

```sql
SELECT
    COUNT(*) AS AprilOrderCount
FROM Orders
WHERE OrderDate BETWEEN '2024-04-01' AND '2024-04-30';
```

**Insights:**  
Order volume in April 2024 reflects seasonal trends and helps evaluate marketing effectiveness during that period.

---

### 5️⃣ Average Order Value

**SQL Query:**

```sql
SELECT 
    '$' || ROUND(AVG(OrderAmount), 2) AS AverageOrderPrice
FROM Orders;
```

**Insights:**  
The average order value gives insights into customer purchasing behavior and can help inform strategy.

---
