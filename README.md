# E-Commerce Customer Churn Analysis

## 📌 Project Overview

This project analyzes historical e-commerce customer data using MySQL to understand customer churn patterns and customer behavior.

The project includes data cleaning, data transformation, exploratory data analysis, and customer returns analysis.

## 🎯 Project Objectives

- Analyze churned and active customers
- Identify customer churn patterns
- Analyze customer complaints
- Analyze payment modes and order categories
- Study customer tenure, orders, coupons, cashback, and satisfaction
- Analyze warehouse-to-home distance
- Analyze customer return information

## 🛠️ Tools Used

- MySQL
- MySQL Workbench
- SQL
- GitHub

## 🧹 Data Cleaning

The following data cleaning operations were performed:

- Mean imputation for missing numerical values
- Mode imputation for missing values
- Removal of invalid warehouse-to-home distance values
- Standardization of inconsistent categorical values
- Correction of payment mode values

## 🔄 Data Transformation

The following transformations were performed:

- Renamed `PreferedOrderCat` to `PreferredOrderCat`
- Renamed `HourSpendOnApp` to `HoursSpentOnApp`
- Created `ComplaintReceived`
- Created `ChurnStatus`
- Removed `Churn` and `Complain`
- Created `DistanceCategory`

### Distance Categories

| Warehouse Distance | Category |
|---|---|
| ≤ 5 | Very Close Distance |
| ≤ 10 | Close Distance |
| ≤ 15 | Moderate Distance |
| > 15 | Far Distance |

## 🔍 Data Analysis

The project answers 17 business questions related to:

- Customer churn
- Customer tenure
- Cashback
- Complaints
- City tier
- Payment modes
- Order categories
- Coupon usage
- App usage
- Customer satisfaction
- Warehouse-to-home distance
- Customer orders

## 🔁 Customer Returns Analysis

A `customer_returns` table was created containing:

- Return ID
- Customer ID
- Return Date
- Refund Amount

Return data was joined with customer data to identify customers who had churned and complained.

## 💡 SQL Skills Demonstrated

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- LIMIT
- Aggregate Functions
- CASE
- UPDATE
- DELETE
- ALTER TABLE
- JOIN
- Subqueries
- Data Cleaning
- Data Transformation
- Exploratory Data Analysis

## 📁 Project Files

- `Ecommerce_Customer_Churn_Analysis.sql` – Complete SQL project script
- `README.md` – Project documentation

## 🚀 Project Outcome

This project demonstrates the use of SQL to clean, transform, analyze, and extract business insights from e-commerce customer data.

## 👨‍💻 Author

Shanmukh Koyya
