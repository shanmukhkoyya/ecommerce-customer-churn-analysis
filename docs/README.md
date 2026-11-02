# E-commerce Customer Churn Analysis — Documentation

This folder contains supporting documentation for the E-commerce Customer Churn Analysis project.

## 1. Project Documentation

This project uses MySQL to prepare customer data and analyse churn patterns.

### SQL Files

| File | Purpose |
|---|---|
| [Main SQL Workflow](../Ecommerce_Customer_Churn_Analysis.sql) | Database creation, table preparation and data cleaning |
| [Business Analysis Queries](../analysis/Business_Analysis_Queries.sql) | 30 SQL queries for business analysis and validation |

## 2. Business Analysis Query Sections

The business analysis SQL file contains six sections:

| Section | Queries | Topics |
|---|---:|---|
| Core Business KPIs | 1–6 | Churn rate, tenure, complaints and distance |
| Customer Behaviour & Experience | 7–14 | Payments, satisfaction, coupons and cashback |
| Segmentation & Advanced SQL | 15–21 | CASE, subqueries, ranking and HAVING |
| Returns & Refunds | 22–24 | Returns, refunds and customer joins |
| Data Quality Validation | 25–30 | Duplicates, NULLs, outliers and labels |
| Interview-Level SQL Skills | Reference | SQL concepts demonstrated |

## 3. Key Project Results

| Metric | Result |
|---|---:|
| Source records | 5,630 |
| Cleaned customer records | 5,628 |
| Active customers | 4,680 |
| Churned customers | 948 |
| Churn rate | 16.84% |

These are documented results from the supplied project dataset.

## 4. SQL Concepts Demonstrated

- SELECT, WHERE and ORDER BY
- GROUP BY and HAVING
- Aggregate functions
- CASE expressions
- INNER JOIN
- Subqueries
- Conditional aggregation
- Window functions using ROW_NUMBER()
- Data-quality validation

## 5. How to Execute

1. Install MySQL Server and MySQL Workbench.
2. Read the execution-safety note below before running the script.
3. Open the main SQL workflow file.
4. Execute it to create and prepare the project tables.
5. Open the business analysis SQL file.
6. Execute the queries section by section.
7. Review the output and validation results.

**Execution safety:** The main SQL workflow uses `CREATE DATABASE IF NOT EXISTS ecomm`, then drops and rebuilds the project's `customer_returns` and `customer_churn` tables. A full rerun therefore deletes and replaces data in those two tables. It does not drop the `ecomm` database or unrelated tables. Back up any data you need from the two project tables before executing the script.

**Important:** Execute the main SQL file first. The business analysis file depends on the tables created by it.

## 6. Project Limitations

- Findings describe the supplied dataset, not a live e-commerce business.
- The returns table contains only 8 illustrative records created for SQL JOIN practice; they are not verified transactions or a representative sample.
- Return/refund query results describe those 8 example records only and cannot be generalised to the full customer dataset or used to calculate a business return rate.
- The main SQL script replaces the project's `customer_returns` and `customer_churn` tables when rerun. Back up data in those tables before execution.
- Customer group comparisons do not prove cause and effect.
- Customer segments use project-defined rules.
- This is descriptive SQL analysis, not a predictive churn model.

## 7. Main Project

[Return to the main project README](../README.md)

[View SQL Analysis Summary](../images/sql-analysis-summary.svg)

## Author

**Shanmukh Koyya**

- [GitHub](https://github.com/shanmukhkoyya)
- [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/)
- [Email](mailto:shanmukhkoyya1234@gmail.com)