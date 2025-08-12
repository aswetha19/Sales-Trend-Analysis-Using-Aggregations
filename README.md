# Sales-Trend-Analysis-Using-Aggregations
This project analyzes monthly revenue and order volume from an e-commerce sales dataset using SQL aggregation techniques. The goal is to identify sales trends over time and filter results for specific time periods.
Tools Used:

MySQL Workbench (can also be done in PostgreSQL or SQLite)

SQL aggregation functions (SUM, COUNT, EXTRACT)

GROUP BY and ORDER BY clauses

Dataset:

Table: orders

Columns: order_id, order_date, product_id, (and price/quantity or total amount)

Data imported from CSV into MySQL

Key Steps:

Import Data – Load CSV sales data into MySQL.

Data Aggregation – Use EXTRACT(MONTH FROM order_date) and EXTRACT(YEAR FROM order_date) to group by month/year.

Revenue Calculation – Compute monthly total revenue (SUM(amount) or SUM(price * quantity) if needed).

Order Volume – Count distinct orders per month (COUNT(DISTINCT order_id)).

Sorting – Order results chronologically using ORDER BY.

Filtering – Apply date filters to limit results to a specific year or date range.

Export Results – Save the result grid as CSV for reporting.

Outcome:

A clear table showing monthly revenue trends and order volumes.

Ability to filter and analyze sales performance for specific time periods.

SQL script and sample output included in this repository
