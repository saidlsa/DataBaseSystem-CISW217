Part A – Independent Practice


QUERY 1:

CREATE TABLE Goty_Awards (id bigserial, year numeric, game_name varchar(50), release_date date, developer varchar(25), genre varchar(25), platform varchar(65) );


QUERY 2:

INSERT INTO goty_awards (year, game_name, release_date, developer, genre, platform)
VALUES
(2016, 'Overwatch', '2016-05-24', 'Blizzard', 'Shooter-Strategy', 'PC-PS4-Xbox One-Nintendo Switch-PS5-Xbox Series X/S'),
(2017, 'The Legend of Zelda: Breath of the Wild', '2017-03-3', 'Nintendo', 'Puzzle-Adventure', 'Wii U-Nintendo Switch-Nintendo Switch 2'),
(2018, 'God of War', '2018-04-20', 'Santa Monica Studio', 'RPG-Adventure', 'PS4-PS5-PC'),
(2019, 'Sekiro: Shadows Die Twice', '2019-03-22', 'FromSoftware', 'Adventure', 'PS4-Xbox One-PC-Stadia'),
(2020, 'The Last of Us Part II', '2020-06-19', 'Naugthy Dog', 'Shooter-Adventure', 'PS4-PS5-PC'),
(2021, 'It Takes Two', '2021-03-26', 'Hazelight Studios', 'Platform-Puzzle-Adventure', 'PS4-PS5-Xbox One-Xbox Series X/S-PC-Nintendo Switch'),
(2022, 'Elden Ring', '2022-02-25', 'FromSoftware', 'RPG-Adventure', 'PS4-PS5-Xbox One-Xbox Series X/S-PC-Nintendo Switch 2'),
(2023, 'Baldurs Gate 3', '2023-08-03', 'Larian Studios', 'RPG-Strategy-TBS', 'PC-Mac-PS5-Xbox Series X/S'),
(2024, 'Astro Bot', '2024-09-06', 'Team Asobi', 'Platform-Adventure', 'PS5'),
(2025, 'Clair Obscur: Expedition 33', '2025-04-24', 'Sandfall Interactive', 'RPG-Adventure-Indie', 'PS5-Xbox Series X/S-PC');


MISTAKE:

Query:
INSERT INTO goty_awards (year, game_name, release_date, developer, genre, platform)
VALUES
(2016, 'Overwatch', 2016-05-24, 'Blizzard', 'Shooter-Strategy', 'PC-PS4-Xbox One-Nintendo Switch-PS5-Xbox Series X/S'),
(2017, 'The Legend of Zelda: Breath of the Wild', 2017-03-3, 'Nintendo', 'Puzzle-Adventure', 'Wii U-Nintendo Switch-Nintendo Switch 2'),
(2018, 'God of War', 2018-04-20, 'Santa Monica Studio', 'RPG-Adventure', 'PS4-PS5-PC'),
(2019, 'Sekiro: Shadows Die Twice', 2019-03-22, 'FromSoftware', 'Adventure', 'PS4-Xbox One-PC-Stadia'),
(2020, 'The Last of Us Part II', 2020-06-19, 'Naugthy Dog', 'Shooter-Adventure', 'PS4-PS5-PC'),
(2021, 'It Takes Two', 2021-03-26, 'Hazelight Studios', 'Platform-Puzzle-Adventure', 'PS4-PS5-Xbox One-Xbox Series X/S-PC-Nintendo Switch'),
(2022, 'Elden Ring', 2022-02-25, 'FromSoftware', 'RPG-Adventure', 'PS4-PS5-Xbox One-Xbox Series X/S-PC-Nintendo Switch 2'),
(2023, 'Baldurs Gate 3', 2023-08-03, 'Larian Studios', 'RPG-Strategy-TBS', 'PC-Mac-PS5-Xbox Series X/S'),
(2024, 'Astro Bot', 2024-09-06, 'Team Asobi', 'Platform-Adventure', 'PS5'),
(2025, 'Clair Obscur: Expedition 33', 2025-04-24, 'Sandfall Interactive', 'RPG-Adventure-Indie', 'PS5-Xbox Series X/S-PC');

-------------------------------

ERROR:  column "release_date" is of type date but expression is of type integer
LINE 3: (2016, 'Overwatch', 2016-05-24, 'Blizzard', 'Shooter-Strateg...
                            ^
HINT:  You will need to rewrite or cast the expression. 

SQL state: 42804
Character: 112


Part B – Quick Skim

1. One new concept you noticed (for example, constraints like NOT NULL, or data types like BOOLEAN).

What I've been noticing most is 'LIKE' and 'ILIKE' alongside 'WHERE'. I find it very useful to know that these types of commands exist, as they can be helpful when searching for repeated or misspelled information.
And the way they're used is interesting. We have 'LIKE', which helps us search for the characters we want exactly as we enter them in the query, unlike 'ILIKE', which helps us search for characters (whether uppercase or lowercase) in any format. 
Of course, adding these commands has two ways to search: using the percent sign (%) to search for one or more characters, and the underscore (_) to search for a single character.

---------------------------------------------

2.One question you have after skimming the chapter.

What I'm wondering is, if when searching for information using the commands learned in the book, is there a way to modify or delete the row we need to fix, in case something was entered incorrectly or the information won't be needed? 
Is there a command, in addition to the one we learned, used to search for the row we want to modify and/or delete? Is there a way to make a change within the query itself?













