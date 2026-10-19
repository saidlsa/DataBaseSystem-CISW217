--What are functions in SQL?
--Functions=Built-in Operations that perform a specific task inside a query

--Common Built in functions
--ROUND(), Round a number to n decimals. Ex: SELECT ROUND (3.14159,2)   RESULT: 3.14
--CEIL()/FLOOR(), Round up or down.   Ex: SELECT CEIL(2.1); -> 3

--Text functions
--UPPER(text), converts text to uppercase Ex: SELECT UPPER(category)
--LOWER(text), converts text to lowercase Ex: SELECT LOWER(product_name)
--LENGTH(text), Returns character count Ex: SELECT Length(product_name)

--DATE FUNCTIONS
--NOW(), current timestamp       Ex: SELECT NOW()
--CURRENT_DATE, Today's date     Ex: SELECT CURRENT_DATE;
--AGE(), returns difference between 2 dates   Ex: SELECT AGE('2025-10-20', '2000-05-15'); Output: 25 yrs 5 mos 5 days
--Date functions are often used for reports or logs


--Average price by category
-- SELECT category,
--want to find the average price but I want it to be rounded
-- ROUND(AVG(price),2) as avg_price
-- from products
-- group by category
-- order by avg_price DESC;

--VIEWS
--View is a saved SQL Query that acts like a virtual table
--It doesn't store new data, it just stores a query definition

-- create view product_summary AS
-- SELECT category, 
-- ROUND(AVG(price), 2) AS avg_price,
-- SUM(Stock) AS total_stock
-- FROM products
-- GROUP BY category;
