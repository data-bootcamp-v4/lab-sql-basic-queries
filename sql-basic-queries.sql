
-- 1. Display all available tables in the Sakila database
Show Tables;

-- 2. Retrieve all data from the actor, film, and customer tables
SELECT * FROM actor;
SELECT * FROM film;		
SELECT * FROM customer;

-- 3. Retrieve specific columns from their respective tables
SELECT title FROM film;

-- 3.2 List of languages used in films, with column aliased as language
SELECT name As language FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights
-- 5.1 Determine the number of stores the company has
SELECT COUNT(*) AS store_count FROM store;

-- 5.2 Determine the number of employees the company has
SELECT COUNT(*) AS total_films FROM film;
SELECT COUNT(*) AS rented_films FROM rental;

-- 5.3 Determine how many films are available for rent and how many have been rented
SELECT COUNT(*) AS total_films FROM film;
SELECT COUNT(*) AS rented_films FROM rental;

-- 5.4 Determine the number of distinct last names of actors
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length FROM film 
ORDER BY length DESC 
LIMIT 10;

-- 7. Filtering techniques
-- 7.1 Retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor 
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have "ARMAGEDDON" in the title and are longer than 100 minutes
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;


-- 7.3 Determine the number of films that include "Behind the Scenes" content
SELECT COUNT(*) AS behind_the_scenes_count 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';





