-- 1. Display all available tables in the Sakila database
USE sakila;
SHOW TABLES;

-- 2. Retrieve all the data from the tables 'actor', 'film' and 'customer'.

SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the `film` table

SELECT title
FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table

SELECT name as language
FROM sakila.language;

-- 3.3 List of first names of all employees from the `staff` table

SELECT first_name 
FROM sakila.staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT(release_year)
FROM sakila.film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) 
FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.
SELECT * FROM sakila.staff;
SELECT SUM(active)
FROM sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) AS films_available
FROM sakila.inventory;

SELECT COUNT(*) AS films_rented
FROM sakila.rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT *
FROM sakila.actor;
SELECT DISTINCT(last_name)
FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT * FROM sakila.film;

SELECT *
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 7.  Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor;

SELECT * 
FROM sakila.actor
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
SELECT * FROM sakila.film;
SELECT * 
FROM sakila.film
WHERE title = 'ARMAGEDDON'
  AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM sakila.film;
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';

