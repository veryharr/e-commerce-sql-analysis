# E-commerce SQL Data Analysis

A portfolio project exploring e-commerce sales, product performance, customer behavior, and revenue trends using SQL and PostgreSQL.

## Project Overview

The goal of this project is to answer practical business questions using SQL and turn query results into actionable business insights.

The analysis focuses on revenue, product performance, customer retention, monthly sales trends, valuable customers, and customer segmentation.


## Dataset

**Source:** [E-Commerce Sales & Customer Analytics Dataset — Kaggle](https://www.kaggle.com/datasets/maramsa/e-commerce-sales-and-customer-analytics-dataset)

**Database:** PostgreSQL

**Tables used:** `customers`, `orders`, `order_items`, `products`

The dataset was used to analyze sales performance, product categories, customer behavior, repeat purchases, and revenue trends.


## Tools & SQL Skills

- **PostgreSQL** — database querying and analysis
- **SQL JOINs** — combining related tables
- **Aggregate functions** — `SUM()`, `COUNT()`, `AVG()`
- **CTEs** — organizing complex queries
- **CASE WHEN** — conditional logic and segmentation
- **Window functions** — `NTILE()`, `LAG()`, `SUM() OVER()`
- **Date functions** — monthly revenue analysis and month-over-month comparisons

## Project Structure

```text
e-commerce-sql-analysis/
├── README.md
├── business_analysis_template.md
└── e-commerce-sql-analysis/
    ├── dataset/
    │   ├── customers.csv
    │   ├── order_items.csv
    │   ├── orders.csv
    │   ├── products.csv
    │   └── sales_cleaned.csv
    └── queries/
        ├── 01_business_overview.sql
        ├── 02_sales_analysis.sql
        ├── 03_product_analysis.sql
        ├── 04_customer_analysis.sql
        ├── 05_customer_retention.sql
        └── 06_advanced.sql
```

## Key Findings

- **Top Category:** Hair generated 126,301 in revenue, accounting for approximately 32.82% of total revenue.
- **Best-Selling Product:** Product_45 led sales with 171 units sold.
- **Leading Market:** Italy generated the highest country-level revenue at 91,076.
- **Customer Retention:** 86.32% of customers made repeat purchases.
- **Revenue Trends:** October recorded the largest month-over-month increase (+13,021), while September had the largest decline (-9,999).
- **Customer Segmentation:** High-Value Customers generated 60.57% of revenue among the 277 customers included in the segmentation.

## Business Recommendations

- Prioritize the strongest product categories and monitor best-selling products.
- Strengthen customer retention through loyalty programs and targeted offers.
- Investigate significant monthly revenue declines.
- Explore opportunities in the strongest markets.
- Review low-selling products before making pricing or assortment decisions.


## Notes & Limitations

- Revenue is not the same as profit; cost data is unavailable.
- Product performance is evaluated by units sold unless stated otherwise.
- Customer segmentation uses `NTILE(3)` based on customer revenue.
- The analysis found 285 customers in `orders`, but only 277 customers had matching records in `order_items`. Eight customers with 13 orders lacking corresponding item records were excluded from revenue-based segmentation.

## About This Project

This is my first Data Analytics portfolio project. It demonstrates my ability to use SQL and PostgreSQL to investigate business questions, analyze data, and communicate findings through clear conclusions and recommendations.
