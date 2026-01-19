-- Select queries
-- given a table of movies with fields such as Id,title ,director,year, length_minutes

-- Basic SELECT queries with column name selection
-- Find title of each movies
SELECT title FROM movies;

-- find director of each movies
SELECT director FROM movies;

-- find director and title of each movies
SELECT director,title FROM movies;

-- find title and year of each movies
SELECT title,year FROM each movies;

-- find all information of all movies
SELECT * FROM movies;


-- Basic SELECT query with constraints

-- find the movie whose id =6
SELECT * FROM movies WHERE Id = 6;

-- find movie released between the year 2000 and 2010
SELECT * FROM movies WHERE YEAR BETWEEN 2000 AND 2010

-- Find the movies not released in the years between 2000 and 2010
SELECT * FROM movies WHERE YEAR NOT BETWEEN 2000 AND 2010

-- Find the first 5 Pixar movies and their release year
SELECT * FROM movies ORDER BY YEAR ASC LIMIT 5;

-- Find all the Toy Story movies
SELECT * FROM movies WHERE TITLE LIKE '%Toy Story%';

-- Find all the movies directed by John Lasseter
SELECT * FROM movies WHERE director = 'John Lasseter';

-- Find all the movies (and director) not directed by John Lasseter
SELECT title,director FROM movies WHERE director != 'John Lasseter';

-- Find all the WALL-* movies
SELECT * FROM movies WHERE title LIKE 'WALL-_'


-- basic select queries based on filtering and ordering func

-- List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT(director) FROM movies ORDER BY director;

-- List the last four Pixar movies released (ordered from most recent to least)
SELECT * FROM movies ORDER BY year DESC LIMIT 4; 

-- List the first five Pixar movies sorted alphabetically
SELECT * FROM movies ORDER BY title asc LIMIT 5; 

-- List the next five Pixar movies sorted alphabetically
SELECT * FROM movies ORDER BY title ASC LIMIT 5 OFFSET 5; 