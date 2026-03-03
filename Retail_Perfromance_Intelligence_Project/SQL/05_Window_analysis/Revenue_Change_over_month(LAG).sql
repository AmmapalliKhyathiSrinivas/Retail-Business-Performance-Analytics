--For each month, calculate how much revenue changed compared to the previous month.


WITH Monthly_revenue AS (
SELECT MONTH_START,SUM(Revenue) AS Total_Revenue
FROM vw_retail_sales
GROUP BY MONTH_START
),
M_change AS (
SELECT MONTH_START,
	   Total_Revenue,
	   Total_Revenue - LAG(Total_Revenue) OVER ( ORDER BY MONTH_START) as Differ
	   FROM Monthly_revenue
)
SELECT MONTH_START,
	   Total_Revenue,Differ
FROM M_change