# 📊 Sales Analytics & Business Intelligence Dashboard

An end-to-end data analytics project using **Python, Pandas, Excel, MySQL, SQL, Power BI and DAX**.

## Project Objective
Transform raw sales transactions into actionable business insights covering revenue, profitability, products, customers, regions and time trends.

## Workflow
Raw Excel/CSV → Python Cleaning → MySQL → SQL Analysis → Power BI → Business Insights

## Dataset
This repository includes a reproducible synthetic retail sales dataset with 8,000 transactions across 2024–2026.

## Key Features
- Data cleaning and preprocessing with Python
- SQL business analysis
- KPI calculations
- Product and category analysis
- Customer analysis
- Regional analysis
- Monthly sales trends
- Profitability and discount analysis
- Power BI dashboard specification
- DAX measures

## Actual Dataset KPIs
These values are generated from the included dataset:
- **Total Sales:** 363,640,209.50
- **Total Profit:** 13,201,626.38
- **Total Orders:** 8,000
- **Total Customers:** 1,000
- **Average Order Value:** 45,455.03
- **Profit Margin:** 3.63

## Project Structure
```text
data/
  raw_sales_data.xlsx
  clean_sales_data.csv
python/
  data_cleaning.py
  data_analysis.py
sql/
  database_and_analysis.sql
powerbi/
  POWER_BI_SETUP.md
screenshots/
README.md
requirements.txt
```

## How to Run
1. Install Python 3.11+.
2. Install dependencies: `pip install -r requirements.txt`
3. Run `python python/data_cleaning.py`.
4. Load `data/clean_sales_data.csv` into MySQL using the schema in `sql/database_and_analysis.sql`.
5. Run the SQL analysis queries.
6. Connect Power BI Desktop to the MySQL database and follow `powerbi/POWER_BI_SETUP.md`.

## Skills Demonstrated
Python • Pandas • NumPy • Excel • SQL • MySQL • Power BI • DAX • Data Cleaning • Data Modeling • Data Visualization • Business Intelligence

## Author
**Poornima** — B.Tech Computer Science & Engineering
