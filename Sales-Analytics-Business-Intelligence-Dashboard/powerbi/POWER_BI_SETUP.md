# Power BI Setup

## Import
Connect Power BI Desktop to MySQL database `sales_analytics`, table `sales`.

## Core DAX Measures

Total Sales = SUM(Sales[Sales])

Total Profit = SUM(Sales[Profit])

Total Quantity = SUM(Sales[Quantity])

Total Orders = DISTINCTCOUNT(Sales[Order ID])

Total Customers = DISTINCTCOUNT(Sales[Customer ID])

Average Order Value = DIVIDE([Total Sales], [Total Orders])

Profit Margin = DIVIDE([Total Profit], [Total Sales]) * 100

## Recommended pages

### 1. Sales Overview
KPI cards: Total Sales, Total Profit, Total Orders, Total Customers, Profit Margin.
Charts: Monthly Sales Trend, Sales by Category, Sales by Region, Top 10 Products.

### 2. Product Analysis
Top Products by Sales, Top Products by Profit, Loss-Making Products, Sales vs Profit scatter chart.

### 3. Customer Analysis
Top Customers, Customer Sales, Orders by Customer, Regional distribution.

### 4. Regional Analysis
Sales and Profit by Region, State performance, category performance by region.

## Slicers
Year, Month, Category, Sub-Category, Region, State.
