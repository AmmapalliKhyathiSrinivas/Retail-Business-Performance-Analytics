SELECT CustomerID,SUM(Revenue) as Customer_Revenue
FROM vw_retail_sales
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
