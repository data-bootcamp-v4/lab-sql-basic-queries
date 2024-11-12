USE sakila;

-- Display all available tables in the Sakila database.
SHOW TABLES FROM sakila;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name as language FROM sakila.language;

-- 3.3 List of first names of all employees from the staff table
SELECT * FROM sakila.staff;
SELECT first_name FROM sakila.staff;

-- Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;

-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT * FROM sakila.store;
SELECT COUNT(store_id) as number_of_stores FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id) as number_of_employees FROM sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT (SELECT COUNT(inventory_id) FROM sakila.inventory) - (SELECT COUNT(DISTINCT inventory_id) FROM sakila.rental) AS available_for_rent, 
COUNT(DISTINCT inventory_id) AS rented FROM sakila.rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM sakila.actor;

-- Retrieve the 10 longest films.
SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- Use filtering techniques in order to:
-- BONUS:
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM sakila.film
WHERE length > 100 AND title LIKE '%ARMAGEDDON%';
-- Hint: use LIKE operator. More information here.

-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) FROM sakila.film WHERE special_features LIKE '%Behind the Scenes%';