-- given a table of movies with fields such as Id,title ,director,year, length_minutes
-- given a table of box office sales, we have following keys namely movie id, internation_sales,domestic_sales and rating

-- Insert into table
-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director) ✓
INSERT INTO Movies VALUES (4, 'Toy Story 4', 'John Lasseter', 2013,100);

-- Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table. ✓
INSERT INTO Boxoffice VALUES(4,8.7,340000000,270000000);



