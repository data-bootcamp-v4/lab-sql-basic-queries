USE sakila;

-- Challenge 1
SHOW TABLES;

-- Challenge 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 List of languages (aliased)
SELECT name AS language FROM language;

-- 3.3 First names of all employees
SELECT first_name FROM staff;
-- Challenge 4: Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- Challenge 5.1: Number of stores
SELECT COUNT(*) FROM store;

-- Challenge 5.2: Number of employees
SELECT COUNT(*) FROM staff;

-- Challenge 5.3: Available for rent vs Rented
SELECT COUNT(*) FROM inventory; -- Available
SELECT COUNT(*) FROM rental;    -- Rented

-- Challenge 5.4: Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) FROM actor;
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;
-- 7.1 All actors with first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- BONUS 7.2: Titles with "ARMAGEDDON" and duration > 100
SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
AND length > 100;

-- 7.3 How many films have "Behind the Scenes"?
SELECT COUNT(*) FROM film 
WHERE special_features LIKE '%Behind the Scenes%';