# 📊 AI-Powered Sales Analytics & Business Intelligence Dashboard

An end-to-end **Sales Analytics and Business Intelligence project** that transforms raw sales data into meaningful business insights using **Python, Pandas, MySQL, SQL, Power BI, and DAX**.

The project demonstrates how raw transactional data can be cleaned, analyzed, stored in a database, and transformed into interactive business intelligence dashboards for data-driven decision making.

---

## 🎯 Project Objective

The main objective of this project is to analyze sales data and identify important business patterns related to:

- Sales performance
- Profitability
- Products and categories
- Customers
- Regions
- Monthly sales trends
- Discounts
- Business KPIs

The project follows an end-to-end analytics workflow:

**Raw Data → Python Data Cleaning → MySQL → SQL Analysis → Power BI → Business Insights**

---

## ✨ Key Features

- 📂 Raw sales data processing
- 🧹 Data cleaning and preprocessing using Python
- 📊 Exploratory data analysis
- 🗄️ MySQL database integration
- 🔎 SQL-based business analysis
- 📈 Sales and profit analysis
- 🛍️ Product and category analysis
- 👥 Customer analysis
- 🌎 Regional analysis
- 📅 Monthly sales trend analysis
- 💰 Profitability and discount analysis
- 📊 Interactive Power BI dashboard design
- 🧮 DAX-based KPI calculations
- 📸 Dashboard screenshots and visualizations

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Python | Data cleaning and analysis |
| Pandas | Data manipulation |
| NumPy | Numerical calculations |
| Excel | Raw sales data |
| MySQL | Data storage |
| SQL | Business analysis |
| Power BI | Interactive dashboard |
| DAX | KPI and business calculations |
| GitHub | Version control and project hosting |

---

## 📊 Dataset

The project includes a **synthetic retail sales dataset containing 8,000 transactions covering 2024–2026**.

The dataset contains information related to:

- Orders
- Customers
- Products
- Categories
- Sub-categories
- Regions
- States
- Cities
- Quantity
- Sales
- Discounts
- Profit
- Order dates

> The dataset included in this repository is synthetic and is provided for educational and demonstration purposes.

---

## 📌 Key Business KPIs

The included dataset produces the following key metrics:

- **Total Sales:** ₹363,640,209.50
- **Total Profit:** ₹13,201,626.38
- **Total Orders:** 8,000
- **Total Customers:** 1,000
- **Average Order Value:** ₹45,455.03
- **Profit Margin:** 3.63%

---

## 🔄 Project Workflow

### 1. Data Collection

Raw sales data is provided in Excel format.

```text
data/raw_sales_data.xlsx
```

### 2. Data Cleaning

Python is used to:

- Detect missing values
- Remove duplicate records
- Convert date fields
- Handle missing numerical values
- Handle missing categorical values
- Create year and month fields
- Calculate profit margin
- Calculate discount amount

The cleaned dataset is saved as:

```text
data/clean_sales_data.csv
```

### 3. Data Analysis

Python is used to calculate:

- Total sales
- Total profit
- Total orders
- Total customers
- Average order value
- Profit margin
- Top-selling products
- Category performance
- Regional profitability

### 4. MySQL Database

The cleaned dataset can be loaded into a MySQL database named:

```text
sales_analytics
```

The database schema and analysis queries are available in:

```text
sql/database_and_analysis.sql
```

### 5. SQL Analysis

SQL queries are used to analyze:

- Overall business KPIs
- Top products
- Profitable and loss-making products
- Category performance
- Regional performance
- Customer spending
- Monthly sales trends
- Discount impact

### 6. Power BI Dashboard

Power BI can be connected to the MySQL database to create an interactive business intelligence dashboard.

The Power BI setup instructions and recommended dashboard design are available in:

```text
powerbi/POWER_BI_SETUP.md
```

---

## 📊 Power BI Dashboard

The recommended Power BI dashboard contains the following pages:

### Sales Overview

Key performance indicators:

- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Profit Margin

Visualizations:

- Monthly Sales Trend
- Sales by Category
- Sales by Region
- Top 10 Products

### Product Analysis

