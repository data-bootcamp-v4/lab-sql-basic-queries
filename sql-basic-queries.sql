
USE sakila

-- Challenge 3.1 - Display all available tables
SHOW TABLES;

-- Challenge 3.2 - Retrieve all data from 'actor', 'film', and 'customer' tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Challenge 3.3.1 - Retrieve titles of all films
SELECT 
    title
FROM film;

-- Challenge 3.3.2 - List of languages used in films (aliased as 'language')
SELECT 
    name AS language
FROM language;

-- Challenge 3.3.3 - List of first names of all employees from 'staff'
SELECT 
    first_name
FROM staff;

-- Challenge 3.4 - Retrieve unique release years
SELECT DISTINCT 
    release_year
FROM film;

-- Challenge 3.5.1 - Number of stores the company has
SELECT 
    COUNT(*) AS number_of_stores
FROM store;

-- Challenge 3.5.2 - Number of employees the company has
SELECT 
    COUNT(*) AS number_of_employees
FROM staff;

-- Challenge 3.5.3 - Number of films available for rent and films that have been rented
-- Films available for rent
SELECT 
    COUNT(*) AS available_films
FROM inventory;

-- Films that have been rented
SELECT 
    COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;

-- Challenge 3.5.4 - Number of distinct last names of actors
SELECT 
    COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- Challenge 3.6 - Retrieve the 10 longest films
SELECT 
    title, 
    length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Challenge 3.7.1 - Retrieve all actors with the first name "SCARLETT"
SELECT 
    *
FROM actor
WHERE first_name = 'SCARLETT';

-- Challenge 3.7.2 BONUS - Movies with 'ARMAGEDDON' in title and duration > 100 minutes
SELECT 
    *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;

-- Challenge 3.7.3 BONUS - Number of films that include Behind the Scenes content
SELECT 
    COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';