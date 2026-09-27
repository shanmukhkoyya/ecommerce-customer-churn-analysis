# 🛒 E-Commerce Customer Churn Analysis

> **SQL / MySQL Data Analytics Project** — analyzing customer churn, behavior, complaints, orders, payments, satisfaction, distance, and returns.

## 📌 Project Overview

This project uses **MySQL and SQL** to analyze historical e-commerce customer data and identify patterns related to **customer churn and customer behavior**.

It demonstrates a practical Data Analyst workflow:

**Raw Data → Data Cleaning → Data Transformation → Exploratory Analysis → Business Questions → Customer Returns Analysis**

The repository contains the complete SQL workflow as well as a separate, recruiter-friendly collection of business-analysis queries.

---

## 🎯 Business Objectives

- Analyze active vs. churned customers
- Identify customer churn patterns
- Analyze complaints and satisfaction
- Study payment methods and order categories
- Analyze tenure and ordering behavior
- Explore coupon usage and cashback
- Analyze warehouse-to-home distance
- Analyze customer returns and refunds
- Convert customer data into business-focused SQL analysis

---

## 🛠️ Tools & Technologies

| Category | Technology |
|---|---|
| Database | MySQL |
| SQL Environment | MySQL Workbench |
| Analysis | SQL |
| Data Cleaning | SQL |
| Data Transformation | SQL |
| Business Analysis | SQL |
| Version Control | Git & GitHub |

---

## 🔄 Project Workflow

### 1. Database & Data Setup
- Creates the `ecomm` database
- Creates the `customer_churn` table
- Loads the project dataset
- Creates the `customer_returns` table

### 2. Data Cleaning
- Handles missing values
- Handles invalid warehouse-to-home distance values
- Standardizes categorical values
- Standardizes payment modes
- Corrects inconsistent column/category names

### 3. Data Transformation

Creates analysis-ready fields:

- `ComplaintReceived`
- `ChurnStatus`
- `DistanceCategory`

The project also renames inconsistent source columns and removes the original `Churn` and `Complain` fields after deriving analysis-friendly fields.

### 4. Exploratory & Business Analysis

The analysis covers:

- Customer churn
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

For faster recruiter review, the key business queries are organized separately:

👉 **[View Business Analysis Queries](analysis/Business_Analysis_Queries.sql)**

### 5. Customer Returns Analysis

A separate `customer_returns` table contains:

- Return ID
- Customer ID
- Return Date
- Refund Amount

The project joins return data with customer data to analyze customers who **churned and complained**.

---

## 📊 Key Analytical Areas

### Customer Churn
- Active vs. churned customer analysis
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

---

## 🧠 SQL Skills Demonstrated

- Database and table creation
- Data insertion
- Filtering with `WHERE`
- Aggregations
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
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

---

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

---

## ❓ Business Questions

Examples of questions answered by the SQL analysis:

1. What is the distribution of active and churned customers?
2. What is the average tenure and total cashback among churned customers?
3. What percentage of churned customers submitted complaints?
4. Which city tier has the most churned laptop & accessory customers?
5. Which payment mode is most common among active customers?
6. How does customer satisfaction vary among customers who complained?
7. How does warehouse distance relate to churn status?
8. Which order categories have higher coupon usage?
9. Which order categories have the highest average cashback?
10. Which customers meet defined behavioral criteria?
11. Which returned customers were both churned and complaining?

The complete original SQL script contains the dataset, cleaning steps, transformations, and analysis workflow.

---

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
| `README.md` | Project documentation and instructions |
| `Ecommerce_Customer_Churn_Analysis.sql` | Complete dataset, database setup, cleaning, transformation, and original analysis workflow |
| `analysis/Business_Analysis_Queries.sql` | Clean collection of key business-analysis queries for recruiter/interview review |

---

## ▶️ How to Run

### Step 1 — Run the Complete SQL Project

1. Install **MySQL** and open **MySQL Workbench**.
2. Open `Ecommerce_Customer_Churn_Analysis.sql`.
3. Run the script from the beginning.
4. Allow the database, tables, dataset, cleaning steps, and transformations to complete.

### Step 2 — Run the Business Analysis Queries

After Step 1 is completed:

1. Open `analysis/Business_Analysis_Queries.sql`.
2. Run the queries individually or as required.
3. Review the results for each business question.

> **Important:** The business-analysis file depends on the cleaned/transformed tables created by the original SQL project.

---

## 💼 Business Value

This project demonstrates how a Data Analyst can move from **raw customer data to structured SQL-based business analysis**.

It demonstrates practical skills in:

- Data quality preparation
- Data cleaning and transformation
- Customer churn analysis
- Customer behavior analysis
- Business-question development
- Relational data analysis
- Insight-oriented SQL querying

---

## ⚠️ Scope & Limitations

- The analysis is based on the dataset included in this repository.
- Results represent patterns within this project dataset and are not presented as current e-commerce industry statistics.
- This project focuses on SQL-based analysis rather than predictive machine-learning churn modeling.
- The separate business-analysis file is designed to run after the original project SQL script.

---

## 🚀 Future Enhancements

- Power BI churn dashboard
- Customer segmentation
- Cohort and retention analysis
- Detailed return/refund analysis
- Python-based exploratory analysis
- Predictive churn modeling

---

## 👨‍💻 Author

**Shanmukh Koyya**

📧 [Email](mailto:shanmukhkoyya1234@gmail.com)

💼 [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/)

🐙 [GitHub](https://github.com/shanmukhkoyya)

---

⭐ Part of my hands-on **AI Data Analytics portfolio**.
