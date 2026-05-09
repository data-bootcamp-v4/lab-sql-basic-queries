-- 1. Display all available tables in the Sakila database.
SHOW FULL TABLES FROM sakila;
 -- 2. Retrieve all the data from the tables actor, film and customer.
 SELECT * FROM actor;
 SELECT * FROM film;
 SELECT * FROM customer;
 
 -- 3. Retrieve the following columns from their respective tables
 SELECT title FROM film;
 
 SELECT name AS language FROM language;

SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:
SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM rental;
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- Bonus:
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';