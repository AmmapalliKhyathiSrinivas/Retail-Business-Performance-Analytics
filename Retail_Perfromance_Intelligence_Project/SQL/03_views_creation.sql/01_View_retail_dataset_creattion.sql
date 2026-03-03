CREATE VIEW  vw_retail_dataset AS
SELECT
InvoiceNo,
StockCode,
Description,
Quantity,
YEAR(InvoiceDate) as Order_Year,
MONTH(InvoiceDate) as Order_Month,
DATEFROMPARTS(YEAR(InvoiceDate),MONTH(InvoiceDate),1) AS MONTH_START,
InvoiceDate,
UnitPrice,
CustomerID,
Country,
Quantity * UnitPrice as Revenue
FROM retail_dataset
