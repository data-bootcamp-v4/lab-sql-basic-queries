USE sakila;

-- 1 Displaying all tables from sakila
SHOW TABLES;

-- 2 Displaying all columns from tables "actor", "film" and "staff"
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 retrieving all titles from table "film"
SELECT title FROM film;

-- 3.2 retrieving film language aliased as language
SELECT * FROM language;
SELECT name AS language
FROM language;

-- 3.3 displaying table "stuff" and retrieving first name of stuff
SELECT * FROM staff;
SELECT first_name FROM staff;

-- 4 Display unique release years
SELECT * FROM film;
SELECT DISTINCT release_year FROM film;

-- 5.1 Number of stores the company has
SELECT * FROM store;
SELECT COUNT(store_id) FROM store;

-- 5.2 Number of employees the company has
SELECT * FROM staff;
SELECT COUNT(staff_id) FROM staff;

-- 5.3 Number of films available for rent and rented total
SELECT * FROM inventory;
SELECT COUNT(*) AS total_films_available
FROM inventory;

SELECT COUNT(*) AS total_rented
FROM rental
WHERE return_date IS NULL;

-- 5.4 Number of unique actor last names
SELECT * FROM actor;
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6 Retrieve the 10 longest films
SELECT * FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve actors with first name Scarlett
SELECT * FROM actor
WHERE first_name = 'Scarlett';

-- 7.2 Retrieve films that contain 'ARMAGEDDON' in the title and are longer than 100 minutes
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON' AND length > 100;

-- 7.3 Number of films that include Behind the scenes content
SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
