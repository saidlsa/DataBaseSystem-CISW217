--Part A – Importing Data
-- Creating a Table

--CREATE TABLE product(index integer PRIMARY KEY, name text, description text,
--brand varchar (100),
--category varchar(50),
--price numeric(5,2),
--currency text,
--stock integer,
--EAN numeric(15,2),
--color text, 
--size text,
--Availability text, 
--Interanl_ID numeric(3,0));

--Quick check:
--SELECT * 
--FROM product;

--Part B – Math & Stats Queries

--Multiply price * stock to find inventory value per product.

--select name, brand, price, stock, price*stock as inventory_value
--from product;

--Find the average price of all products

--select AVG (price) as Average_price
--from product;

-- Find the highest and lowest price.

--select MIN (price), max (price) 
--from product;

-- Count how many total products are in the dataset

--select COUNT (*)
--from product;

--Comment: This lab was a little stressed, just in import csv, i spent a good time with that, but i got it. 
--Also, it was clearly understandable, we use the theory and practice in this class.








