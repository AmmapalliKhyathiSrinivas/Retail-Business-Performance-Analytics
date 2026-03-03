Select TOP 20 InvoiceNo 
FROM retail_dataset
WHERE InvoiceNo LIKE '%C%'

SELECT COUNT(InvoiceNo) AS Total_Cancelled_Count
FROM retail_dataset
WHERE InvoiceNo LIKE '%C%'