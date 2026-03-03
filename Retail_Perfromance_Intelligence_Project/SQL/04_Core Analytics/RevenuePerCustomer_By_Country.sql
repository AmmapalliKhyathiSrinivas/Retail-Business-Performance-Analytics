SELECT Country,
	SUM(Revenue) as Customer_Revenue,
	COUNT(DISTINCT CustomerID) as Active_Customers,
	Convert(Decimal(10,2),SUM(Revenue) / COUNT(DISTINCT CustomerID),2) as Revenue_per_Customer
FROM vw_retail_sales
WHERE CustomerID IS NOT NULL
GROUP BY Country