- Top Products by Sales
- Top Products by Profit
- Loss-Making Products
- Sales vs Profit analysis

### Customer Analysis

- Top Customers
- Customer Sales
- Orders by Customer
- Regional customer distribution

### Regional Analysis

- Sales by Region
- Profit by Region
- State performance
- Category performance by region

### Dashboard Filters

- Year
- Month
- Category
- Sub-Category
- Region
- State

---

## 🧮 Important DAX Measures

Example Power BI measures used in the project:

```DAX
Total Sales = SUM(Sales[Sales])

Total Profit = SUM(Sales[Profit])

Total Quantity = SUM(Sales[Quantity])

Total Orders = DISTINCTCOUNT(Sales[Order ID])

Total Customers = DISTINCTCOUNT(Sales[Customer ID])

Average Order Value = DIVIDE([Total Sales], [Total Orders])

Profit Margin = DIVIDE([Total Profit], [Total Sales]) * 100
```

---

## 📁 Project Structure

```text
Sales-Analytics-Business-Intelligence-Dashboard/
│
├── data/
│   ├── raw_sales_data.xlsx
│   └── clean_sales_data.csv
│
├── python/
│   ├── data_cleaning.py
│   └── data_analysis.py
│
├── sql/
│   └── database_and_analysis.sql
│
├── powerbi/
│   └── POWER_BI_SETUP.md
│
├── screenshots/
│   ├── dashboard_preview.png
│   ├── monthly_sales_trend.png
│   ├── sales_by_category.png
│   ├── sales_by_region.png
│   └── top_10_products.png
│
├── INSIGHTS.md
├── README.md
└── requirements.txt
```

---

## ⚙️ Installation

### Prerequisites

Install the following:

- Python 3.11+
- MySQL
- Power BI Desktop

### Install Python Dependencies

Clone the repository:

```bash
git clone https://github.com/poornimamandapati/ai-powered-sales-analytics-dashboard.git
```

Navigate to the project folder:

```bash
cd ai-powered-sales-analytics-dashboard
```

Install the required Python packages:

```bash
pip install -r requirements.txt
```

---

## ▶️ How to Run

### Step 1 — Clean the Data

Run:

```bash
python python/data_cleaning.py
```

This processes the raw Excel dataset and creates:

```text
data/clean_sales_data.csv
```

### Step 2 — Perform Data Analysis

Run:

```bash
python python/data_analysis.py
```

This calculates the major sales and business KPIs.

### Step 3 — Set Up MySQL

Create the database and table using:

```text
sql/database_and_analysis.sql
```

Import the cleaned CSV data into the MySQL `sales` table.

### Step 4 — Connect Power BI

Open Power BI Desktop and connect it to the MySQL database.

Follow:

```text
powerbi/POWER_BI_SETUP.md
```

to configure the dashboard and DAX measures.

---

## 📸 Project Screenshots

The repository includes dashboard and analysis screenshots in:

```text
screenshots/
```

These include:

- Dashboard preview
- Monthly sales trend
- Sales by category
- Sales by region
- Top 10 products

---

## 📈 Business Insights

The analysis helps identify:

- High-performing products
- Most profitable categories
- Regional sales performance
- Customer spending patterns
- Monthly sales trends
- Profitability patterns
- Impact of discounts on sales and profit
- Loss-making products

Detailed insights are available in:

```text
INSIGHTS.md
```

---

## 🎓 Skills Demonstrated

This project demonstrates practical skills in:

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis
- Python Programming
- Pandas
- NumPy
- SQL
- MySQL
- Power BI
- DAX
- Data Visualization
- Business Intelligence
- KPI Development
- Business Analytics
- Data-driven Decision Making

---

## 🚀 Future Enhancements

Potential improvements include:

- AI-powered natural language querying
- Sales forecasting using machine learning
- Customer segmentation
- Automated anomaly detection
- Automated business report generation
- Real-time dashboard updates
- Voice-based business queries
- Advanced predictive analytics

---

## 👩‍💻 Author

**Poornima**

B.Tech – Computer Science & Engineering

---

## 📄 License

This project is intended for educational, academic, and portfolio purposes.
