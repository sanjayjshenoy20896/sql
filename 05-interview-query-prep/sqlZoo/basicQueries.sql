-- Basic select queries 


-- given a world database having fields like name, continent,area,population,gdp and area

-- find population from world database that whose name is France / Germany
SELECT population FROM world WHERE name = 'France';
SELECT population FROM world Where name = 'Germany';

-- find name,population for a list of countries
SELECT name, population FROM world
  WHERE name IN ('Brazil', 'Russia', 'India', 'China');

SELECT name, population FROM world
  WHERE name IN ('Sweden','Norway','Denmark');

-- find name and area whose population is between range of a.) 200,000 and 250,000 b.) 250,000-300,000 (Between Clause)
SELECT name, area FROM world
  WHERE area BETWEEN 250000 AND 300000;

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;   

-- More basic queries

-- Display name, continent and population
SELECT name, continent, population FROM world;

-- Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT name FROM world WHERE population >= 200000000

-- Give the name and the per capita GDP for those countries with a population of at least 200 million.
-- how to calculate gdp
SELECT name,(gdp/population) as "per capita GDP" FROM world
WHERE population>=200000000;

-- Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.
SELECT name,population/1000000 FROM world WHERE continent = 'South America';

-- Show the name and population for France, Germany, Italy

SELECT name,population FROM world WHERE name IN ('France','Germany','Italy');

-- Show the countries which have a name that includes the word 'United'
SELECT name FROM world WHERE NAME LIKE '%United%';

-- Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.
-- Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population , area FROM world WHERE area>3000000 OR
population>250000000;