CREATE VIEW vw_retail_sales AS
SELECT *
FROM vw_retail_dataset
WHERE Quantity > 0 
AND UnitPrice > 0
