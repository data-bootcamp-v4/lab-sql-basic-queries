USE sakila;
-- Display all available tables in the Sakila database.
SHOW TABLES;
-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Retrieve the following columns from their respective tables:
	-- Titles of all films from the film table
SELECT title FROM film;
	-- List of languages used in films, with the column aliased as language from the language table
SELECT name FROM language;
    -- List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- Retrieve unique release years.
SELECT  DISTINCT release_year FROM film;

-- Counting records for database insights:
	-- Determine the number of stores that the company has.
SELECT COUNT(*) AS Number_of_stores FROM store;
	-- Determine the number of employees that the company has.
SELECT COUNT(*) AS Number_of_employees FROM staff;
	-- Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS Number_of_films FROM inventory;
SELECT COUNT(*) AS Number_of_rented FROM rental;
	-- Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_name_count FROM actor;

-- Retrieve the 10 longest films.
SELECT * FROM film ORDER BY length DESC LIMIT 10;

-- Use filtering techniques in order to:
	-- Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name = 'SCARLETT'






