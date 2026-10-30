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
2. Open the main SQL workflow file.
3. Execute it to create and prepare the database tables.
4. Open the business analysis SQL file.
5. Execute the queries section by section.
6. Review the output and validation results.

**Important:** Execute the main SQL file first. The business analysis file depends on the tables created by it.

## 6. Project Limitations

- Findings describe the supplied dataset, not a live e-commerce business.
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