<div align="center"><h1>🛒 CUSTOMER CHURN CONTROL ROOM</h1><b>SQL investigation · E-commerce retention</b><br/><img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white"/> <img src="https://img.shields.io/badge/SQL-ANALYSIS-236B83?style=for-the-badge"/></div>

## Dataset scoreboard
| Cleaned rows | Active | Churned | Churn rate |
|---:|---:|---:|---:|
| 5,628 | 4,680 | 948 | **16.84%** |
| Active average tenure | Churned average tenure | | |
| 11.09 | 3.18 | | |

**53.59%** of the churned group has a complaint flag. Metrics describe the supplied project dataset only.

## Investigation pipeline
<p align="center">📥 Source → 🧹 Clean → 🗃️ SQL tables → 🔎 Segment → ✅ QA → 📊 Findings</p>

## Query workbench
| Script | Purpose |
|---|---|
| [Main SQL](Ecommerce_Customer_Churn_Analysis.sql) | Database and project table preparation |
| [30 business queries](analysis/Business_Analysis_Queries.sql) | KPIs, behaviour, segments and QA |
| [Documentation index](docs/README.md) | Detailed query map |

<details><summary><b>Explore the analysis modules</b></summary>
1. Customer status and churn rate<br/>2. Tenure and complaint comparisons<br/>3. Customer/category segmentation<br/>4. Returns JOIN practice<br/>5. Duplicate, NULL and outlier checks
</details>

> [!CAUTION]
> The main script drops and recreates only customer_returns and customer_churn. It does not drop the ecomm database or unrelated tables. Back up these project tables and use a practice database.

**Returns data warning:** Eight inserted return/refund rows are illustrative JOIN examples, not verified transactions. Do not use them to calculate a real return rate.

**Cleaning note:** WarehouseToHome values 126 and 127 were excluded as extreme observations for this exercise. Validate thresholds with business context.

**Interpretation:** These are descriptive associations, not proof that complaints or tenure cause churn. This is not a predictive model.