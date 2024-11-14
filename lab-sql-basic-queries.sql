-- 1. Display all available tables in the Sakila database.

USE sakila;
SHOW tables;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3: Retrieve the following columns from their respective tables:
-- Titles of all films from the film table
SELECT title FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT DISTINCT language.name AS language
FROM language; 

-- List of first names of all employees from the staff table
SELECT DISTINCT first_name as name
FROM staff; 

-- 4. Retrieve unique release years
SELECT DISTINCT release_year
FROM film; 

-- 5. Counting records for database insights:
-- Determine the number of stores that the company has.
SELECT COUNT(*) as number_stores
FROM store; 

-- Determine the number of employees that the company has.
SELECT COUNT(*) as number_employees
FROM staff; 

-- Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_available_rent
FROM inventory
WHERE inventory.inventory_id NOT IN (
	SELECT inventory_id
    FROM rental 
    WHERE return_date IS NULL); 

-- Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT COUNT(last_name)
FROM actor; 

-- 6. Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10; 

-- 7. Use filtering techniques in order to retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = "SCARLETT"; 

-- 8. Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film WHERE title LIKE "%ARMAGEDDON%" AND length>100;

-- 9. Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS num_films_behind_scenes 
FROM film
WHERE description LIKE "%Behind the Scenes%"; 