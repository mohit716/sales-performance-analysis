# Sales Performance Analysis

This project analyzes the Sample Superstore sales dataset using PostgreSQL and SQL. The goal is to identify key business insights related to sales, profit, customers, regions, products, discounts, and customer segments.

## Tools Used

- PostgreSQL
- pgAdmin
- SQL
- Git/GitHub
- Power BI planned

## Dataset

Dataset: Sample Superstore

The dataset contains retail order data including order dates, shipping details, customer segments, regions, product categories, sales, quantity, discount, and profit.

## Project Workflow

1. Imported the CSV file into a raw staging table.
2. Created a clean typed table with proper date and numeric columns.
3. Wrote SQL queries to analyze sales and profitability.
4. Captured screenshots of query outputs for documentation.
5. Planned Power BI dashboard for visual reporting.

## Database Tables

### superstore_raw

Raw staging table where all columns were imported as text.

### superstore_sales

Clean analysis table with correct data types:

- `order_date` as DATE
- `ship_date` as DATE
- `sales` as NUMERIC
- `quantity` as INTEGER
- `discount` as NUMERIC
- `profit` as NUMERIC

## Key KPIs

- Total Sales: 2,297,201.07
- Total Profit: 286,397.79
- Total Orders: 5,009
- Total Customers: 793
- Average Order Value: 458.61

## Key Insights

### Regional Performance

The West region generated the highest sales and profit. The Central region had higher sales than the South region but lower profit, suggesting possible margin or discounting issues.

### Monthly Trend

Sales showed seasonal behavior, with stronger performance toward the end of each year. Some months had negative or weak profit despite sales activity.

### Category and Sub-Category Performance

Copiers, Phones, and Accessories were among the most profitable sub-categories. Tables generated high sales but produced negative profit, making it a major area of concern.

### Product Performance

Some top-selling products were highly profitable, such as the Canon imageCLASS 2200 Advanced Copier. However, some high-revenue products produced losses, showing that sales volume alone does not guarantee profitability.

### Discount Impact

Discounts of 30% or higher were associated with negative profit overall. This suggests aggressive discounting may reduce profitability even when sales continue.

### Customer Segment Performance

The Consumer segment generated the highest total sales and profit. Home Office had the highest average order value, despite having fewer customers and orders.

## SQL Analysis Included

1. KPI summary
2. Sales and profit by region
3. Monthly sales and profit trend
4. Category and sub-category performance
5. Top 10 products by sales
6. Discount impact on profit
7. Customer segment performance

## Next Steps

- Build a Power BI dashboard.
- Add charts for monthly sales trend, regional sales, category profit, and discount impact.
- Create final dashboard screenshots for GitHub.