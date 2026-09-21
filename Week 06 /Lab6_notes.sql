-- CREATE TABLE products_raw (id integer PRIMARY KEY, product_name varchar (20), brand varchar (20), category text, price numeric (10,2), stock integer);

--TWO ways to import CSV Files
--1st Option is with SQL
--copy products_raw FROM 'C:\Users\1011218\Downloads\products_raw.csv' DELIMITER ',' CSV HEADER
-- SELECT * FROM products_raw LIMIT 5; --LIMIT puts a constraint on how rows appear

--Steps to import CSV Files
--Step 1 make table template (Creating table in relation to CSV column names and data types)
--Step 2 import using GUI (Right click on table, click import/export data)
--Confirm file name, delimiter , header is turned on
--After import is successful view table via Query select * from table_name LIMIT 5

-- Basic Aritmatic in Queries

--select price, stock, price*stock AS inventory_value
--from products_raw LIMIT 5;

--select price+5 as Price_Increased
--from products_raw LIMIT 5;

--Built in functions that postgre has
--SUM
--SELECT SUM(price*stock)as total_inventory_value
--from products_raw

--AVG, average product price
--select AVG(price) as Average_Price from products_raw

--Finding the highest and lowest value, we will use MIN and MAX
--select MIN(price), MAX(price)
--from products_raw

--How to see how many product are in a dataset?
--COUNT
--SELECT COUNT(*)
--FROM products_raw

--Filtering with MATH
--Show me products that cost more then $500
--select * from products_raw
--WHERE price>500;

--Categories with total stock > 200
--select category, SUM(stock)
--from products_raw
--GROUP BY category
--HAVING SUM(stock)>50;

