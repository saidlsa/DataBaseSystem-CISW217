Table 1:

  1st Query:
    CREATE TABLE Animal_Types (id bigserial, species varchar(25), habitat varchar(25), diet varchar(25));

  2nd Query:
    INSERT INTO animal_types (species, habitat, diet)
    VALUES 
    ('sponges', 'salt sea', 'bacteria'),
    ('picied', 'forest', 'insectivores'),
    ('domestic short‑haired cat', 'domestic environment', 'omnivorous');

Table 2:

  1st Query:
    CREATE TABLE Animals (id bigserial, name varchar(25), species_id numeric, age numeric)l;
  2nd Query:
    INSERT INTO animals (name, species_id, age)
    VALUES 
    ('Sponge Bob', 1, 550000000),
    ('Woody Woodpecker', 2, 8),
    ('Tom', 3, 11);

-------------------------------------------------

Error Explanation:

Query:
INSERT INTO animal_types (species, habitat, diet)
VALUES 
('sponges', 'salt sea', 'bacteria'),
('picied', 'forest', 'insectivores'),
('aquatic', 'ocean', 'marine animals')
('domestic short‑haired cat', 'domestic environment', 'omnivorous');
-----------------------
ERROR:  syntax error at or near "("
LINE 6: ('domestic short‑haired cat', 'domestic environment', 'omniv...
        ^ 

SQL state: 42601
Character: 173

The error indicates that a piece of data is missing from the syntax on line 6; 
the symbol resembling an upward-pointing arrow signals that data is missing there or that the syntax is incorrect.




