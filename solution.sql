USE sakila;

-- 1. Show all tables in the Sakila database
SHOW TABLES;

-- 2. Retrieve all data from the actor, film and customer tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 Languages used in films (alias: language)
SELECT name AS language FROM language;

-- 3.3 First names of all employees
SELECT first_name FROM staff;

-- 4. Unique release years
SELECT DISTINCT release_year FROM film;

-- 5.1 Number of stores
SELECT COUNT(*) FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) FROM staff;

-- 5.3 Films available to rent and films rented
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. The 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Actors with first name SCARLETT
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 BONUS: films with ARMAGEDDON in the title and length > 100
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- 7.3 BONUS: number of films with behind the scenes content
SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
