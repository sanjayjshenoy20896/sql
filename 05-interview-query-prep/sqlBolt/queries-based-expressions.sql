
-- given a table of movies with fields such as Id,title ,director,year, length_minutes
-- given a table of box office sales, we have following keys namely movie id, internation_sales,domestic_sales and rating

-- queries based on expression
-- List all movies and their combined sales in millions of dollars
SELECT DISTINCT title, (international_sales + domestic_sales) / 1000000 as combines_sales FROM Movies
INNER JOIN Boxoffice ON movies.id = Boxoffice.movie_id ;

-- List all movies and their ratings in percent
SELECT DISTINCT title, rating*10 as Rating  FROM Movies
INNER JOIN Boxoffice ON movies.id = Boxoffice.movie_id ;

-- List all movies that were released on even number years
SELECT *  FROM Movies
INNER JOIN Boxoffice ON movies.id = Boxoffice.movie_id 
Where (year%2) ==0;