--For each customer, show their most recent order.

WITH Recent_order AS (
SELECT CustomerID,
	   InvoiceDate,
	   ROW_NUMBER() OVER (PARTITION BY CustomerID ORDER BY InvoiceDATE DESC) as RNK
FROM retail_dataset
WHERE CustomerID IS NOT NULL
)
SELECT CustomerID,InvoiceDate,RNK
FROM Recent_order 
WHERE RNK=1