-- Basic Queries Lab --

-- 1. Display all available tables
SHOW TABLES;

--------------------------------------------------------------

-- 2. All data from the "actor" table, "film" table and "customer" table
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

--------------------------------------------------------------

-- 3. Retrieve specific columns from their table
SELECT * FROM film;

SELECT * FROM language;

SELECT * FROM staff;

-- 3.1. Titles of all films from the "film" table
SELECT title FROM film;

-- 3.2. List of language used in films, with the column aliased as language from the "language" table
SELECT name AS language FROM language;

-- 3.3. List of first names of all employees from the "staff" table
SELECT first_name FROM staff;

--------------------------------------------------------------

-- 4. Retrieve unique release years
SELECT * FROM film;

SELECT DISTINCT release_year FROM film;

--------------------------------------------------------------

-- 5. Counting records for database insights
-- 5.1. Lets determine the number of stores that the company has
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2. Lets determine the number of employees that the company has
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3. Lets determine how many films are available for rent and how many have been rented
SELECT COUNT(*) AS total_films FROM film;
-- SELECT * FROM rental;
SELECT COUNT(*) AS rented_films FROM rental;

/* Reflexion
    SELECT COUNT(DISTINCT inventory.film_id) AS films_available_for_rent 
    FROM inventory
    WHERE inventory.inventory_id NOT IN (SELECT DISTINCT rental.inventory_id FROM rental);
    
    SELECT COUNT(DISTINCT inventory.film_id) AS films_rented
    FROM rental
    JOIN inventory ON rental.inventory_id = inventory.inventory_id;
*/

-- 5.4 Determine the number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM actor;

--------------------------------------------------------------

-- 6. Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

--------------------------------------------------------------

-- 7. Filtering Techniques
-- 7.1. Retrieving all actors with the first name 'SCARLETT'
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
-- 7.2. Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

/* The LIKE operator is used in a WHERE clause to search for a specified pattern in a column
The percent sign % represents zero, one, or multiple characters
*/

-- 7.3. Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS films_with_bts_content
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
