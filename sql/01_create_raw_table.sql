-- Create the raw staging table for the Sample Superstore dataset.
-- Add column definitions here based on the CSV schema.
DROP TABLE IF EXISTS superstore_raw;
DROP TABLE IF EXISTS superstore_sales;

CREATE TABLE superstore_raw (
    row_id TEXT,
    order_id TEXT,
    order_date TEXT,
    ship_date TEXT,
    ship_mode TEXT,
    customer_id TEXT,
    customer_name TEXT,
    segment TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    postal_code TEXT,
    region TEXT,
    product_id TEXT,
    category TEXT,
    sub_category TEXT,
    product_name TEXT,
    sales TEXT,
    quantity TEXT,
    discount TEXT,
    profit TEXT
);