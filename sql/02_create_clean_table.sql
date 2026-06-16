-- Create the cleaned sales table from the raw staging table.
-- Add data type conversions, standardization, and quality checks here.
DROP TABLE IF EXISTS superstore_sales;

CREATE TABLE superstore_sales AS
SELECT
    row_id::INT AS row_id,
    order_id,
    TO_DATE(order_date, 'MM/DD/YYYY') AS order_date,
    TO_DATE(ship_date, 'MM/DD/YYYY') AS ship_date,
    ship_mode,
    customer_id,
    customer_name,
    segment,
    country,
    city,
    state,
    postal_code,
    region,
    product_id,
    category,
    sub_category,
    product_name,
    sales::NUMERIC(10,2) AS sales,
    quantity::INT AS quantity,
    discount::NUMERIC(5,2) AS discount,
    profit::NUMERIC(10,2) AS profit
FROM superstore_raw;