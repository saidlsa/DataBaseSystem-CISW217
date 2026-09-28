-- Create a table that stores information about video games
CREATE TABLE games (
    -- Automatically generates a unique ID for each game
    game_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    -- Stores the name of the game
    title varchar(100) NOT NULL,

    -- Stores the genre of the game
    genre varchar(50),

    -- Stores the price with 2 decimal places
    price numeric(6,2)
);


-- Add three games to the games table
INSERT INTO games (title, genre, price)
VALUES
    ('Elden Ring', 'RPG', 59.99),
    ('Minecraft', 'Sandbox', 29.99),
    ('Helldivers 2', 'Shooter', 39.99);
-- Create a second table that stores game reviews
CREATE TABLE reviews (
    -- Automatically generates a unique ID for each review
    review_id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    -- Connects each review to a game in the games table
    game_id integer REFERENCES games(game_id),
    -- REFERENCES table_name(Column Name)
    -- An FK (Foreign Key) is just a PK (Primary Key) from another table
    -- Stores the review score
    score integer
);
-- Add reviews and connect them to games using game_id
INSERT INTO reviews (game_id, score)
VALUES
    (1, 10), -- Elden Ring
    (2, 9),  -- Minecraft
    (1, 8);  -- Elden Ring

-- How are these 2 tables connected?
-- These are connected by games.game_id <-->  reviews.game_id

-- Primary Key uniquely identifies row
-- A foreign Key references a row in another table

--Think of it as:
--PK: identifies the record
--FK: connects to that record

-- Why do we use JOINS:
-- A JOIN allows our program to combine related information for us

select * from reviews;

--INNER JOIN= Give me rows that have a match in both tables
-- Select the game title from games and the score from reviews
SELECT games.title, reviews.score --tableName.columnName

--Start with the games table
from games

-- Connect the reviews table to the games table

INNER JOIN reviews

-- Match rows where both tables have the same game_id

ON games.game_id = reviews.game_id;

-- This line tells Postgre HOW the 2 tables are related
-- ON games.game_id = reviews.game_id;

--Potgre Essenstially asks:
-- Does this game_id match this game_id?

--LEFT JOIN, keeps everything from the left table
-- select the game titles and its review score
SELECT games.title, reviews.score --tableName.columnName

--games is our left table
FROM games

--Keep every game, even if it doesnt have a review

LEFT JOIN reviews

--Match the tables using what is connecting them?
ON games.game_id = reviews.game_id;

--Helldivers appear now because we used a LEFT JOIN, and a left join keeps everything from the left table

--INNER JOIN = Only matching rows

--LEFT JOIN = Everything from the left 
--              + matches from the right

--Null tells us there was no matching review

--Table ALIASES
--Typing full table names get annoying and time consuming
--We create aliases for the table names

--g is now games
--r is now review
--Select the title and the review score
SELECT g.title, r.score

--Give names the alias of g
FROM games as g

--Give reviews the alias r
INNER JOIN reviews as r

--Connect the tables via PK/FK
ON g.games_id=r.games_id

--I want to see games that score higher then a 9

Where r.score=9;

--sCORES LOW TO HIGH
ORDER BY r.score ASC;



















































