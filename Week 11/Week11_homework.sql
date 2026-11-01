-- Creating a new table:

CREATE TABLE products_big(
  index integer primary key, 
  name varchar (75), 
  description text , 
  brand text, 
  category varchar (50), 
  price numeric (10,2),
  currency varchar (5),
  stock numeric, 
  EAN text,
  color varchar (25),
  size text, 
  availability varchar (45), 
  internal_ID numeric);

-- verifing the load:
SELECT COUNT (*) 
FROM products_100000

-- Checking the first 5 rows
SELECT *
FROM products_100000 LIMIT 5

-- Baseline Query (No Index)
"Seq Scan on products_big  (cost=0.00..2789.15 rows=135 width=698) (actual time=0.013..7.177 rows=3019.00 loops=1)"
"  Filter: ((category)::text = 'Skincare'::text)"
"  Rows Removed by Filter: 96981"
"  Buffers: shared hit=2452"
"Planning Time: 0.059 ms"
"Execution Time: 7.259 ms"

-- Create an Index & Re-test
CREATE INDEX idx_big_category ON products_big (category);
ANALYZE products_big;
EXPLAIN ANALYZE SELECT * 
FROM products_big
WHERE category = 'Skincare';

--Questions:

--Did it switch to Index Scan? 
-- Yes, it did, the results were this:

"Bitmap Heap Scan on products_big  (cost=34.56..2645.44 rows=2873 width=159) (actual time=0.354..1.361 rows=3019.00 loops=1)"
"  Recheck Cond: ((category)::text = 'Skincare'::text)"
"  Heap Blocks: exact=1749"
"  Buffers: shared hit=1749 read=5"
"  ->  Bitmap Index Scan on idx_big_category  (cost=0.00..33.84 rows=2873 width=0) (actual time=0.218..0.218 rows=3019.00 loops=1)"
"        Index Cond: ((category)::text = 'Skincare'::text)"
"        Index Searches: 1"
"        Buffers: shared read=5"
"Planning:"
"  Buffers: shared hit=57 read=1"
"Planning Time: 0.161 ms"
"Execution Time: 1.450 ms"

--Is execution faster?
--It took a little while, but it was quick.

--Compound Index for Selective Queries

--Query:
CREATE INDEX idx_big_cat_price ON products_big (category, price);
ANALYZE products_big;
EXPLAIN ANALYZE
SELECT * FROM products_big
WHERE category = 'Skincare' AND price > 50;
  
--Result

"Bitmap Heap Scan on products_big  (cost=35.45..2660.33 rows=2848 width=158) (actual time=0.341..1.723 rows=2860.00 loops=1)"
"  Recheck Cond: ((category)::text = 'Skincare'::text)"
"  Filter: (price > '50'::numeric)"
"  Rows Removed by Filter: 159"
"  Heap Blocks: exact=1749"
"  Buffers: shared hit=1754"
"  ->  Bitmap Index Scan on idx_big_category  (cost=0.00..34.74 rows=2993 width=0) (actual time=0.189..0.189 rows=3019.00 loops=1)"
"        Index Cond: ((category)::text = 'Skincare'::text)"
"        Index Searches: 1"
"        Buffers: shared hit=5"
"Planning:"
"  Buffers: shared hit=55 read=1"
"Planning Time: 0.207 ms"
"Execution Time: 1.823 ms"

-- Short Reflection

--What changed between the “no index” and “with index” plans?

  --Without an index, PostgreSQL performed a Seq Scan: it checked all 100,000 rows and discarded 96,981. 
  --With an index, it used the index to locate the Skincare rows directly. 
  --The execution time dropped from 7.259 ms to 1.450 ms.

--When did PostgreSQL choose an index?

  --It chose this when the query requested only a small portion of the table. 
  --The "Skincare" dataset consists of 3,019 rows (about 3%)
  --so it was more efficient to use the index than to read the entire table.

--How did the larger table size affect the optimizer compared to your smaller tables?

  --With 100,000 rows, reading the entire table is quite costly, so an index pays off. 
  --In my small tables, the whole table would fit onto one or two pages, and the optimizer almost always chose a Seq Scan.


-- Notes on the 3 different types of Table Relationship

  --One to one: a key value matches at most one row in the other table (e.g., two census tables with 51 rows each, joined on state).

  --One to many: one row in a table matches many rows in another (e.g., one manufacturer has many car models).
  
  --Many to many: rows on both sides can match several rows on the other, so a third table links them (e.g., players, positions, players_positions).






















