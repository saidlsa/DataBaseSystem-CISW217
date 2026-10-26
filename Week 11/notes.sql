-- WHat is an index?
-- An index is like a table of contents for a database
-- It helps SQL find rows faster without scanning the entire table

--How to create a basic index?
create index --this tells our database to build our index
idx_category --this is the name of our index idx means index 
--and everythinhg after is what the index is being applie to
on products(category)
--We're creating the index on the category column in the products table
--Overall this query builds an index on the category column
-- SQL will use it automatically when it decides its faster then a full scan


---------------------------------------------------------------------------
  Non_index_Scan
---------------------------------------------------------------------------
  
--Analyze Query Performance
--Use EXPLAIN ANALYZE before and after creating the index
EXPLAIN ANALYZE 
SELECT * FROM products
WHERE category='Skincare';

--We use EXPLAIN ANALYZE to 
--See if your index is helping
--If we see Seq Scan, SQL is scanning the whole table
--If we see Index Scan, its using the index we made to locate matches faster


-----------------------------------------------------------------------------
Index_Scan
---------------------------------------------------------------------------

-- Forcing SQL to use INDEX SCAN
SET enable_seqscan=OFF;
EXPLAIN ANALYZE 
SELECT * 
FROM products
WHERE category='Skincare';

------------------------------------------------------------------------------

--Small tables don't benefit from Indexes
--Which the entire table fits into memory, 
--its faster for SQL to read all rows directly than perform multiple index lookups

--Indexes have lookup overhead
--Each index lookup adds extra work, 
--PostgreSQL has to look for the index, then retrieve the rows, then piece them back together

--SQL chooses whatever is faster, this may result in having a SEQ scan rather than an index scan
--Indexes are extremely useful when databases have thousands or millions of rows

------------------------------------------------------------------------------

--Questions:

--How many records are in your table?
-- 1000
--Why might the number of records affect query performance?
-- To verify that the table contains the complete information we need for later use

--Did PostgreSQL use a sequential scan (Seq Scan)?
-- Yes, it did
--How many records were returned?
-- 10 records
--What was the execution time?
-- 0.085

--Did PostgreSQL use an Index Scan, Bitmap Index Scan, or continue using a Seq Scan?
--Yes, it did
--Was the execution time faster or slower?
--Faster, the execution Time is 0.050
--Why might PostgreSQL choose not to use an index even when one exists?
-- For easier searching when looking within the table

--Did disabling sequential scans change how PostgreSQL executed your query?
--Not much; it just changes the time at which the query is executed.

--Why might PostgreSQL normally prefer a sequential scan over an index scan?
--Mainly due to the efficiency and speed with which the result is displayed.
