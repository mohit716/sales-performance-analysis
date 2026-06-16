-- Sales Performance Analysis Queries
-- Dataset: Sample Superstore
-- Purpose: Analyze revenue, profit, orders, customers, regional performance, and monthly trends.


-- 1. KPI Summary
-- Shows total sales, profit, orders, customers, and average order value.

SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM superstore_sales;


-- 2. Sales and Profit by Region
-- Identifies which regions generate the highest revenue and profit.

SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY region
ORDER BY total_sales DESC;


-- 3. Monthly Sales and Profit Trend
-- Shows business performance over time.

SELECT
    TO_CHAR(DATE_TRUNC('month', order_date), 'YYYY-MM') AS month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit
FROM superstore_sales
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY DATE_TRUNC('month', order_date);



-- 4. Category and Sub-Category Performance
-- Shows sales and profit by product category and sub-category.

SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY category, sub_category
ORDER BY total_profit DESC;



-- 5. Top 10 Products by Sales
-- Identifies the highest revenue-generating products.

SELECT
    product_name,
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales
GROUP BY product_name, category, sub_category
ORDER BY total_sales DESC
LIMIT 10;




-- 6. Discount Impact on Profit
-- Shows how average discount levels relate to sales and profit.

SELECT
    discount,
    COUNT(*) AS total_items_sold,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit), 2) AS avg_profit_per_row
FROM superstore_sales
GROUP BY discount
ORDER BY discount;



-- 7. Customer Segment Performance
-- Compares sales, profit, and order volume across customer segments.

SELECT
    segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM superstore_sales
GROUP BY segment
ORDER BY total_sales DESC;