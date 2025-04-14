--Database exploration

--Explore all objects in the database
select * from  INFORMATION_SCHEMA.TABLES


--Explore all the columns in a database
select * from  INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'gold.dim_customers'