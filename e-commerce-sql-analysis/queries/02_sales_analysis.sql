-- ==========================================
-- 02_sales_analysis.sql
-- Business Questions: Sales Analysis
-- This section analyzes sales performance across time, countries, and order statuses,
-- including revenue, order volume, AOV, and sales trends.
-- ==========================================


-- TASK 01

-- Identify the months that generated the highest Revenue.


select SUM(oi.price  * oi.quantity ),
	DATE_TRUNC( 'month', o.order_date::DATE) as month_revenue
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	group by 2 
	order by 1 DESC
	;


-- TASK 02

-- Identify the weakest month by Revenue.


select SUM(oi.price  * oi.quantity ),
	DATE_TRUNC( 'month', o.order_date::DATE) as month_revenue
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	group by 2 
	order by 1 ASC
	;


-- TASK 03

-- Identify the countries that generated the highest Revenue.


select sum(oi.quantity*oi.price)
	, c.country 
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	join customers c  on c.customer_id = o.customer_id 
	group by 2
	order by 1 desc
	;

-- TASK 04

-- Calculate the Average Order Value (AOV) for each country.


select c.country 
	, sum(oi.quantity*oi.price)/Count(distinct o.order_id) as aov
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	join customers c  on c.customer_id = o.customer_id 
	group by 1
	order by 2 DESC

	;



-- TASK 05

-- Identify the most frequent order statuses.
	
	select o.status 
		, count(o.status) as koll
	from orders o 
	group by 1 
	order by 2 desc
	;

-- TASK 06

-- Calculate the percentage of orders for each status.

select o.status 
		, count(o.status) as koll
		, COUNT(o.order_id) * 100.0 / (
    SELECT COUNT(*)
FROM orders
	
)
	from orders o 
	group by 1
	order by 2 desc
	;

-- TASK 07

-- Compare the number of orders and Revenue by year.


select DATE_TRUNC( 'year', o.order_date::DATE) as year
	, SUM(oi.price * oi.quantity) as revenue
	, count(distinct o.order_id ) as amount_of_orders
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	group by 1
	order by 2 DESC
	;


-- TASK 08

-- Calculate monthly Revenue and the number of orders.

SELECT DATE_TRUNC('month', o.order_date::DATE) AS month,
       SUM(oi.price * oi.quantity) AS revenue,
       COUNT(DISTINCT o.order_id) AS amount_of_orders
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY 1
ORDER BY 1 ASC;


-- TASK 09

-- Calculate the average product price for each month.


select DATE_TRUNC( 'month', o.order_date::DATE) as month
	, round(AVG(oi.price), 3) as AVG_price
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	group by 1
	order by 1 ASC
	;



-- TASK 10

-- Identify the month with the highest Revenue.

select DATE_TRUNC( 'month', o.order_date::DATE) as month
	, sum(oi.price*oi.quantity )	as ravenue
	from orders o 
	join order_items oi on o.order_id = oi.order_id 
	group by 1
	order by 2 desc
	limit 1
	;
