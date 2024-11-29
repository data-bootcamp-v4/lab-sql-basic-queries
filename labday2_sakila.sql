-- 1)

USE sakila;

SHOW tables;

-- 2) Retrieve all the data from the tables actor, film and customer.

SELECT * from sakila.actor;
SELECT * from sakila.film;
SELECT * from sakila.customer;

-- 3) Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
SELECT DISTINCT title from sakila.film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT * from sakila.language;
SELECT DISTINCT name AS language from sakila.language;
-- 3.3 List of first names of all employees from the staff table
SELECT * from sakila.staff;
SELECT DISTINCT first_name from sakila.staff;

-- 4) Retrieve unique release years.
SELECT DISTINCT release_year from sakila.film;

-- 5) Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.

SELECT * FROM sakila.store;
SELECT COUNT(store_id) FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.

SELECT COUNT(staff_id) FROM sakila.staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT * FROM sakila.film;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.inventory;
SELECT COUNT(title) FROM sakila.film;
SELECT COUNT(title) FROM sakila.film;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT * FROM sakila.actor;
SELECT COUNT(DISTINCT last_name) FROM sakila.actor as last_name_count;

-- 6) Retrieve the 10 longest films.
SELECT * FROM sakila.film;

SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;


-- 7) Use filtering techniques in order to: 
	-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT first_name, last_name from sakila.actor
WHERE first_name = 'SCARLETT'
        
-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT title, length from sakila.film
WHERE title LIKE '%ARMAGEDDON%' and length > 100;

-- Hint: use LIKE operator. More information here.

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT count(title) FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';
