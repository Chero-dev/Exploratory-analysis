--Exploring all countries our customers come from
select DISTINCT(country) from 
[gold.dim_customers]

--exporing all categories 'the major divisions '
select DISTINCT product_name,category,subcategory from 
[gold.dim_products]
order by 1,2,3

select * from [gold.dim_products]