---------------------------
--Week 3 HomeWork
--Name: Said Querevalu
---------------------------

--Part A – Independent Practice

-- Creating the new data base:
--      CREATE DATABASE week3_homework;

-- Creating a table:
--      CREATE TABLE Fifa_World_Cup (
--        id bigserial, 
--        year numeric, 
--        host_country varchar(50), 
--        champion varchar(25), 
--        runner_up varchar(25), 
--        final_score varchar(25), 
--        best_player varchar(50), 
--        top_scorer varchar (50) 
--        );

-- Insert simple data:
--      INSERT INTO fifa_world_cup (year, host_country, champion, runner_up, final_score, best_player, top_scorer)
--      VALUES
--      	(1930, 'Uruguay', 'Uruguay', 'Argentina', '4-2', 'Guillermo Stábile (Argentina)', 'Guillermo Stabile (8)'),
--      	(1934, 'Italy', 'Italy', 'Czechoslovakia', '2-1 (OT)', 'Oldrich Nejedly (Czechoslovakia)', 'Oldrich Nejedly (5)'),
--        (1938, 'France', 'Italy', 'Hungary', '4-2', 'Leonidas (Brazil)', 'Leonidas (7)'),
--        (1950, 'Brasil', 'Uruguay', 'Brasil', '2-1', 'Ademir (Brazil)', 'Ademir (9)'),
--        (1954, 'Sweden', 'West Germany', 'Hungary', '3-2', 'Sandor Kocsis (Hungary)', 'Sandor Kocsis (11)'),
--        (1958, 'Sweden', 'Brazil', 'Sweden', '5-2', 'Just Fontaine (Francia)', 'Just Fontaine (13)'),
--        (1962, 'Chile', 'Brazil', 'Czechoslovakia', '3-1', 'Vava (Brasil)', 'Florian Albert (4)'),
--        (1966, 'England', 'England', 'West Germany', '4-2 (OT)', 'Eusebio (Portugal)', 'Eusebio (9)'),
--        (1970, 'Mexico', 'Brazil', 'Italy', '4-1', 'Gerd Mueller (West Germany)', 'Gerd Mueller (10)'),
--        (1974, 'West Germany', 'West Germany', 'Netherlands', '2-1', 'Grzegorz Lato (Poland)', 'Grzegorz Lato (7)'),
--        (1978, 'Argentina', 'Argentina', 'Netherlands', '3-1 (OT)', 'Mario Kempes (Argentina)', 'Mario Kempes (6)'),
--        (1982, 'Spain', 'Italy', 'West Germany', '3-1', 'Paolo Rossi (Italy)', 'Paolo Rossi (6)'),
--        (1986, 'Mexico', 'Argentina', 'West Germany', '3-2', 'Diego Maradona (Argentina)', 'Gary Lineker (6)'),
--        (1990, 'Italy', 'Germany', 'Argentina', '1-0', 'Salvatore Schilacchi (Italia)', 'Salvatore Schilacchi (6)'),
--        (1994, 'United States', 'Brazil', 'Italy', '0-0 (3-2)', 'Romario (Brasil)', 'Oleg Salenko (6)'),
--        (1998, 'France', 'France', 'Brazil', '3-0', 'Ronaldo (Brasil)', 'Davor Suker (6)'),
--        (2002, 'Korea-Japan', 'Brazil', 'Germany', '2-0', 'Oliver Kahn (Alemania)', 'Ronaldo (8)'),
--        (2006, 'Germany', 'Italy', 'France', '1-1 (5-3)', 'Zinedine Zidane (Francia)', 'Miroslav Klose (5)'),
--        (2010, 'South Africa', 'Spain', 'Netherlands', '1-0 (OT)', 'Diego Forlan (Uruguay)', 'Diego Forlan (5)'),
--        (2014, 'Brasil', 'Germany', 'Argentina', '1-0 (OT)', 'Lionel Messi (Argentina)', 'James Rodriguez (6)'),
--        (2018, 'Russia', 'France', 'Croatia', '4-2', 'Luka Modric (Croatia)', 'Harry Kane (6)'),
--        (2022, 'Qatar', 'Argentina', 'France', '3-3 (4-2)', 'Lionel Messi (Argentina)', 'Kylian Mbappe (8)'),
--        (2026, 'United States-Canada-Mexico', 'Spain', 'Argentina', '1-0 (OT)', 'Rodri Hernandez (Spain)', 'Kylian Mbappe (10)')
--         ;


-- Query 1: Display all the information from the table.

--    SELECT * FROM public.fifa_world_cup;
-- Comment: This query displays all the information from the table, with its respective columns.


-- Query 2: Display only specific columns.

--    SELECT year, champion, final_score
--    FROM fifa_world_cup;
-- Comment: This query displays only the rows for the year, the champion, and the final score from the entire table.


-- Query 3: Display only the countries that won World Cups

--    SELECT DISTINCT champion
--    from fifa_world_cup;
-- Comment: This query only shows the champions who won, to find out which champions have at least one World Cup


-- Query 4: Display the year, the champion and the best player from 2000 to the present.

--    SELECT year, champion, best_player
--    FROM fifa_world_cup
--    WHERE year >= 2000;
-- Comment: This query shows the year, champion and best player from the year 2000 to the last.


-- Query 5: Display the year, champion, runner-up, and final score for the years 1930 to 200, and only show champions whose name contains the letter "i".

--    SELECT year, champion, runner_up, final_score
--    FROM fifa_world_cup
--    WHERE year BETWEEN 1930 AND 2000 AND (champion ILIKE '%i%');
-- Comment: This query shows the year, champion, runner-up, and final score from the start of the championship (1930) until 2000, and shows the champions that have the letter 'i' in their name


-- Query 6: Display the year, host country and top scorer between the years 1970 and 1990

--    SELECT year, host_country, top_scorer
--    FROM fifa_world_cup
--    WHERE year BETWEEN 1970 AND 1990;
-- Comment: This query shows the year, the host country, and the top scorer between 1970 and 1990.


-----------------------------------------------
-- Chapter 4 Quick Skim
-----------------------------------------------

-- New Concept:

-- I learned from the "CAST shortcut notation" that a format change can be made, as shown in the example in the book.
-- where the format is changed from 'timestamp_column' to 'varchar', and the double colon is used to convert the format.


-- Question:
-- I'm still wondering about the miscellaneous items, since it's interesting to implement them while we're learning to use SQL, 
-- and also to be able to use them for future work that requires certain more specific things.












