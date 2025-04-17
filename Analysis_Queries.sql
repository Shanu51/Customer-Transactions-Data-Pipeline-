--Revenue by Location
SELECT 
    L.City,
    L.State,
    L.Country,
    SUM(FT.TotalAmount) AS TotalRevenue
FROM Transactions FT
JOIN Locations L ON FT.LocationID = L.LocationID
GROUP BY L.City, L.State, L.Country
ORDER BY TotalRevenue DESC;

--Top 5 Spending Customers
SELECT TOP 5
    Customers.CustomerID,
    Customers.CustomerName,
    SUM(Transactions.TotalAmount) AS TotalSpent
FROM Transactions
INNER JOIN Customers ON Transactions.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID, Customers.CustomerName
ORDER BY TotalSpent DESC;

-- Revenue by Product Category
SELECT 
    Products.ProductCategory,
    SUM(Transactions.TotalAmount) AS CategoryRevenue
FROM Transactions
INNER JOIN Products ON Transactions.ProductID = Products.ProductID
GROUP BY Products.ProductCategory
ORDER BY CategoryRevenue DESC;