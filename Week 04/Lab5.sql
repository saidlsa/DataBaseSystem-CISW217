
--Part 1 — Create the Starting Table
    CREATE TABLE products (
        id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        product_name varchar(100),
        quantity integer
    );
--Part 2 — Create the Starting Table
    INSERT INTO products (product_name, quantity)
    VALUES
    	('Computer',16),
    	('Tablet',28),
    	('Phone', 94),
    	('Smartwatch', 62),
    	('Headphones',47),
    	('Charger', 35);

--Part 3 — Add New Data Types

--Adding a text column:
    alter table products
    add column description text;

--Adding a Numeric column:
    alter table products
    add column price numeric(7,2);

--Adding a real Column:
    alter table products
    add column rating real;

--Adding a timestamp with time zone column:
    alter table products
    add column last_update timestamp with time zone;

--Adding a boolean column
    alter table products
    add column in_stock boolean;

--Verifying that the table is up to date:
    SELECT * 
    FROM public.products;

--Part 4 — Update Your Data
--Computer row:
    UPDATE products
    SET description='Dell Optiplex 3000',
    	price= 419.99,
    	rating=3.6,
    	last_update='2026-09-11 17:28:37-4',
    	in_stock= FALSE
    WHERE product_name='Computer';

--Tablet Row:
    UPDATE products
    SET description='Lenovo Tab M11',
    	price= 245.00,
    	rating=4.4,
    	last_update='2026-09-12 11:53:04-4',
    	in_stock= TRUE
    WHERE product_name='Tablet';

--Phone row:
    UPDATE products
    SET description='Apple iPhone 15',
    	price= 420.09,
    	rating=3.8,
    	last_update='2026-09-12 14:21:38-4',
    	in_stock= TRUE
    WHERE product_name='Phone';

--Smartwatch row:
    UPDATE products
    SET description='Galaxy Watch9 44MM',
    	price= 459.99,
    	rating=4.2,
    	last_update='2026-09-12 17:58:12-4',
    	in_stock= FALSE
    WHERE product_name='Smartwatch';

--headphones row:
    UPDATE products
    SET description='Sony WH-CH720N',
    	price= 65.99,
    	rating=4.3,
    	last_update='2026-09-12 22:58:12-3',
    	in_stock= TRUE
    WHERE product_name='Headphones';

--charger row:
    UPDATE products
    SET description='USB C Laptop Charger',
    	price= 14.39,
    	rating=4.4,
    	last_update=now(),
    	in_stock= FALSE
    WHERE product_name='Charger';

--Part 5 — Test Numeric Behavior

--Product: Phone
--Query update: 
    UPDATE products
    SET price = 399.994
    WHERE product_name = 'Phone';

--Query table:
    SELECT product_name, price
    FROM products;

--Part 6 — Final Queries

--Display all products and columns.:
    SELECT *
    FROM products;

--Display only product_name, price, and rating:
    SELECT product_name, price, rating
    FROM products;

--Display products with a price greater than a value of your choice:
    SELECT product_name, price
    FROM products
    WHERE price >200;

--Display only products where in_stock = TRUE:
    SELECT product_name, in_stock
    FROM products
    WHERE in_stock='TRUE';

--Sort products from highest price to lowest price:
    SELECT product_name,description, price
    FROM products
    ORDER BY price DESC;
    

















