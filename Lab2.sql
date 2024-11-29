-- This query displays all tables in the Sakila database.
SHOW TABLES;

-- These queries retrieve all the data from the respective tables: actor, film, and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- This query retrieves the titles of all films from the film table.
SELECT title 
FROM film;

-- This query retrieves the list of languages used in films and aliases the column as language.
SELECT name AS language 
FROM language;

-- This query retrieves the first names of all employees from the staff table.
SELECT first_name 
FROM staff;

-- This query retrieves unique release years of films from the film table.
SELECT DISTINCT release_year 
FROM film;

-- This query returns the total number of stores.
SELECT COUNT(*) AS store_count 
FROM store;

-- This query returns the total number of employees.
SELECT COUNT(*) AS employee_count 
FROM staff;

-- The first query counts the total number of films available for rent, and the second counts the number of films that have been rented.
SELECT COUNT(*) AS total_films_available 
FROM film;

SELECT COUNT(*) AS total_films_rented 
FROM rental;

-- This query counts the distinct last names of actors.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names_count 
FROM actor;

-- This query retrieves the titles and lengths of the 10 longest films.
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

-- This query retrieves all actors whose first name is "SCARLETT"
SELECT * 
FROM actor 
WHERE first_name = 'SCARLETT';

-- This query retrieves movies with "ARMAGEDDON" in their title and a duration longer than 100 minutes.
SELECT title, length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

-- This query counts the number of films that include "Behind the Scenes" content in their special_features column.
SELECT COUNT(*) AS films_with_behind_the_scenes 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';