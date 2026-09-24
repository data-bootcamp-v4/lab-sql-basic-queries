-- LAB | SQL Basic Queries
-- Database: Sakila (MySQL)

USE sakila;

-- 1. Display all available tables
SHOW TABLES;

-- 2. Retrieve all data from actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve selected columns

-- 3.1 Titles of all films
SELECT title
FROM film;

-- 3.2 Languages used in films, aliased as language
SELECT name AS language
FROM language;

-- 3.3 First names of all employees (staff members)
SELECT first_name
FROM staff;

-- 4. Retrieve unique release years
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

-- 5. Counting records for database insights

-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores
FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees
FROM staff;

-- 5.3 Number of films available for rent and number of rentals
SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS films_rented
FROM rental;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC, title
LIMIT 10;

-- 7.1 Retrieve all actors with the first name SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Bonus: films with ARMAGEDDON in the title and length over 100 minutes
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- 7.3 Bonus: number of films including Behind the Scenes content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special LIKE '%Behind the Scenes%';
