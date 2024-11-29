
-- Importing Database
USE sakila;

-- #1 Showing all the tables of the database
SHOW TABLES;

-- #2 Retrieve all the data from the tables actor, film and customer
SELECT* 
FROM (actor,film,customer);

-- # 3 Retrieve the following columns from their respective tables:

-- Titles of all films from the film table
SELECT title
FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT original_language_id, language_id AS 'LANGUAGE'
FROM film;

-- List of first names of all employees from the staff table
SELECT first_name
FROM staff;

-- # 4 Retrieve unique release years.
SELECT DISTINCT(release_year)
from film; 

-- # 5 Counting records for database insights:

-- Determine the number of stores that the company has.
SELECT COUNT(store_id)
FROM store;

-- Determine the number of employees that the company has.
SELECT COUNT(staff_id)
from staff;

-- Determine how many films are available for rent and how many have been rented.
SELECT COUNT(rental_date) AS 'Rented', COUNT(return_date) AS 'Available'
FROM rental;

-- Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT(last_name)) AS ' Number of distinct Last Names'
FROM actor;

-- #6 Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- #7 Use filtering techniques in order to:
SELECT first_name
FROM actor;

-- Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name LIKE 'SCARLETT';


