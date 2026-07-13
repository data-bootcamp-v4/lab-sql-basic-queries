CREATE DATABASE IF NOT EXISTS sakila;
USE Sakila 	

SHOW Tables;
SELECT * 
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;
-- 3.1 Titles of all films from the film table
SELECT title
FROM film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table

SELECT name AS language
FROM language;

-- 3.3 List of first names of all employees from the staff table
SELECT *
FROM staff;

SELECT first_name
FROM staff;

-- 4. Retrieve unique release years.

SELECT DISTINCT release_year
FROM film;

-- 5
-- 5.1 Store count
SELECT COUNT(*) AS total_stores
FROM store;
-- 5.2 Staff count
SELECT COUNT(*) AS total_staff
FROM staff;

-- 5.3 Available films
SELECT 
    COUNT(inventory_id) AS total_inventory
FROM 
    inventory;

SELECT 
    COUNT(DISTINCT inventory_id) AS rented_films
FROM 
    rental
WHERE 
    return_date IS NULL;	
-- 183 Rented films

SELECT 
    (SELECT COUNT(inventory_id) FROM inventory) - 
    (SELECT COUNT(DISTINCT inventory_id) FROM rental WHERE return_date IS NULL) 
    AS available_for_rent;
-- 4398 Available films


-- 5.4 Count actors
SELECT 
	COUNT(DISTINCT last_name) AS last_name_actor
FROM actor;

-- 6 Longest movies
Select length
FROM film;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7 Actors with first name scartlett
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';



	