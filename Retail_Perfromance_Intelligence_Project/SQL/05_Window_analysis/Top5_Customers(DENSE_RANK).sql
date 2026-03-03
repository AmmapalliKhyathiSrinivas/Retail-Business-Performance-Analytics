--For Each month, show top 5 customers by revenue

WITH MONTHLY_REVENUE AS (
SELECT CustomerID,SUM(Revenue) as Total_Revenue,MONTH_START
FROM vw_retail_sales
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID,MONTH_START
),
TOP_CUST AS (
SELECT CustomerID,
	   DENSE_RANK() OVER (PARTITION BY MONTH_START ORDER BY Total_Revenue DESC) as RNK,
	   Total_Revenue,
	   MONTH_START
	   FROM MONTHLY_REVENUE
)
SELECT CustomerID,Total_Revenue,MONTH_START,RNK
FROM TOP_CUST
WHERE RNK<=5