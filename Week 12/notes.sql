-- Why Primary and Foreign Keys matter?
-- In a relational database, data lives in multiple tables, but those tables must connected somehow
-- We do this using keys

-- Primary Key(PK): A column (Or set of columns) that uniquely identify a row in a table
--> student_id, customer_id, product_id

-- Foreign Key (FK): A column in one table that referes to a PK in another table
-- A FK is just a PK in another table

-- Think of PK/FK like a parent-child relationships - a parent can have many children,
-- but each child points to one parent

-- Creating the parent table (Customers)
-- create table customers (
-- 	customer_id serial Primary Key,
-- 	name text,
-- 	email text,
-- 	city text);

--> Serial automatically numbers each new record
-- PRIMARY KEY ensures each id is unique and not null

-- Creating the Child Table (Orders)
-- create table orders(
-- 	id serial Primary Key,
-- 	customer_id int,
-- 	product text,
-- 	total numeric (10,2),
-- 	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
-- 	);

-- Customer_id linked each order back to a customer
-- The FK constraint prevents orphan records 
-- (You cant creat an order for a non-existent Customer)

-- Inserting sample data
-- INSERT INTO customers ("name", email, city)
-- Values
-- ('Alice', 'alice@email.com', 'Boise'),
-- ('Brian', 'brian@email.com', 'Twin Falls'),
-- ('Carmen', 'carmen@email.com', 'Jerome');

-- INSERT INTO orders (customer_id, product, total)
-- Values
-- (1, 'Laptop', 999.99),
-- (1, 'Mouse', 25.50),
-- (2, 'Headphones', 89.99),
-- (3, 'Monitos', 199.99);

-- Each order's customer_id points to an existing customer in customers.id
-- Viewing the Relationship with a JOIN

-- SELECT 
-- customers.name, --Selecting the name column from the customer table
-- customers.city, --Selecting the city column from the customer table
-- --want to select the product and total column from the orders table
-- orders.product,
-- orders.total
-- FROM orders
-- JOIN customers --JOIN Defaults to inner join, only rows matching customers will appear
-- ON orders.customer_id=customers.customer_id

-- PK uniquely identifies rows
-- FK links tables together
-- Many relationship types (1:1, 1:M, M:M)


