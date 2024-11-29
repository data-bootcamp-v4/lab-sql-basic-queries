-- 1. Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT actor_id, first_name, last_name FROM actor
UNION ALL
SELECT film_id, title, description FROM film
UNION ALL
SELECT customer_id, first_name, last_name FROM customer;

-- 3. Retrieve the following columns from their respective tables:

-- 3.1 -- Titles of all films from the film table
SELECT title FROM film;

-- 3.2 -- List of languages used in films, with the column aliased as 
-- language from the language table
SELECT name AS language FROM language;

-- 3.3 -- List of first names of all employees from the staff table
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:

-- 5.1 -- Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id) AS num_stores
FROM store;

SELECT * from store;

-- 5.2 -- Determine the number of employees that the company has.
SELECT DISTINCT staff_id FROM staff;

SELECT * from staff;

-- 5.3 -- Determine how many films are available for rent and how many have been rented.
SELECT 
    (SELECT COUNT(*) FROM inventory) AS total_films,
    (SELECT COUNT(*) FROM rental WHERE return_date IS NULL) AS films_available_for_rent,
    (SELECT COUNT(*) FROM rental WHERE return_date IS NOT NULL) AS films_rented;
 
 -- 5.4 -- Determine the number of distinct last names of the actors in the database.
 SELECT DISTINCT last_name FROM actor;
 
 -- 6. - Retrieve the 10 longest films
 SELECT title, length
 FROM film
 ORDER BY length DESC
 LIMIT 10;
 
 -- 7.1 -- Retrieve all actors with the first name "SCARLETT"
 SELECT *
 FROM actor
 WHERE first_name = "SCARLETT";
 
 -- 7.2 -- Retrieve all movies that have ARMAGEDDON in their title 
 -- and have a duration longer than 100 minutes.
 SELECT *
 FROM film
 WHERE title LIKE '%ARMAGEDDON%' 
 AND length > 100;
 
 -- 7.3 -- Determine the number of films that include Behind the Scenes content
SELECT *
from film;

SELECT COUNT(*) as num_behind_the_scenes_films 
FROM film
WHERE special_feature LIKE '%Behind the Scenes%';
 

