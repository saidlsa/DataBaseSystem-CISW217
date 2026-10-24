---------------------------
--Week 10 HomeWork
--Name: Said Querevalu
---------------------------

-- 1. In this assigment, I download the products 10000 file 

-- https://drive.google.com/uc?id=1BE-dfkrb6oyLKDuqXAq2fDYMkDz2f9hM&export=download --

-- To create a table, I used this query (Should be work):

CREATE TABLE products (
"Index" integer primary key, 
"Name" varchar (75), 
"Description" text, 
"Brand" text, 
"Category" varchar (50), 
"Price" numeric, 
"Currency" varchar (5), 
"Stock" numeric, 
"EAN" text, 
"Color" varchar (20), 
"Size" text, 
"Availability" varchar (45), 
"Internal ID" numeric);

-- 2. Queries:

-- Find the average price per category ('ROUND' and 'CEIL')

SELECT
"Category", ROUND(AVG("Price")) as avg_price,
CEIL(AVG("Price")) as avg_price_ceil
from products
group by "Category";

-- Find the highest and lowest price using 'MAX()' and 'MIN()'

SELECT
MAX("Price") AS highest_price,
MIN("Price") AS lowest_price
FROM products;

-- Create a derived column FLOOR(price) to see price floored to whole numbers.

SELECT
"Name",
"Description",
"Price",
FLOOR("Price") AS price_floored
FROM products;

-- Convert the category to uppcercase using UPPER()

SELECT
UPPER ("Category") as category_upper,
"Price"
FROM products;

-- 3. Creating views:

-- Category, average price (rounded to 2 decimals), and total stock

CREATE VIEW category_overview AS
SELECT
"Category",
ROUND(AVG("Price"), 2) AS avg_price,
SUM("Stock") AS total_stock
FROM products
GROUP BY "Category"
HAVING AVG("Price") > 50; -- Only include categories where average price > 50 (In this case I use 'having' by the chapter 9: EXTRACTING INFORMATION BY GROUPING AND SUMMARIZING)

-- Query the view to display the results

SELECT * 
FROM category_overview;













