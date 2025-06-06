-- Query 1: Top 5 Customers by Total Revenue
SELECT
	Customers.CustomerName,
	'$' || SUM (Orders.OrderAmount) AS Total
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY orderamount DESC
LIMIT 5;

-- Query 2: Total Revenue in Q1 2024
SELECT 
    '$' || SUM(Orders.OrderAmount) AS 'Q1 Total Revenue'
FROM Orders
WHERE OrderDate BETWEEN '2024-01-01' AND '2024-03-31'
ORDER BY 'Q1 Total Revenue' DESC;

-- Query 3: Total Sales by Region
SELECT
	Customers.Region,
	'$' || SUM (OrderAmount) AS 'TotalSales'
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Region
ORDER By TotalSales DESC;

-- Query 4: Number of Orders in April 2024
SELECT
	COUNT (*) AS AprilOrderCount
FROM Orders
WHERE OrderDate BETWEEN '2024-04-01' AND '2024-04-30';

-- Query 5: Average Order Value (formatted as money)
SELECT 
    '$' || ROUND(AVG(OrderAmount), 2) AS AverageOrderPrice
FROM Orders;