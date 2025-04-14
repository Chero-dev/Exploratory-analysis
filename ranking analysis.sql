--which 5  product  generates the highest revenue
select top 5 product_name,SUM(sales_amount)total_sales from [gold.fact_sales] f
left join [gold.dim_products] p
on f.product_key = p.product_key
group by product_name
order by total_sales desc

--what is the 5 worst performing products in terms of sales
select top 5 product_name,SUM(sales_amount)total_sales from [gold.fact_sales] f
left join [gold.dim_products] p
on f.product_key = p.product_key
group by product_name
order by total_sales 

---what is the 5 worst performing subcategory in terms of sales
select top 5 subcategory,SUM(sales_amount)total_sales from [gold.fact_sales] f
left join [gold.dim_products] p
on f.product_key = p.product_key
group by subcategory
order by total_sales 

---what is the 5 best  performing products insterms of sales
select  top 5 product_name,SUM(sales_amount)total_sales ,
RANK () OVER ( order by SUM(sales_amount )desc) AS rank_products 
from [gold.fact_sales] f
left join [gold.dim_products] p
on f.product_key = p.product_key
group by  product_name

---what is the  2 best  performing category insterms of sales

select top 2  category, SUM(sales_amount)as total_sales,
ROW_NUMBER() OVER (order by SUM(sales_amount)desc) as rank_category
from [gold.fact_sales] f
left join [gold.dim_products] p
on  f.product_key = p.product_key
group by category


