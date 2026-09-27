# 🛒 E-Commerce Customer Churn Analysis

> **SQL / MySQL Data Analytics Project** — an end-to-end customer churn analysis covering data cleaning, transformation, business KPIs, customer behavior, complaints, satisfaction, payments, distance, returns, refunds, and advanced SQL.

## 📌 Project Overview

This project uses **MySQL and SQL** to transform raw e-commerce customer data into analysis-ready data and answer business-focused questions related to customer churn and customer behavior.

**Workflow:** Raw Data → Data Cleaning → Data Transformation → KPI Analysis → Business Questions → Advanced SQL → Returns & Refunds → Data Quality Validation

The repository intentionally keeps the **original complete SQL workflow unchanged** and provides a separate analysis file that organizes the most important business and interview-focused queries.

## 🎯 Business Objectives

- Measure active vs. churned customers
- Calculate the overall churn rate
- Analyze churn across order categories and warehouse distance
- Examine complaints and customer satisfaction
- Analyze payment methods, orders, coupons, cashback, and app usage
- Segment customers using order-count rules
- Analyze returns and refund amounts
- Validate the quality of the cleaned analytical dataset
- Demonstrate practical SQL skills used in Data Analyst roles

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

## 🔄 Project Workflow

### 1. Database & Data Setup
- Creates the `ecomm` database
- Creates the `customer_churn` table
- Loads the project dataset
- Creates the `customer_returns` table

### 2. Data Cleaning
- Handles missing values in key analytical fields
- Removes documented warehouse-distance outliers
- Standardizes login-device categories
- Standardizes order-category values
- Standardizes payment-mode labels
- Corrects inconsistent source column names

### 3. Data Transformation

Creates analysis-ready fields:
- `ComplaintReceived`
- `ChurnStatus`
- `DistanceCategory`

The project derives analysis-friendly labels from the original churn and complaint indicators and renames inconsistent source columns for analysis.

### 4. Business Analysis

The recruiter-focused analysis file covers:
- Customer churn KPIs
- Churn rate by order category
- Churn rate by warehouse-to-home distance
- Complaint-rate analysis
- Payment-mode analysis
- Customer behavior and satisfaction
- Cashback and coupon analysis
- Customer segmentation
- Above-average customer analysis
- Returns and refund analysis

### 5. Advanced SQL

Demonstrated techniques include:
- Conditional aggregation
- `CASE` expressions
- Subqueries
- `JOIN`
- `GROUP BY` / `HAVING`
- `ORDER BY` / `LIMIT`
- Window functions with `ROW_NUMBER()`

### 6. Data Quality Validation

The analysis file includes checks for:
- Final customer count
- Duplicate Customer IDs
- Remaining NULL values
- Remaining warehouse-distance outliers
- Churn/complaint label combinations
- Standardized payment modes

## 📊 Validated Project Results

The final cleaned dataset contains **5,628 customers** after the documented cleaning workflow.

| KPI | Result |
|---|---:|
| Raw customer records | 5,630 |
| Final cleaned customers | 5,628 |
| Active customers | 4,680 |
| Churned customers | 948 |
| Overall churn rate | **16.84%** |
| Churned customers who complained | **53.59%** |
| Avg. tenure — Active | 11.09 |
| Avg. tenure — Churned | 3.18 |
| Avg. order count — Active | 2.99 |
| Avg. order count — Churned | 2.81 |
| Avg. cashback — Active | 180.65 |
| Avg. cashback — Churned | 160.37 |
| Avg. satisfaction — Active | 3.00 |
| Avg. satisfaction — Churned | 3.39 |

> These are project-level results calculated from the repository dataset and its documented cleaning/transformation workflow. They are not current industry statistics.

## 🔎 Key Analytical Areas

### Customer Churn
- Active vs. churned customer analysis
- Overall churn-rate calculation
- Churn rate by order category
- Churn rate by warehouse-to-home distance
- Churn analysis by payment mode

### Customer Behavior
- Tenure
- Order count
- App usage
- Registered devices
- Coupon usage
- Cashback

### Customer Experience
- Complaints
- Satisfaction score
- Payment mode
- Warehouse-to-home distance

### Returns & Refunds
- Return count
- Total refund amount
- Average refund amount
- Returned customers by churn status
- Returned customers who both churned and complained

## 🧠 SQL Skills Demonstrated

