# E-commerce Customer Churn Analysis

**Tools:** MySQL · SQL · MySQL Workbench

This project uses a supplied e-commerce customer dataset to practise a full SQL workflow: setting up tables, cleaning and transforming records, calculating churn measures, answering business questions, and checking data quality.

## Questions explored
- What share of customers are active or churned?
- How do churn patterns vary by order category and warehouse distance?
- How do complaints, satisfaction, tenure, payment methods, cashback, returns, and refunds compare across customer groups?
- Are duplicate IDs, missing values, or inconsistent categories left after cleaning?

## Workflow
1. Set up the database and tables.
2. Clean selected fields and standardise inconsistent categories.
3. Create analysis-ready fields for churn, complaints, and distance.
4. Calculate customer KPIs and compare groups.
5. Validate record counts, duplicates, missing values, and selected data-quality rules.

## Selected results
The figures below are documented results from the repository's dataset and cleaning workflow.

| Measure | Result |
|---|---:|
| Source records | 5,630 |
| Records after cleaning | 5,628 |
| Active customers | 4,680 |
| Churned customers | 948 |
| Overall churn rate | 16.84% |
| Churned customers who complained | 53.59% |
| Average tenure — active customers | 11.09 |
| Average tenure — churned customers | 3.18 |

These results describe the project dataset, not an industry benchmark. Group comparisons are descriptive and do not establish cause and effect.

## Files
| File | Purpose |
|---|---|
| Ecommerce_Customer_Churn_Analysis.sql | Original SQL workflow for database setup, cleaning, transformation, and initial analysis |
| [Business analysis queries](analysis/Business_Analysis_Queries.sql) | Organised business questions, advanced SQL, returns/refunds analysis, and data-quality checks |
| [Analysis summary graphic](images/sql-analysis-summary.svg) | Visual summary of selected project results |

## SQL techniques
Filtering, grouping, conditional aggregation, CASE expressions, joins, subqueries, HAVING, window functions, table updates, and data-quality validation.

## How to run
1. Open Ecommerce_Customer_Churn_Analysis.sql in MySQL Workbench and run it from the beginning.
2. After the initial workflow completes, open analysis/Business_Analysis_Queries.sql.
3. Run the analysis queries section by section. The analysis file depends on tables created by the original workflow.

## Scope and limitations
- Results depend on the included dataset and documented cleaning choices.
- Distance bands and order-count segments are project-specific rules.
- This is a descriptive SQL analysis, not a predictive machine-learning churn model.
- The calculated churn rate should not be read as a real company's current churn rate.

## Author
**Shanmukh Koyya** · [GitHub](https://github.com/shanmukhkoyya) · [LinkedIn](https://www.linkedin.com/in/shanmukh-koyya/) · [Email](mailto:shanmukhkoyya1234@gmail.com)
