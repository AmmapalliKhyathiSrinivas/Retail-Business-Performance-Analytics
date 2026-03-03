WITH Base AS(
SELECT Country,SUM(Revenue) as Total_Revenue,MONTH_START
FROM vw_retail_sales
GROUP BY Country,MONTH_START
),
RANK_CUSTOMERS AS
(
SELECT Country,
	   Total_Revenue,
	   MONTH_START,
	   DENSE_RANK() OVER (Partition BY MONTH_START ORDER BY Total_Revenue DESC) AS RNK
FROM Base

) 
SELECT MONTH_START,Country,Total_Revenue,RNK
FROM RANK_CUSTOMERS
WHERE RNK <=3
ORDER BY MONTH_START

