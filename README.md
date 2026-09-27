# 🛒 E-Commerce Customer Churn Analysis

> An end-to-end **MySQL / SQL analytics project** focused on customer churn, customer behavior, complaints, orders, payments, satisfaction, distance, and returns.

## 📌 Project Overview

This project analyzes historical e-commerce customer data using **MySQL** to understand customer churn patterns and customer behavior.

The project demonstrates a practical analytics workflow:

**Raw Data → Data Cleaning → Data Transformation → Exploratory Analysis → Business Questions → Customer Returns Analysis**

The SQL script includes the dataset, transformation steps, analytical queries, and business-focused analysis.

## 🎯 Business Objectives

- Analyze churned and active customers
- Identify customer churn patterns
- Analyze customer complaints and satisfaction
- Study payment modes and order categories
- Analyze customer tenure and ordering behavior
- Explore coupon usage and cashback
- Analyze warehouse-to-home distance
- Analyze customer returns and refunds
- Translate customer data into business questions and insights

## 🛠️ Tools & Technologies

| Area | Technology |
|---|---|
| Database | MySQL |
| SQL Environment | MySQL Workbench |
| Analysis | SQL |
| Data Cleaning | SQL |
| Data Transformation | SQL |
| Business Analysis | SQL |
| Version Control | GitHub |

## 🔄 Project Workflow

### 1. Database & Data Setup
- Creates the `ecomm` database
- Creates the `customer_churn` table
- Loads the customer dataset
- Creates the `customer_returns` table

### 2. Data Cleaning
- Missing-value handling using mean/mode-based replacement
- Invalid warehouse-to-home distance handling
- Standardization of inconsistent categorical values
- Payment-mode standardization
- Category and column-name corrections

### 3. Data Transformation

The project creates analytical fields including:

- `ComplaintReceived`
- `ChurnStatus`
- `DistanceCategory`

It also renames inconsistent source columns and removes the original `Churn` and `Complain` fields after deriving analysis-friendly fields.

### 4. Exploratory & Business Analysis

The project includes business questions covering:

- Churn
- Tenure
- Complaints
- Cashback
- City tier
- Payment modes
- Order categories
- Coupon usage
- App usage
- Customer satisfaction
- Warehouse-to-home distance
- Customer orders

For easier recruiter review, the key business-analysis queries are also available separately in:

👉 [Business Analysis Queries](analysis/Business_Analysis_Queries.sql)

### 5. Customer Returns Analysis

A separate `customer_returns` table is created with:

- Return ID
- Customer ID
- Return Date
- Refund Amount

The project joins return data with customer data to identify customers who **churned and complained**.

## 📊 Key Analytical Areas

### Customer Churn
- Churned vs active customer analysis
- Churn-related customer characteristics

### Customer Behavior
- Tenure
- Order count
- Days since last order
- App usage
- Registered devices

### Customer Experience
- Complaints
- Satisfaction score
- Payment mode
- Warehouse-to-home distance

### Commercial Behavior
- Order categories
- Coupon usage
- Cashback
- Order amount changes

### Returns
- Customer returns
- Refund amounts
- Returns associated with churned and complaining customers

## 🧠 SQL Skills Demonstrated

- `CREATE DATABASE`
- `CREATE TABLE`
- `INSERT`
- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- Aggregate functions
- `CASE`
- `UPDATE`
- `DELETE`
- `ALTER TABLE`
- Column renaming
- Column creation/removal
- `JOIN`
- Subqueries
- Missing-value handling
- Data cleaning
- Data transformation
- Exploratory data analysis

## 📈 Analytical Transformations

### Distance Classification

| Warehouse Distance | Category |
|---|---|
| ≤ 5 | Very Close Distance |
| ≤ 10 | Close Distance |
| ≤ 15 | Moderate Distance |
| > 15 | Far Distance |

### Churn Classification

| Source Value | Analytical Value |
|---|---|
| `1` | Churned |
| `0` | Active |

### Complaint Classification

| Source Value | Analytical Value |
|---|---|
| `1` | Yes |
| `0` | No |

## ❓ Business Questions

Examples of questions answered in the SQL analysis include:

1. What is the distribution of active and churned customers?
2. What is the average tenure and total cashback among churned customers?
3. What percentage of churned customers submitted complaints?
4. Which city tier has the most churned customers in the laptop/accessory category?
5. Which payment mode is most common among active customers?
6. Which customer groups have higher order activity?
7. How do coupon usage and order categories relate?
8. How does satisfaction vary among customers who complained?
9. How does warehouse distance relate to churn status?
10. Which customers meet defined behavioral criteria?

The complete original script contains the dataset, cleaning steps, transformations, and analysis workflow.

## 📁 Repository Structure

```text
ecommerce-customer-churn-analysis/
│
├── README.md
├── Ecommerce_Customer_Churn_Analysis.sql
│
└── analysis/
    └── Business_Analysis_Queries.sql
```

### File Guide

| File | Purpose |
|---|---|
| `Ecommerce_Customer_Churn_Analysis.sql` | Complete dataset, database setup, cleaning, transformation, and original analysis workflow |
| `analysis/Business_Analysis_Queries.sql` | Clean, recruiter-friendly collection of key business-analysis queries |

## ▶️ How to Run

### Step 1 — Run the Complete Project

1. Install **MySQL** and open **MySQL Workbench**.
2. Open `Ecommerce_Customer_Churn_Analysis.sql`.
3. Run the script from the beginning so the database and tables are created in the correct order.
4. Review the cleaning and transformation queries.

### Step 2 — Run the Business Analysis Queries

After the original script has completed successfully:

1. Open `analysis/Business_Analysis_Queries.sql`.
2. Run the queries individually or as required.
3. Review the results for the corresponding business questions.

> **Important:** The separate business-analysis file depends on the cleaned/transformed tables created by the original project SQL script.

> **Note:** The original SQL script contains the project dataset and analysis workflow, so the project can be reproduced from the repository without requiring a separate dataset file.

## 💼 Business Value

This project demonstrates how a Data Analyst can use SQL to move from **raw customer data to structured business analysis**.

It focuses on practical analyst skills such as:

- Data quality preparation
- Data transformation
- Customer segmentation
- Churn analysis
- Business-question development
- Relational data analysis
- Insight-oriented SQL querying

## ⚠️ Project Scope & Limitations

- The analysis is based on the dataset included in the SQL script.
- Findings represent patterns in this project dataset and should not be treated as current e-commerce industry statistics.
- The project focuses on SQL-based analysis rather than predictive machine-learning churn modeling.
- The separate business-analysis file does not contain the raw dataset; it is designed to be run after the original project script.

## 🚀 Future Enhancements

- Add a Power BI churn dashboard
- Add customer segmentation
- Add cohort/retention analysis
- Add more detailed return and refund analysis
- Add Python-based exploratory analysis
- Develop a predictive churn model as a separate advanced project

## 👨‍💻 Author

**Shanmukh Koyya**

📧 [shanmukhkoyya1234@gmail.com](mailto:shanmukhkoyya1234@gmail.com)

💼 [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/)

🐙 [GitHub](https://github.com/shanmukhkoyya)

---

⭐ Part of my hands-on **AI Data Analytics portfolio**.
