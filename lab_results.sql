-- showing all the tables in the database.
SHOW TABLES;

-- showing all the data in the table actor, film and customer.
SELECT * FROM actor; 

SELECT * FROM film;

SELECT * FROM customer;
-- retrieve the following columns from their respective tables
SELECT title FROM film;
-- language used in films

SELECT name AS language FROM language;

SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights
-- 5.1 Determine the number of stores that the company has
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS available_for_rent FROM film WHERE rental_duration > 0;

-- Films that have been rented:
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;
-- 7. Use filtering techniques to retrieve all actors with the first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have "ARMAGEDDON" in their title and have a duration longer than 100 minutes.
SELECT title, length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

-- 7.3 Determine the number of films that include "Behind the Scenes" content.
SELECT COUNT(*) AS films_with_behind_the_scenes 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';












