-- ==========================================
-- 03_product_analysis.sql
-- Business Questions: Product Analysis
-- This section analyzes product and category performance,
-- including revenue, units sold, pricing, product popularity, and top-performing products.
-- ==========================================


-- TASK 01

-- Identify the top 10 products by total Revenue.

select p.product_name 
	, SUM(oi.quantity*price) as revenue
from products p
join order_items oi on p.product_id = oi.product_id
group by p.product_name 
order by 2 desc
limit 10
;



-- TASK 02

-- Identify the top 10 products by total units sold.

	
	select p.product_name 
		, SUM(oi.quantity) as total_sold
	from products p
	join order_items oi on p.product_id = oi.product_id
	group by p.product_name 
	order by 2 desc
	limit 10
;

-- TASK 03

-- Calculate total Revenue for each product category.


select p.category 
	, SUM(oi.quantity* oi.price) as total_sold
from products p
join order_items oi on p.product_id = oi.product_id
group by p.category 
order by 2 desc
;


-- TASK 04

-- Calculate the number of unique products in each category.


select p.category 
	, COUNT(distinct oi.product_id ) as unique_products
from products p
join order_items oi on p.product_id = oi.product_id
group by p.category 
order by 2 desc
;

-- TASK 05

-- Calculate the average product price for each category.


select p.category 
	, ROUND(AVG(oi.price), 0) as avg_price
from products p
join order_items oi on p.product_id = oi.product_id
group by p.category 
order by 2 desc
;

-- TASK 06

-- Identify the category with the highest Average Order Value (AOV).

select p.category 
	, sum((oi.quantity* oi.price)) / COUNT(distinct oi.order_id  ) as AOS
from products p
join order_items oi on p.product_id = oi.product_id
group by p.category 
order by 2 desc
;

-- TASK 07

-- Identify products with high sales volume but relatively low prices.


select p.product_name 
	, sum(oi.quantity ) as sales
from products p
join order_items oi on p.product_id = oi.product_id

group by 1
having SUM(oi.quantity) > 130 and AVG(oi.price) < 65
order by 2 desc
;

-- TASK 08

-- Identify products that have never been sold.

select p.product_id 
	, p.product_name 
	, p.category 
	from products p
left join order_items oi on p.product_id = oi.product_id
where oi.product_id is NULL
;
-- TASK 09

-- Calculate key performance metrics for each category:
-- number of products, total units sold, total Revenue, and average price.

SELECT p.category,
       COUNT(DISTINCT p.product_id) AS number_of_products,
       SUM(oi.quantity) AS total_units_sold,
       SUM(oi.quantity * oi.price) AS revenue,
       ROUND(AVG(oi.price), 2) AS avg_price
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY 1
ORDER BY revenue DESC;

-- TASK 10

-- Identify the top 3 products by Revenue within each category.

WITH product_revenue AS (
    SELECT p.category,
           p.product_name,
           SUM(oi.quantity * oi.price) AS revenue
    FROM products p
    JOIN order_items oi
        ON p.product_id = oi.product_id
    GROUP BY 1, 2
),
ranked_products AS (
    SELECT category,
           product_name,
           revenue,
           ROW_NUMBER() OVER (
               PARTITION BY category
               ORDER BY revenue DESC
           ) AS rank
    FROM product_revenue
)
SELECT category,
       product_name,
       revenue,
       rank
FROM ranked_products
WHERE rank <= 3
ORDER BY category, rank;