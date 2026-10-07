import pandas as pd

df = pd.read_csv("../data/clean_sales_data.csv")
df["Order Date"] = pd.to_datetime(df["Order Date"])

total_sales = df["Sales"].sum()
total_profit = df["Profit"].sum()
total_orders = df["Order ID"].nunique()
total_customers = df["Customer ID"].nunique()
aov = total_sales / total_orders
margin = total_profit / total_sales * 100

print(f"Total Sales: ₹{total_sales:,.2f}")
print(f"Total Profit: ₹{total_profit:,.2f}")
print(f"Total Orders: {total_orders:,}")
print(f"Total Customers: {total_customers:,}")
print(f"Average Order Value: ₹{aov:,.2f}")
print(f"Profit Margin: {margin:.2f}%")

print("\nTop Products by Sales:")
print(df.groupby("Product Name")["Sales"].sum().sort_values(ascending=False).head(10))

print("\nSales by Category:")
print(df.groupby("Category")["Sales"].sum().sort_values(ascending=False))

print("\nProfit by Region:")
print(df.groupby("Region")["Profit"].sum().sort_values(ascending=False))
