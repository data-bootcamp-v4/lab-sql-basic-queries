USE sakila;

-- 1. Display all available tables in the Sakila database.

SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.

SELECT * FROM actor; 
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table

SELECT DISTINCT title FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name AS languague
FROM language;

-- 3.3 List of first names of all employees from the staff table

SELECT * FROM staff;
SELECT first_name FROM staff;

-- Retrieve unique release years.

SELECT * FROM film;
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.

SELECT * FROM store;
SELECT COUNT(store_id) FROM store;

-- 5.2 Determine the number of employees that the company has.

SELECT * FROM staff;
SELECT COUNT(staff_id) FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

SELECT * FROM rental;
SELECT * FROM inventory;

SELECT * FROM rental
WHERE return_date IS NULL or return_date IN ("", " "); -- 183 films are rented

SELECT COUNT(inventory_id) FROM inventory; -- there are 4581 films in the inventory

-- a total of 4398 filmes are available for rent and 183 films are rented.

-- ANOTHER WAY TO DO IT 

SELECT COUNT(*) AS films_available
FROM inventory; -- there are 4581 films in the inventory

SELECT COUNT(DISTINCT inventory_id) AS films_rented
FROM rental; -- a total of 4580 films have been rented

SELECT COUNT(*) AS currently_rented
FROM rental
WHERE return_date IS NULL; -- 183 films are current rented

-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT * FROM actor;
SELECT DISTINCT COUNT(last_name) FROM actor;

-- 6. Retrieve the 10 longest films.

SELECT * FROM film;
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * FROM actor;

SELECT * FROM actor
WHERE first_name = "SCARLETT"; -- or can use LIKE instead of =

-- BONUS
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT * FROM film;

SELECT * FROM film
WHERE title LIKE "%ARMAGEDDON%"
HAVING length < 100;

-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT * FROM film
WHERE special_features LIKE "%Behind the Scenes%";

