--For each customer, calculate how their current order compares to their average order value.


WITH AVG_ORD AS (
SELECT CustomerID,
Revenue,
AVG(Revenue) OVER (PARTITION BY CustomerID) as customer_avg_value
FROM vw_retail_sales 
WHERE CustomerID IS NOT NULL
)
SELECT CustomerID,
Revenue,
customer_avg_value,
Revenue - customer_avg_value as value_change
FROM AVG_ORD