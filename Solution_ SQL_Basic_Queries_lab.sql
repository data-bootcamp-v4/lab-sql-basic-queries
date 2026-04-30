USE sakila;
-- Display all available tables in the Sakila database. --
SHOW TABLES;
-- Retrieve all the data from the tables actor, film and customer --
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Retrieve the following columns from their respective tables--
-- Titles of all films from the film table--
SELECT title FROM film;
-- List of languages used in films, with the column aliased as language from the language table--
SELECT name AS language
FROM language;
-- List of first names of all employees from the staff table --
SELECT first_name FROM staff;
-- Retrieve unique release years. --
SELECT DISTINCT release_year 
FROM film
ORDER BY release_year;
-- Counting records for database insights: --
-- Determine the number of stores that the company has.--
SELECT COUNT(*) AS store_id FROM store;
-- Determine the number of employees that the company has.--
SELECT COUNT(*) AS number_employees FROM staff;
-- Determine how many films are available for rent 
SELECT COUNT(*) AS films_available
FROM inventory AS i
LEFT JOIN rental AS r
    ON i.inventory_id = r.inventory_id
    AND r.return_date IS NULL
WHERE r.rental_id IS NULL;
-- and how many have been rented.--
SELECT COUNT(*) AS films_rented
FROM inventory AS i
JOIN rental AS r
    ON i.inventory_id = r.inventory_id
WHERE r.return_date IS NULL;

-- Determine the number of distinct last names of the actors in the database. --  
	SELECT 
    COUNT(DISTINCT last_name) AS unique_last_names 
    FROM actor;
-- Retrieve the 10 longest films.--
SELECT title, length
FROM film
ORDER BY length 
DESC
LIMIT 10;
-- Use filtering techniques in order to:--
-- Retrieve all actors with the first name "SCARLETT".--
SELECT actor_id, first_name,last_name 
FROM actor
WHERE first_name = "SCARLETT";
-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
--  Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) as number_Behind_the_Scene
FROM film
WHERE special_features LIKE 'Behind the Scenes%'

