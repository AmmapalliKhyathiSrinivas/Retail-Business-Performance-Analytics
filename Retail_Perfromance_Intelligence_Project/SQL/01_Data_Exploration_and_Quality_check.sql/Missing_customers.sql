SELECT COUNT(*) as Total_rows,
COUNT(CustomerID) AS non_null_Customerid,
COUNT(*) - COUNT(CustomerID) AS differ_rows
FROM retail_dataset
