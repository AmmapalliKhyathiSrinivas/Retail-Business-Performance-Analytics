📊 Project Overview

This project analyzes UK-based retail transactional data (2010–2011) to evaluate revenue performance, customer behavior, and country-level contribution.

🧹 Data Preparation

Removed cancellation and refund transactions (Quantity > 0, UnitPrice > 0)

Created analytical view: vw_retail_sales

Defined Revenue = Quantity × UnitPrice

Standardized MonthStart for time-based analysis

📈 Core Metrics

Total Revenue (Gross Sales)

Active Customers (excluding unidentified customers)

Revenue per Customer (identifiable customers only)

Country-Level Revenue

Monthly Revenue Trend

📊 Advanced Analytics

Month-over-Month Revenue Change (LAG)

Top 5 Customers per Month

Top 3 Countries per Month

Revenue vs Customer Average (window functions)

Latest Order per Customer

🔍 Key Insights

UK drives majority of revenue volume.

Smaller markets (e.g., EIRE) show high revenue per customer but limited customer base.

Revenue growth is primarily driven by customer volume rather than increased per-customer spending.

Revenue per customer calculations exclude unidentified customers to maintain metric integrity.

⚠ Limitations

Dataset covers 2010–2011 only.

Returns excluded to analyze gross sales performance.

Small sample sizes in certain countries can inflate per-customer averages.
