--- Monthly Revenue & Order Volume
 SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(total_price) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY year ASC, month ASC;
--- showing data for only 2024
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE YEAR(order_date) = 2024
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year ASC, month ASC;
--- date range
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2024-06-30'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year ASC, month ASC;
