---------------------------
--Week 5 HomeWork
--Name: Said Querevalu
---------------------------

-- Part 1 — Create a Table
    CREATE TABLE teachers_sise (
        id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        first_name varchar(50),
        last_name varchar(50),
        age integer,
    	  campus varchar (15)
    );

    INSERT INTO teachers_sise (first_name, last_name, age, campus)
    VALUES 
      ('Norian', 'Montesinos', 25, 'Comas'),
      ('Maricielo', 'Chavez', 23, 'San Miguel'),
      ('Sally', 'Loyola', 23, 'San Miguel'),
      ('Fernando', 'Chugden', 27, 'Comas'),
      ('Britanie', 'Celestino', 24, 'Comas'),
      ('Heydi', 'Espinoza', 28, 'Puente Piedra'),
      ('Anabel', 'Guevara', 33, 'San Miguel'),
      ('Lincer', 'Reategui', 30, 'Puente Piedra'),
      ('Jerson', 'Carvajal', 20, 'San Miguel');


-- Part 2 — Add New Data Types


-- Adding a date column:
    alter table teachers_sise
    add column hire_date date;

-- Adding a timestamp with time zone column:
    alter table teachers_sise
    add column created_at timestamp with time zone;

-- Adding a salary column:
    alter table teachers_sise
    add column salary numeric (10, 2);

-- Adding a boolean column:
    alter table teachers_sise
    add column is_full_time boolean;

-- Adding an interval column:
    alter table teachers_sise
    add column office_hours_duration interval;


-- Part 3 — Update the Records

-- Teacher Norian:
    UPDATE teachers_sise
    SET hire_date='2022-07-14',
    	created_at='2022-07-22 17:25:39-6',
    	salary=1872.38,
    	is_full_time= TRUE,
    	office_hours_duration= '23 hours'
    WHERE first_name = 'Norian';

-- Teacher Maricielo:
    UPDATE teachers_sise
    SET hire_date='2023-02-23',
    	created_at='2023-02-27 14:11:47-6',
    	salary=1275.63,
    	is_full_time= FALSE,
    	office_hours_duration= '17 hours'
    WHERE first_name = 'Maricielo';

-- Teacher Sally:
    UPDATE teachers_sise
    SET hire_date='2023-03-18',
    	created_at='2023-03-22 11:14:39-7',
    	salary=2341.89,
    	is_full_time= TRUE,
    	office_hours_duration= '27 hours'
    WHERE first_name = 'Sally';

-- Teacher Fernando:
    UPDATE teachers_sise
    SET hire_date='2021-10-06',
    	created_at='2021-10-10 09:26:50-8',
    	salary=1574.26,
    	is_full_time= TRUE,
    	office_hours_duration= '20 hours'
    WHERE first_name = 'Fernando';

-- Teacher Britanie:
    UPDATE teachers_sise
    SET hire_date='2021-06-26',
    	created_at='2022-06-30 10:33:18-6',
    	salary=1803.47,
    	is_full_time= TRUE,
    	office_hours_duration= '22 hours'
    WHERE first_name = 'Britanie';

-- Teacher Heydi:
    UPDATE teachers_sise
    SET hire_date='2024-11-11',
    	created_at='2024-11-13 13:20:55-4',
    	salary=878.28,
    	is_full_time= FALSE,
    	office_hours_duration= '14 hours'
    WHERE first_name = 'Heydi';

-- Teacher Anabel:
    UPDATE teachers_sise
    SET hire_date='2025-05-10',
    	created_at='2025-05-11 15:36:44-6',
    	salary=1773.49,
    	is_full_time= TRUE,
    	office_hours_duration= '21 hours'
    WHERE first_name = 'Anabel';

-- Teacher Lincer:
    UPDATE teachers_sise
    SET hire_date='2025-07-22',
    	created_at='2025-07-26 14:02:39-6',
    	salary=2154.78,
    	is_full_time= TRUE,
    	office_hours_duration= '25 hours'
    WHERE first_name = 'Lincer';

-- Teacher Jerson:
    UPDATE teachers_sise
    SET hire_date='2026-04-10',
    	created_at='2026-04-16 18:42:28-9',
    	salary=914.36,
    	is_full_time= FALSE,
    	office_hours_duration= '15 hours'
    WHERE first_name = 'Jerson';


-- Part 4 — Rename Something
--Renaming 'office_hours_duration' to 'weekly_class_hours'
alter table teachers_sise
RENAME COLUMN office_hours_duration TO weekly_class_hours

-- Part 5 — Queries

--A SELECT *

    SELECT *
    FROM teachers_sise;

--A query selecting specific columns

    SELECT first_name, last_name, campus, is_full_time
    FROM teachers_sise;

--A WHERE condition

    SELECT first_name, last_name, is_full_time
    FROM teachers_sise
    WHERE is_full_time='FALSE';

--An ORDER BY

    SELECT first_name, last_name, hire_date, created_at, weekly_class_hours
    FROM teachers_sise
    ORDER BY created_at ASC;

--A query that uses one of the new data types in its condition or output

    SELECT first_name, last_name, campus, hire_date, salary
    FROM teachers_sise
    WHERE campus='San Miguel'
    ORDER BY hire_date ASC;


-- Part 6 – Quick Skim (Chapter 5 & 6)

--2 new concepts:
-- COPY: I learned that PostgreSQL's COPY command can be used to import and export large amounts of data 
-- using CSV or other delimited text files. This is useful because you don't have to insert every row individually.

-- Aggregate functions: I learned that functions such as SUM() and AVG() can calculate information from many rows at once. 
-- I also learned about the median, which can sometimes represent a dataset better than the average when there are very large or small outliers.

--One Question:
--For reading 6 of the book, in basic mathematics, my question would be this:
--How do I decide whether to use the mean or the median when analyzing real-world data, that is, in what situations could it be used?


-- Short Reflection


-- Which new data type did you find the most useful?

-- The most useful for me is 'date' and 'timestamp with time zone'.
-- At first glance they might seem the same, but they can actually have completely different functions when used.
-- Like what I did in this table, where I used 'date' as the date the teacher was hired, and 'timestamp with time zone'
-- so that it's in the system, since paperwork can take some time if it's submitted a little late when they're hired.

-- Why did you choose the data types you used?
--primarily used them to work with the new data types we learned in class, as this assignment required me 
--to put my knowledge to the test and review everything I had learned.
--chose this database of teachers based on my previous job where I taught at the 'SISE' language institute, thinking 
--it would be ideal to use that information for this assignment.

-- What is the difference between ALTER TABLE and UPDATE?

--`ALTER TABLE` is basically used to add a column to the table or to rename one—like what I did with the table where 
--I changed `office_hours_duration` to `weekly_class_hours`, since the previous name sounded more office-related.

--UPDATE is primarily used to make changes to data already stored in a table, such as correcting a typo or adding information to existing columns.






