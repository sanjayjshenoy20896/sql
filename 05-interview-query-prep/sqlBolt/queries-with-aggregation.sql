-- COUNT(*), COUNT(column)	A common function used to counts the number of rows in the group if no column name is specified. Otherwise, count the number of rows in the group with non-NULL values in the specified column.
-- MIN(column)	Finds the smallest numerical value in the specified column for all rows in the group.
-- MAX(column)	Finds the largest numerical value in the specified column for all rows in the group.
-- AVG(column)	Finds the average numerical value in the specified column for all rows in the group.
-- SUM(column)	Finds the sum of all numerical values in the specified column for the rows in the group.


-- queries with aggregation

-- Find the longest time that an employee has been at the studio
SELECT MAX(years_employed) FROM employees;

--  For each role, find the average number of years employed by employees in that role
SELECT role,AVG(years_employed) FROM employees GROUP BY ROLE;

-- Find the total number of employee years worked in each building
SELECT building,sum(years_employed) FROM employees GROUP BY building;


-- queries with aggregation

-- Find the number of Artists in the studio (without a HAVING clause)
SELECT count() from employees WHERE role= 'Artist'

-- Find the number of Employees of each role in the studio
SELECT COUNT(),Role AS number_of_employees FROM employees GROUP BY Role;

-- Find the total number of years employed by all Engineers
SELECT SUM(years_employed) as number_of_years_employed FROM employees WHERE Role = 'Engineer'

-- order of execution

-- Find the number of movies each director has directed 
SELECT COUNT() as movies_by_director,director FROM movies GROUP BY director;

-- Find the total domestic and international sales that can be attributed to each director
SELECT director,sum(domestic_sales + international_sales) AS Total_Sales FROM movies
INNER JOIN Boxoffice on movies.id = Boxoffice.movie_id
GROUP BY Director;

