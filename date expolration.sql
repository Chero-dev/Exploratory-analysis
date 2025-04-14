--FIND date of the first and last order
--how many years of sales available
select 
MIN(order_date)AS First_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year,MIN(order_date),MAX(order_date))as lifespan
from [gold.fact_sales]

--FIND date of the first and last order
--how many months of sales available
select 
MIN(order_date)AS First_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(month,MIN(order_date),MAX(order_date))as lifespan
from [gold.fact_sales]

--Find the youngest and the oldest customer 
select
MIN(birthdate) as oldest_birthdate,
MAX(birthdate) as youngest_birthdate,
DATEDIFF(year,MIN(birthdate),GETDATE())AS oldest_AGE,
DATEDIFF(year,MAX(birthdate),GETDATE())AS youngest_AGE
from [gold.dim_customers]