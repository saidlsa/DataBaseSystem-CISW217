Part A:

select current_timestamp;
select current_database(); 
select version();
select 'Hello World';

(I had two options here: one was to combine them into a single line separated by commas, which worked. The other way is how it is currently displayed; since it applies to each 'Query', I separated them.)
Part B:

*How to create a database in PostgreSQL.

To create a database, you primarily need to open pgAdmin, select "Tools" followed by "Query Tool," and create a query that will be essential for setting up your new database.
You simply need to write the following single line:
 
  CREATE DATABASE mynewdatabase; (where "mynewdatabase" is an example of the name you wish to assign to the new database)

Then, execute the command using the "Execute Query" option located at the top of the "Query" window, or by pressing the "Alt" and "F5" keys (pressing "Alt" first, followed by "F5"); this will create your new database—in this case, named "mynewdatabase."

To locate the newly created database, right-click on "Databases" in the Object Browser and select "Refresh." Two databases will then appear: the one automatically provided by pgAdmin and the one you created, named "mynewdatabase."

---------------------------------------------------------------------

*How to create a table (basic syntax and examples of data types).

To create a table, you first need to follow this coding sequence, using the book as a guide:

  CREATE TABLE teachers (id bigserial, first_name varchar(25), last_name varchar(50), school varchar(50), hire_date date, salary numeric);

To better understand how this code works, consider the following:
  +First, "CREATE TABLE" is entered into the query to create a table where the information will be stored. This is followed by the table name—in this case, "Teachers."
  +Second, the columns are listed in the order in which we want to organize the information. As shown in the image, they are arranged horizontally, with commas (,) used to separate each element.
  +Third, specific criteria are defined for each column; for instance, "id" is followed by the "bigserial" type. This means that every time data is added to the table, a unique identifier is generated for each element—for example:
      id 		first name
      1		  Pablo
      2		  Memphis
      3		  Karen
  This would be the "bigserial" format.
  For the others, such as "varchar", "date", and "numeric", it is as follows:
        -Varchar.- Specifies the length for the column; the numbers in parentheses act as limits.
        -date.- As the name implies, this is used to set calendar dates.
        -numeric.- Specifies that the column will contain only numbers; it will not accept letters or symbols.
Once everything is ready, execute the query; a message such as "Query returned successfully" will appear, indicating that the table was created correctly.

To verify that the table was created successfully, right-click on the newly created database named "mynewdatabase," select "Refresh," and then navigate through the hierarchy in this order: Schemas > public > Tables. The created table will appear there. 
To view the corresponding columns, click the arrow next to "teachers" and then the arrow next to "columns" to see the names of the columns you defined.

And finally, to populate the created table, type the data as follows:

INSERT INTO teachers (first_name, last_name, school, hire_date, salary) VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200), ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000), ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500), ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200), ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500), ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);

To understand this, I explain it as follows:
1. Start the query by writing "INSERT INTO" to indicate that data is being added to the table.
2. Next, write the table name—in this case, "teachers"—to specify which table will receive the data.
3. Following the table name, list the column names within parentheses, using commas (,) to separate them.
4. Then, write "VALUES"; to add the data, enclose the values ​​for each row in parentheses and separate them with commas (,).
5. Finally, once the data has been entered, end the statement with a semicolon (;) to signal the conclusion of the entire command.

Once you have finished adding the values, you must execute the query; a message stating "Query returned successfully" will appear.

To view the data and verify that everything is correct, right-click on the table, select "View/Edit Data," and click "All Rows"; a new window will open displaying the table with all the data.

---------------------------------------------------------------------

*Why semicolons are important in SQL.*

Semicolons are important for marking the end of a syntax construct, essentially acting like a period at the end of a sentence. To clearly define the SQL statement; without the semicolon, pgAdmin would not execute the syntax correctly.

---------------------------------------------------------------------

*At least two examples of data types you might use in a table.*

You could use tables for many things; here, I will show two different examples using what has been learned.

1. Car sales

+ To create a new table:
    CREATE TABLE cars (id bigserial, brand varchar(20), model varchar(25), year numeric, price numeric);

+ To fill in the data table:
    INSERT INTO cars (brand, model, year, price) VALUES ('Ford', 'Explorer', 2016, 8500), ('Kia', 'Force', 2021, 7200), ('Dodge', 'Stratus', 2005, 2200), ('Subaru', 'Outback', 2015, 8300);

2. Names of soccer players

+ To create a new table:
    CREATE TABLE liverpool_soccer_players (id bigserial, first_name varchar(20), last_name varchar(25), country varchar (15), position varchar(12), number numeric);

+ To fill in the data table:
    INSERT INTO liverpool_soccer_players (first_name, last_name, country, position, number) VALUES ('Virgil', 'van Dijk','Netherlands', 'defense', 4), ('Allisson', 'Becker','Brazil', 'goalkeeper', 1), ('Cody', 'Gakpo', 'Netherlands', 'forward', 18),('Dominik', 'Szoboszlai', 'Hungary','midfielder', 8), ('Florian', 'Wirtz', 'Germany', 'midfielder', 7);

Each example includes the corresponding formats and data for creating the respective tables. They can be typed without issues or errors.
