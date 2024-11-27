USE sakila;
-- Display all available tables in the Sakila database.
show tables;

-- Retrieve all the data from the tables actor, film and customer.
SELECT *
from ACTOR,FILM, customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT TITLE
FROM FILM;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name AS language
FROM language;

-- 3.3 List of first names of all employees from the staff table
select first_name
from staff;

-- Retrieve unique release years.
select release_year
from film;



