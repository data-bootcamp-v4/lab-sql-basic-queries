USE sakila;

-- 1. Display all available tables in the Sakila database.

SHOW Tables;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;



-- 3.1 Titles of all films from the film table
SELECT title FROM sakila.film;



-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM sakila.language;




-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM sakila.staff;


-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM sakila.film;


-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(*) AS store_count FROM sakila.store;



-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS employee_count FROM sakila.staff;


-- 5.3 Determine how many films are available for rent and how many have been rented.
-- Films available for rent
SELECT COUNT(*) AS available_films
FROM sakila.inventory;
-- Films that have been rented
SELECT COUNT(DISTINCT inventory_id)
AS rented_films FROM sakila.rental;



-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS
distinct_actor_last_names FROM sakila.actor;


-- 6. Retrieve the 10 longest films.
SELECT title, length
FROM sakila.film
ORDER BY LENGTH DESC 
LIMIT 10;


-- 7.1  Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT'

