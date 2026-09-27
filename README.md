# 🛒 E-Commerce Customer Churn Analysis

> **SQL / MySQL Data Analytics Project** — an end-to-end analysis of customer churn, behavior, complaints, orders, payments, satisfaction, distance, and returns.

## 📌 Project Overview

This project uses **MySQL and SQL** to analyze historical e-commerce customer data and identify patterns related to customer churn and customer behavior.

**Workflow:** Raw Data → Data Cleaning → Data Transformation → KPI Analysis → Business Questions → Advanced SQL → Returns Analysis → Data Quality Validation

The original full SQL workflow is intentionally preserved. A separate recruiter-friendly analysis file makes the business analysis easier to review.

## 🎯 Business Objectives

- Analyze active vs. churned customers
- Calculate customer churn KPIs
- Identify churn patterns across customer groups
- Analyze complaints and satisfaction
- Study payment methods and order categories
- Analyze tenure and ordering behavior
- Explore coupon usage and cashback
- Analyze warehouse-to-home distance
- Analyze customer returns and refunds
- Demonstrate interview-level SQL techniques

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
- Creates the ecomm database
- Creates the customer_churn table
- Loads the project dataset
- Creates the customer_returns table

### 2. Data Cleaning
- Handles missing values
- Handles invalid warehouse-to-home distance values
- Standardizes categorical values
- Standardizes payment modes
- Corrects inconsistent column/category names

### 3. Data Transformation

Creates analysis-ready fields:
- ComplaintReceived
- ChurnStatus
- DistanceCategory

The project also renames inconsistent source columns and derives analysis-friendly fields from the original churn and complaint indicators.

### 4. Business & Advanced SQL Analysis
- Churn KPIs
- Churn rate by order category
- Churn rate by warehouse distance
- Complaint-rate analysis
- Payment-mode analysis
- Customer segmentation
- Above-average customer analysis
- Category-level satisfaction and cashback analysis
- Window-function ranking
- Returns and refund analysis

### 5. Data Quality Validation
- Final customer count
- Duplicate Customer IDs
- Remaining NULL values
- Remaining warehouse-distance outliers
- Churn/complaint label consistency
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

> These are project-level results calculated from the repository dataset and its cleaning/transformation workflow. They are not current industry statistics.

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
- Filtering with WHERE
- Aggregations and conditional aggregation
- GROUP BY / HAVING
- ORDER BY / LIMIT
- CASE expressions
- UPDATE / DELETE / ALTER TABLE
- JOIN
- Subqueries
- Window functions
- ROW_NUMBER()
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
| 1 | Churned |
| 0 | Active |

### Complaint Classification
| Source Value | Analytical Value |
|---|---|
| 1 | Yes |
| 0 | No |

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

| File | Purpose |
|---|---|
| README.md | Project documentation, results, workflow, and instructions |
| Ecommerce_Customer_Churn_Analysis.sql | Complete original dataset, database setup, cleaning, transformation, and original analysis workflow |
| analysis/Business_Analysis_Queries.sql | Clean recruiter/interview-focused business analysis and data-quality queries |

> **Important:** The original SQL file is intentionally preserved and has not been replaced by the analysis file.

## ▶️ How to Run

### Step 1 — Original SQL
Open Ecommerce_Customer_Churn_Analysis.sql in MySQL Workbench and run it from the beginning.

### Step 2 — Analysis SQL
After Step 1 completes successfully, open analysis/Business_Analysis_Queries.sql and run the queries individually or section by section.

> The analysis file depends on the cleaned/transformed tables created by the original SQL workflow.

## 💼 Business Value

This project demonstrates how a Data Analyst can move from:

**Raw Customer Data → Clean Data → Business KPIs → SQL Analysis → Advanced SQL → Data Quality Checks**

It demonstrates practical skills useful for entry-level Data Analyst and BI/SQL-focused roles.

## ⚠️ Scope & Limitations

- Results are based only on the dataset included in this repository.
- Results represent patterns in this project dataset and are not current industry statistics.
- The project focuses on SQL-based analysis rather than predictive machine-learning churn modeling.
- Customer segmentation thresholds are project-specific analytical rules.
- The original SQL workflow contains the full dataset and transformation process; the separate analysis file is designed for readability and interview review.

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