USE sakila;
-- Display all available tables in the Sakila database. --
SHOW TABLES;
-- Retrieve all the data from the tables actor, film and customer --
SELECT * FROM actor;
SELECT * FROM film;
SELECT * fROM customer;
-- Retrieve the following columns from their respective tables--
	-- Titles of all films from the film table--
SELECT title FROM film;
	-- List of languages used in films, with the column aliased as language from the language table--
SELECT name AS language FROM language;
	-- List of first names of all employees from the staff table --
SELECT first_name FROM staff;
-- Retrieve unique release years. --
SELECT DISTINCT release_year FROM film;
-- Counting records for database insights: --
	-- Determine the number of stores that the company has.--
	SELECT COUNT(*) AS number_stores FROM staff;
	-- Determine the number of employees that the company has.--
    SELECT COUNT(*) AS number_employers FROM staff;
	-- Determine how many films are available for rent and how many have been rented.--
    SELECT COUNT(*) AS films_available FROM inventory;
    SELECT COUNT(*) AS films_rented FROM rental;
	-- Determine the number of distinct last names of the actors in the database. --  
	SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;
-- Retrieve the 10 longest films.--
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- Use filtering techniques in order to:--
	-- Retrieve all actors with the first name "SCARLETT".--
SELECT actor_id, first_name,last_name FROM actor
WHERE first_name = "SCARLETT"