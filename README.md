E-commerce SQL Data Analysis
A portfolio project exploring e-commerce sales, product performance, customer behavior, and revenue trends using PostgreSQL.
Project Overview
The goal of this project is to answer practical business questions with SQL and turn query results into clear insights and recommendations. The analysis covers revenue by product category and country, best-selling and low-selling products, repeat purchases, monthly revenue changes, valuable customers, and customer segmentation.
Dataset
- Dataset: E-Commerce Sales & Customer Analytics Dataset (Kaggle)
- Database: PostgreSQL
- Tables used: customers, orders, order_items, products
Key fields used in the analysis include:
Table	Relevant fields	Purpose
customers	customer_id, country	Customer identification and country-level analysis
orders	order_id, customer_id, order_date	Order history and time-based analysis
order_items	order_id, product_id, price, quantity	Product sales and revenue calculations
products	product_id, product_name, category	Product and category performance


Revenue is calculated as SUM(price * quantity) using order-item data. The raw dataset is not included in this repository; load the source data into PostgreSQL before running the queries.
Tools & SQL Skills
- PostgreSQL — querying relational data
- DBeaver — writing and executing SQL
- JOIN and LEFT JOIN
- Aggregations: SUM(), COUNT(), MIN(), MAX()
- GROUP BY, ORDER BY, HAVING, and CASE WHEN
- Common Table Expressions (CTEs) using WITH
- Window functions, including NTILE() and LAG()
- Date-based analysis with DATE_TRUNC()
- Revenue shares, customer segmentation, and month-over-month comparisons
Project Structure
e-commerce-sql-analysis/
├── README.md
├── business_analysis_template.md
└── e-commerce-sql-analysis/
    ├── dataset
    |    ├──customers.csv
    |    ├── order_items.csv
    |    ├── orders.csv
    |    ├── products.csv
    |    └──  sales_cleaned.csv
    | 
    └── queries
         ├── 01_business_overview.sql
         ├── 02_sales_analysis.sql
         ├── 03_product_analysis.sql
         ├── 04_customer_analysis.sql
         ├── 05_customer_retention.sql
         └── 06_advanced.sql
The SQL folder contains queries organized around these topics:
- Business overview and key metrics
- Sales and monthly revenue trends
- Product and category performance
- Customer value and purchasing behavior
- Customer retention and repeat purchases
- Advanced SQL analysis
The [`business_analysis_template.md`](business_analysis_template.md) file documents the business questions, findings, and recommendations based on the SQL results.
Key Findings
Area	Finding
Product categories	Hair generated the highest category revenue: 126,301 (about 32.82% of total revenue).
Best-selling products	Product_45 led by units sold, with 171 units.
Countries	Italy generated the highest revenue among the five analyzed countries: 91,076.
Customer retention	246 of 285 customers (86.32%) made more than one purchase.
Revenue trend	Revenue fluctuated during 2024. September had the largest month-over-month decline: 9,999 (27.49%).
Customer segments	The High-Value segment generated 233,120 (60.57%) of revenue among the 277 customers included in the revenue-based segmentation.


Business Recommendations
1. Prioritize availability and performance analysis for the Hair category and best-selling products.
2. Investigate the largest monthly revenue declines, especially in September, November, and February.
3. Support customer retention with relevant offers and investigate how to encourage one-time buyers to return.
4. Focus on customer loyalty in the High-Value segment while assessing opportunities to increase spending among other customers.
5. Review low-selling products using sales, revenue, demand, and cost data before making assortment decisions.
How to Run
1. Install PostgreSQL and connect to your database using DBeaver or another SQL client.
2. Create or select a database for the project.
3. Import the dataset and ensure the four tables and field names match the schema described above.
4. Open a SQL file from the [`e-commerce-sql-analysis/`](e-commerce-sql-analysis/) folder.
5. Execute the query against your connected database and review the results.
Some scripts depend on tables and columns being named as described in the Dataset section. The raw data must be loaded before the analysis queries can run.
Notes & Limitations
- The analysis covers records from 2024; longer-term conclusions would require additional time periods.
- Revenue is not the same as profit. Cost data is not available in this analysis, so profitability cannot be determined.
- “Underperforming products” are identified by units sold, not by profit margin.
- Customer segments were created with NTILE(3) based on customer revenue; they are relative spending groups, not predefined business segments.
- The repeat-purchase analysis reports 285 customers, while the revenue-based segmentation contains 277. This difference should be validated against the raw data before the results are used for business decisions.
- The recommendations are based on observed patterns; further analysis is needed to confirm the causes of revenue fluctuations.
Author
Created as a personal portfolio project to practise SQL-based data analysis and communicate business insights.
Roman Veryha
