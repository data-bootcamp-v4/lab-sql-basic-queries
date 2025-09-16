-- 1. Display all tables in the Sakila database
SHOW TABLES;

-- 2. Retrieve all data from actor, film, and customer tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns
-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 Languages used in films (aliased as 'language')
SELECT name AS language FROM language;

-- 3.3 First names of all employees
SELECT first_name FROM staff;

-- 3.4 Unique release years
SELECT DISTINCT release_year FROM film;

-- 5. Counting records
-- 5.1 Number of stores
SELECT COUNT(*) AS store_count FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS employee_count FROM staff;

-- 5.3 Films available for rent and films rented
SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(*) AS rented_films FROM rental;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS unique_last_names FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Filtering techniques
-- 7.1 Actors with first name 'SCARLETT'
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- BONUS
-- 7.2 Movies with 'ARMAGEDDON' in title and duration > 100 minutes
SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3 Number of films with 'Behind the Scenes' content
SELECT COUNT(*) AS behind_the_scenes_count FROM film
WHERE special_features LIKE '%Behind the Scenes%';
