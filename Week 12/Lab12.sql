-- Creating a parent table (with the Primary Key)
-- CREATE TABLE students(
-- 	student_id integer Primary Key,
-- 	name varchar (25),
-- 	last_name varchar (50),
-- 	age numeric	
-- );

-- Creating a child table (with a Foreign Key that references the parent)
-- CREATE TABLE courses(
-- 	id serial Primary Key,
-- 	student_id integer,
-- 	course text, 
-- 	teacher text,
-- 	grade varchar (2),
-- 	FOREIGN KEY (student_id) REFERENCES students (student_id)
-- );

-- Inserting simple datas into the tables  (PK, PK with FK):
-- INSERT INTO students(student_id, name, last_name, age)
-- Values
-- (12345, 'Mathias', 'Olivera', 21),
-- (12346, 'Steven', 'Olivera', 25),
-- (12347, 'Luciano', 'Torres', 24),
-- (12348, 'Piero', 'Campos', 23),
-- (12349, 'Valeria', 'Delgado', 20);

-- INSERT INTO courses (student_id, course, teacher, grade)
-- VALUES
-- (12345, 'PHYSICAL EDUCATION', 'Piero', 'A' ),
-- (12345, 'MILITARY', 'Gilberto', 'A'),
-- (12346, 'ACCOUNTING', 'Carmen', 'B' ),
-- (12346, 'BIOLOGY', 'Daniel', 'D'),
-- (12347, 'RELIGION', 'Milagros', 'A'),
-- (12348, 'MUSIC LESSONS', 'Dominic', 'C'),
-- (12349, 'PHILOSOPHY', 'Devika', 'D');

-- Write a JOIN Query (In this case, students and courses tables)
-- SELECT 
-- students.student_id,
-- students.last_name,
-- students.name,
-- courses.course,
-- courses.grade
-- FROM courses
-- JOIN students
-- ON students.student_id=courses.student_id;

-- REFLECTION QUESTIONS

-- What type of relationship did you create (one-to-one or one-to-many)?

-- Create a one-to-one relationship in this case, between students and courses.

-- What would happen if you deleted a department that still has employees?

-- It might not work correctly, since if a department that has employees is deleted, it could result in a NULL value, or the corresponding query might fail.

-- Why is a foreign key important for data integrity?

-- Because in order to retrieve information from a table, you need to obtain a foreign key (FK) so that you can relate it to information from another table.

