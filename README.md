<p align="center"><img src="assets/readme-hero.svg" width="100%" alt="Customer churn SQL analysis"/></p>

<div align="center">

# THE RETENTION INVESTIGATION
### E-commerce customer churn · MySQL

<img src="https://img.shields.io/badge/SQL-MYSQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/>
<img src="https://img.shields.io/badge/CLEANED%20ROWS-5%2C628-176B72?style=for-the-badge"/>
<img src="https://img.shields.io/badge/CHURN-16.84%25-9B3A3A?style=for-the-badge"/>

</div>

## At a glance

| <div align="center">5,628</div> | <div align="center">4,680</div> | <div align="center">948</div> | <div align="center">16.84%</div> |
|:---:|:---:|:---:|:---:|
| Cleaned customers | Active | Churned | Churn rate |

## The investigation path

```mermaid
flowchart TD
 A[(Customer CSV)] --> B[Inspect & clean]
 B --> C[(MySQL project tables)]
 C --> D[Build churn KPIs]
 D --> E[Compare tenure & complaints]
 E --> F[Segment customers]
 F --> G[Run quality checks]
```

## What the analysis surfaced

| Signal | Active customers | Churned customers |
|---|---:|---:|
| Average tenure | 11.09 | 3.18 |

**53.59%** of churned customers had the complaint flag set in this dataset. This is an association, not proof of cause.

## Choose a workbench

<table>
<tr><th>START HERE</th><th>GO DEEPER</th><th>READ THE METHOD</th></tr>
<tr><td><a href="Ecommerce_Customer_Churn_Analysis.sql">Main SQL script ↗</a><br/><sub>Database and table setup</sub></td><td><a href="analysis/Business_Analysis_Queries.sql">Analysis queries ↗</a><br/><sub>KPIs, segments and checks</sub></td><td><a href="docs/README.md">Documentation index ↗</a><br/><sub>Query-by-query guide</sub></td></tr>
</table>

<details><summary><strong>Investigation modules</strong></summary>

1. Customer status and churn-rate calculation
2. Tenure and complaint-flag comparison
3. Customer and category segmentation
4. JOIN practice using return examples
5. Duplicate, NULL and outlier checks

</details>

> [!CAUTION]
> The main script drops and recreates only `customer_returns` and `customer_churn`. It does not drop the `ecomm` database or unrelated tables. Back up these project tables and use a practice database.

> [!NOTE]
> Eight inserted return/refund rows are illustrative JOIN examples, not verified transactions. Do not use them to calculate a real return rate. WarehouseToHome values 126 and 127 were excluded as extreme observations for this exercise; validate thresholds with business context.

**Scope boundary:** This is descriptive analysis, not a predictive model. It does not prove that tenure or complaints cause churn.