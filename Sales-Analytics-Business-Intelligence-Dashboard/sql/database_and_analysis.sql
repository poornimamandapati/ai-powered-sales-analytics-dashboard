CREATE DATABASE IF NOT EXISTS sales_analytics;
USE sales_analytics;

CREATE TABLE IF NOT EXISTS sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    product_id VARCHAR(50),
    product_name VARCHAR(150),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    region VARCHAR(50),
    state VARCHAR(100),
    city VARCHAR(100),
    quantity INT,
    sales DECIMAL(12,2),
    discount DECIMAL(5,2),
    profit DECIMAL(12,2)
);

-- Import clean_sales_data.csv into the table before running the queries.

-- Overall KPIs
SELECT SUM(sales) AS total_sales FROM sales;
SELECT SUM(profit) AS total_profit FROM sales;
SELECT SUM(quantity) AS total_quantity FROM sales;
SELECT COUNT(DISTINCT order_id) AS total_orders FROM sales;
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM sales;
SELECT SUM(sales)/COUNT(DISTINCT order_id) AS average_order_value FROM sales;
SELECT SUM(profit)/SUM(sales)*100 AS profit_margin FROM sales;

-- Product analysis
SELECT product_name, SUM(sales) AS total_sales
FROM sales GROUP BY product_name ORDER BY total_sales DESC LIMIT 10;

SELECT product_name, SUM(profit) AS total_profit
FROM sales GROUP BY product_name ORDER BY total_profit DESC LIMIT 10;

SELECT product_name, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales GROUP BY product_name HAVING SUM(profit) < 0
ORDER BY total_profit;

-- Category and region
SELECT category, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales GROUP BY category ORDER BY total_sales DESC;

SELECT region, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales GROUP BY region ORDER BY total_sales DESC;

-- Customer analysis
SELECT customer_id, customer_name, SUM(sales) AS total_spending
FROM sales GROUP BY customer_id, customer_name
ORDER BY total_spending DESC LIMIT 10;

-- Monthly trend
SELECT YEAR(order_date) AS year, MONTH(order_date) AS month,
       SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- Discount analysis
SELECT discount, SUM(sales) AS total_sales, SUM(profit) AS total_profit
FROM sales GROUP BY discount ORDER BY discount;