- Database and table creation
- Data insertion
- Data cleaning and transformation
- Filtering with `WHERE`
- Aggregations and conditional aggregation
- `GROUP BY` / `HAVING`
- `ORDER BY` / `LIMIT`
- `CASE` expressions
- `UPDATE` / `DELETE` / `ALTER TABLE`
- Column renaming and creation
- `JOIN`
- Subqueries
- Window functions
- `ROW_NUMBER()`
- Customer segmentation
- KPI calculation
- Data-quality validation

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

### Customer Segmentation
The analysis file includes a rule-based demonstration segmentation using order count:

| Order Count | Segment |
|---|---|
| < 5 | Low Order Customers |
| 5–9 | Medium Order Customers |
| ≥ 10 | High Order Customers |

> These thresholds are project-specific analytical rules, not universal industry standards.

## ❓ Business Questions

1. What is the distribution of active and churned customers?
2. What is the overall customer churn rate?
3. How do average tenure, orders, cashback, and satisfaction differ by churn status?
4. What percentage of customers complained within each churn-status group?
5. How does churn rate vary by order category?
6. How does churn rate vary by warehouse-to-home distance?
7. Which payment modes are most common among active customers?
8. Which order categories have the highest average cashback?
9. Which customers have above-average cashback?
10. Which customers have above-average order activity?
11. Which returned customers were both churned and complaining?
12. Are there duplicate IDs, NULL values, or remaining distance outliers after cleaning?

## 📁 Repository Structure

~~~text
ecommerce-customer-churn-analysis/
│
├── README.md
├── Ecommerce_Customer_Churn_Analysis.sql
│
└── analysis/
    └── Business_Analysis_Queries.sql
~~~

### File Guide

| File | Purpose |
|---|---|
| `README.md` | Project overview, business objectives, results, workflow, and documentation |
| `Ecommerce_Customer_Churn_Analysis.sql` | **Original complete SQL project** containing database setup, dataset, cleaning, transformation, and original analysis workflow |
| `analysis/Business_Analysis_Queries.sql` | **Recruiter/interview-focused SQL analysis** containing business KPIs, advanced SQL, returns analysis, and data-quality validation |

### Why are there two SQL files?

The original SQL file is preserved as the **complete project workflow**.

The separate `analysis/Business_Analysis_Queries.sql` file organizes the most important analytical queries into a cleaner structure for **recruiter review and SQL interview preparation**.

> **Important:** The original SQL file is intentionally preserved and is not replaced or rewritten by the analysis file.

## ▶️ How to Run

### Step 1 — Run the Original SQL

Open `Ecommerce_Customer_Churn_Analysis.sql` in **MySQL Workbench** and run it from the beginning.

This creates the database, tables, dataset, cleaning steps, transformations, and original workflow.

### Step 2 — Run the Recruiter/Analysis SQL

After Step 1 completes successfully, open `analysis/Business_Analysis_Queries.sql`.

Run the queries individually or section by section to review the business analysis and data-quality checks.

> **Important:** The analysis file depends on the cleaned/transformed tables created by the original SQL workflow.

## 💼 Business Value

This project demonstrates how a Data Analyst can move from:

**Raw Customer Data → Clean Data → Business KPIs → SQL Analysis → Advanced SQL → Data Quality Checks**

It demonstrates practical SQL and analytical skills relevant to entry-level **Data Analyst, BI Analyst, and SQL-focused roles**.

## ⚠️ Scope & Limitations

- Results are based only on the dataset included in this repository.
- Results represent patterns within this project dataset and are not current industry statistics.
- The project focuses on SQL-based analysis rather than predictive machine-learning churn modeling.
- Customer segmentation thresholds are project-specific analytical rules.
- The separate analysis file is intended to improve readability and interview/recruiter review; it does not replace the original SQL workflow.

## 🚀 Future Enhancements

- Build a Power BI churn dashboard
- Add customer segmentation visuals
- Add cohort and retention analysis
- Expand return/refund analysis
- Add Python-based exploratory analysis
- Develop a separate predictive churn-modeling project

## 👨‍💻 Author

**Shanmukh Koyya**

📧 [Email](mailto:shanmukhkoyya1234@gmail.com)

💼 [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/)

🐙 [GitHub](https://github.com/shanmukhkoyya)

---

⭐ Part of my hands-on **AI Data Analytics portfolio**.