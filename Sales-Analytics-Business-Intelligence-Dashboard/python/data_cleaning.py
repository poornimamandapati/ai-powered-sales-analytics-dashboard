import pandas as pd
import numpy as np

df = pd.read_excel("../data/raw_sales_data.xlsx")
print("Shape:", df.shape)
print("Missing values:\n", df.isnull().sum())
print("Duplicates:", df.duplicated().sum())

df = df.drop_duplicates()
df["Order Date"] = pd.to_datetime(df["Order Date"])

for col in ["Quantity", "Sales", "Discount", "Profit"]:
    df[col] = df[col].fillna(df[col].median())

for col in ["Customer Name","Product Name","Category","Sub-Category","Region","State","City"]:
    df[col] = df[col].fillna("Unknown")

df["Year"] = df["Order Date"].dt.year
df["Month"] = df["Order Date"].dt.month
df["Month Name"] = df["Order Date"].dt.month_name()
df["Profit Margin"] = np.where(df["Sales"] != 0, df["Profit"] / df["Sales"] * 100, 0)
df["Discount Amount"] = df["Sales"] * df["Discount"]

df.to_csv("../data/clean_sales_data.csv", index=False)
print("Cleaned dataset saved.")
