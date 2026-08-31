--Select statement is used to retrieve data from a table
--SELECT * FROM teachers;

--The  * means to select all columns from the table

--If wanting to show only certain columns
--select first_name, school
--select these columns
--from this table
--from teachers

--select salary, first_name
--from teachers
--order by salary DESC;

--by default PostgreSQL sorts in ascending order
--DESC for descending order
--ASC means ascending for numbers it goes: 1,2,3,4,5
--for textt it goeas: A,B,C,D,E
--For dates oldest to newest


--DESC puts in reverse order

--select last_name, first_name
--from teachers
--order by last_name DESC;

--ordering by multiple columns, one going ASC, one going DESC

--select last_name, school, hire_date
--from teachers
--Want to order by school ASC, hire_date by DESC
--ORDER BY school ASC, hire_date DESC

--We can find unique values by using DISTINCT after SELECT
--Removes repeated values, makes data retrival look neater

--select DISTINCT school
--from teachers

--ORDER BY school



--Where allows us to retieve only rows that meet a certain condition
--Select first_name, last_name, school
--from  teachers
--where school = 'Myers Middle School';


--Comparison Operators
-- = equal to
-- <> or != Not equal to
-- > greater than
-- < less than
-- >= greater than equtal to
-- <= less than equal to
-- BETWEEN: with a range
-- IN: match one of several values

--find all the teachers who were hired before 1/1/2010
--select first_name, hire_date
--from teachers
--where hire_date < '2010-01-01' --Remember date data type is YYYY-MM-DD

-- I want to see the teachers who makes from 40k-60k

--select first_name, last_name, salary
--from teachers
--where salary BETWEEN  40000 AND 60000;
--Remember when using BETWEEN must also have AND  

--Sometimes you don't know the exact text you are looking for
--We use LIKE in this scenario

--select first_name
--from teachers
--where first_name LIKE 'Sam%'
-- % is a wildcard, any number of characters can appear
--LIKE vs ILIKE
--LIKE is case sensitive
--ILIKE is not case sensitive


-- _ matches exactly one character

--select first_name
--from teachers
--where first_name LIKE '_anet'

--use AND when both conditions must be true
--select *
--from teachers
--where school = 'Myers Middle School' 
--AND salary <40000;

-- A row must satisfy both conditions

-- Use OR when either condition can be true

--select *
--from teachers
--where last_name='Cole'
--OR last_name='Bush';


--Using pharentesis 
--Parentheses become important when coming AND and OR

--select *
--from teachers
--where school='F.D. Roosevelt HS'
--AND (salary <38000 or salary >40000)

-- SELECT
-- What data do we want?

--FROM 
--Where does the data come from?

--WHERE
--Which rows do we want?

--ORDER BY
--How are the results sorted
