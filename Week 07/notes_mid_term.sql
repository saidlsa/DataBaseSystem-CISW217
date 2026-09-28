--How to create table named students
CREATE TABLE students (student_id integer PRIMARY KEY, student_name varchar (100), major text );

--integer     Whole numbers
--numeric(p,s) Exact decimal numbers
--varchar(n)   Text with a maximum length
--text         Text without a specified limit
--date         Dates
-- Boolean     True / False

-- How to INSERT DATA into table
INSERT INTO students (student_id, student_name, major)
VALUES
(401265, "Sebastian Talamantes", "Networking"),
(401265, "Sebastian Talamantes", "Networking");

--Query that selects every columns and every row
select * from students
-- *, pulls everything from said table
--only want to see certain columns
select student_name, major
from students;

--only want to see students who are in the networking program 

select student_name, major
from student
where major="networking"

--What if I had 2 conditions that had to be tru
select student_name, major
from students
wehere major="networking"
and student_id=401265;

--if we wanted to sort even more
--use ORDER BY
--ASC is lowest to highest
--DESC is high to low

--FUNCTIONS
--Perform calculations over multiple rows
--count how students exist
SELECT COUNT (*)
from students;

--average tuition cost
SELECT avg(tuition_cost)
from students;

--highest tuition cost
select max(tuition_cost)
from students;

--COUNT() Count
-- SUM()  Total
-- AVG()  Average
-- MIN()  Smallest
-- MAX()  Largest

--How to update/alter table once its been created
--change the major of the student with the id of 102

update students
--update hanges existing data

--set the new value
SET major="cyber"
--Only change this specific row
where student_id=102;

-- ALTER table changes the table itself
-- modify the structure of the student table
alter table students
-- add a column
add column tuition_cost numeric(10,2)

--NULL means the value is missing or unknown

--NOT NULL requires a value, add NOT NULL after the data typee (ColumnName data tyoe not null)

student_name varchar(100) NO NULL

--SELECT  What do I want?

--FROM    Where is it coming from?

--WHERE   which row do I want?

-- GROUP BY How should rows be grouped?

-- Order by  How should the result be sorted?
