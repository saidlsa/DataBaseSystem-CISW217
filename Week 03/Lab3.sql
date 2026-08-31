-------------------------------------------
-- Week 3 Lab
-- Beginning Data Exploration with SELECT
-- Name: Said Querevalu
--------------------------------------------

--Create Table

    CREATE TABLE games (
        id integer GENERATED ALWAYS AS IDENTITY,
        title varchar(100),
        genre varchar(50),
        platform varchar(50),
        release_year integer,
        rating numeric(3,1)
    );

--Insert Data

    INSERT INTO games (title, genre, platform, release_year, rating)
    VALUES
        ('Elden Ring', 'RPG', 'PC', 2022, 9.5),
        ('Rocket League', 'Sports', 'PC', 2015, 8.5),
        ('Super Smash Bros. Ultimate', 'Fighting', 'Switch', 2018, 9.0),
        ('Minecraft', 'Sandbox', 'PC', 2011, 9.2),
        ('Mario Kart 8 Deluxe', 'Racing', 'Switch', 2017, 8.8),
        ('Marvel Rivals', 'Shooter', 'PC', 2024, 8.0),
        ('Stardew Valley', 'Simulation', 'PC', 2016, 9.1),
        ('The Legend of Zelda: Tears of the Kingdom', 'Adventure', 'Switch', 2023, 9.4);

-- Task 1
    Select *
    from games;

-- Task 2
    SELECT title, platform, rating
    FROM games;

-- Task 3
    SELECT genre, title, release_year
    FROM games;

-- Task 4
    SELECT title, rating
    FROM games
    ORDER BY rating DESC;

-- Task 5
    SELECT title, release_year
    FROM games
    ORDER BY release_year ASC;

-- Task 6
    SELECT platform, title, rating
    FROM games
    ORDER BY platform, rating DESC;

-- Task 7
    SELECT DISTINCT platform
    FROM games;

-- Task 8
    SELECT DISTINCT	platform, genre
    FROM games;

-- Task 9
    SELECT title, platform, release_year
    FROM games
    WHERE platform = 'Switch';

-- Task 10
    SELECT title, genre, rating
    FROM games
    WHERE rating >= 9.0
    ORDER BY rating DESC;

-- Task 11
    SELECT title, release_year
    FROM games
    WHERE release_year < 2020
    ORDER BY release_year;

-- Task 12
    SELECT title, rating
    FROM games
    WHERE rating BETWEEN 8.5 AND 9.2;

-- Task 13
    SELECT title, genre
    FROM games
    WHERE title LIKE 'M%';
    
-- Task 14
    SELECT title
    FROM games
    WHERE title ILIKE 'the%';

-- Task 15
    SELECT title, genre
    FROM games
    WHERE genre ILIKE '%i%';

-- Task 16
    SELECT title, platform, rating
    FROM games
    WHERE platform = 'PC' AND rating > 9.0;

-- Task 17
    SELECT title, genre
    FROM games
    WHERE Genre = 'RPG' OR genre = 'Fighting';

-- Task 18
    SELECT title, platform, release_year
    FROM games
    WHERE platform = 'PC' AND (release_year <2017-01-01 OR release_year >2022-01-01);

-- Task 19
    SELECT title, genre, platform, rating
    FROM games
    WHERE rating >= 8.8 
    ORDER BY platform, rating DESC;

--Task 20

-- I need to find games with a rating of 9.0 or higher, for PC only, sorted by release date from newest to oldest. --

-- QUERY 
    SELECT title, rating, platform, release_year
    FROM games
    WHERE rating >= 9.0 AND platform ='PC'
    ORDER BY release_year DESC;
