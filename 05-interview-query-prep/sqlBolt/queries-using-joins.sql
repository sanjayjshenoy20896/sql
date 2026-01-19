-- basic queries on joins

-- Inner Joins -> these three new joins have to specify which column to join the data on. When joining table A to table B,

-- LEFT JOIN -> simply includes rows from A regardless of whether a matching row is found in B.
-- RIGHT JOIN -> is the same, but reversed, keeping rows in B regardless of whether a match is found in A.
-- FULL JOIN simply means that rows from both tables are kept, regardless of whether a matching row exists in the other table.

-- inner joins
-- given a table of movies with fields such as Id,title ,director,year, length_minutes
-- given a table of box office sales, we have following keys namely movie id, internation_sales,domestic_sales and rating
-- Find the domestic and international sales for each movie
SELECT Boxoffice.domestic_sales,Boxoffice.international_sales,Movies.title 
FROM Movies
INNER JOIN Boxoffice ON Movies.id =Boxoffice.movie_id;

-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT Boxoffice.domestic_sales,Boxoffice.international_sales,Movies.title 
FROM Movies
INNER JOIN Boxoffice ON Movies.id =Boxoffice.movie_id
WHERE Boxoffice.international_sales > domestic_sales;

-- List all the movies by their ratings in descending order
SELECT Boxoffice.domestic_sales,Boxoffice.international_sales,Movies.title 
FROM Movies
INNER JOIN Boxoffice ON Movies.id =Boxoffice.movie_id
ORDER BY rating DESC;


-- outer joins

-- we have employee table that has Role,Name,building years employed 
-- we have building table that has building name and capacity

-- Find the list of all buildings that have employees
SELECT DISTINCT Building FROM Employees;
-- Find the list of all buildings and their capacity
SELECT * FROM buildings;
--List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, Role 
FROM buildings 
left JOIN employees 
ON employees.building = buildings.building_name;



