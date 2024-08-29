USE sakila; 

-- Display all available tables in the Sakila database.
SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.

SELECT * 
FROM sakila.actor; 

SELECT * 
FROM sakila.film; 

SELECT * 
FROM sakila.customer; 

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table

SELECT title 
FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT Name as Language
FROM sakila.language; 

-- 3.3 List of first names of all employees from the staff table

SELECT first_name 
FROM sakila.staff;


-- Retrieve unique release years.

SELECT DISTINCT release_year
FROM sakila.film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

SELECT count(store_id)
FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.

SELECT count(staff_id)
FROM sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(DISTINCT film_id) AS films_available
FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT last_name) 
FROM sakila.actor; 

-- Retrieve the 10 longest films.

SELECT DISTINCT LENGTH
FROM sakila.film
ORDER BY LENGTH DESC
LIMIT 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * 
FROM sakila.actor
WHERE first_name = "Scarlett";

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT * 
FROM sakila.film 
WHERE title like '%ARMAGEDDON%' and length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT SPECIAL_FEATURES FROM SAKILA.FILM;

SELECT * 
FROM sakila.film 
WHERE special_features like '%behind the scenes%'
;

