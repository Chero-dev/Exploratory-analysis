select * from [gold.fact_sales]
--find the total sales
select SUM( sales_amount)as total_sales from 
[gold.fact_sales] 
--find how many items where sold
select SUM(quantity)as total_item_sold
from [gold.fact_sales]
--total number of ordes
select  COUNT(DISTINCT order_number)as total_orders
from [gold.fact_sales]
--total number of products
--select  COUNT(DISTINCT product_key) as total_products
--from gold.dim_products
--total number of customers
select count(customer_key) as total_customers
from [gold.dim_customers]
--total number of customers that have place an order
select  COUNT(DISTINCT customer_key) as total_customers
from [gold.fact_sales]


--Generate a report that show all the key metrics of the business
select 'Total_Sales' as measure_name , SUM( sales_amount)as measure_value from [gold.fact_sales] 
UNION ALL
select 'Total_Quantity' as measure_name , SUM(quantity)as measure_value from [gold.fact_sales]
UNION ALL
select 'Total_Orders' as measure_name , count( DISTINCT order_number)as measure_value from [gold.fact_sales]
UNION ALL
--select 'Total_products' as measure_value , COUNT(DISTINCT product_key)as measure_value from gold.dim_products 
--UNION ALL
select 'Nr-of-customers' as measure_name , COUNT(customer_key)as measure_value from [gold.dim_customers]
UNION ALL
select 'Nr_of_customers' as measure_name , COUNT(DISTINCT customer_key)as measure_value from [gold.fact_sales] 