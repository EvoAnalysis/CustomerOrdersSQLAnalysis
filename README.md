Customer Orders SQL Analysis

Project Overview
•	This project analyzes a simulated Customer Orders database using SQL. The goal is to answer key business questions and demonstrate core SQL skills.

Database Structure
	Customers
o	CustomerID
o	CustomerName
o	Region
	Orders
o	OrderID
o	CustomerID
o	OrderDate
o	OrderAmount

Business Questions & Queries:
1.	Top 5 customers by total revenue
SQL Query:
SELECT
	Customers.CustomerName,
	'$' || SUM (Orders.OrderAmount) AS Total
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY orderamount DESC
LIMIT 5;
Isolated the companies top 5 highest spenders, this gives us the opportunity to gain insight on retention strategies to keep our customers happy.

2.	Total Revenue in Q1 of 2024
SQL Query:
SELECT 
    '$' || SUM(Orders.OrderAmount) AS 'Q1 Total Revenue'
FROM Orders
WHERE OrderDate BETWEEN '2024-01-01' AND '2024-03-31'
ORDER BY 'Q1 Total Revenue' DESC;
Highlighted the campanies total revenue made in quarter one of 2024, give us a bar to surpass for Q1 2025.

3.	Total Sales by Region
SQL Query:
SELECT
	Customers.Region,
	'$' || SUM (OrderAmount) AS 'TotalSales'
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Region
ORDER By TotalSales DESC;
Regional sales distribution reveals which of our markets are the strongest and where potential growth opportunities exist.

4.	Number of Orders in April 2024
SQL Query:
SELECT
	COUNT (*) AS AprilOrderCount
FROM Orders
WHERE OrderDate BETWEEN '2024-04-01' AND '2024-04-30';
Order volume in April 2024, reflects seasonal trends and helps evaluate marketing effectiveness during that period.

5.	Average Order Value
SQL Query:
SELECT 
    '$' || ROUND(AVG(OrderAmount), 2) AS AverageOrderPrice
FROM Orders;
The average order value gives insights into customer purchasing behavior and can help inform on creating strategies.
