-- LAB | SQL Basic Queries
USE sakila;
-- Question 1: Display all available tables
SHOW TABLES;

-- Question 2: Retrieve all data from actor, film and customer
SELECT * FROM actor;

SELECT * FROM film;

SELECT * FROM customer;

-- Question 3.1: Titles of all films
SELECT title
FROM film;

-- Question 3.2: Languages used in films
SELECT name AS language
FROM language;

-- Question 3.3: First names of all employees
SELECT first_name
FROM staff;

-- Question 4: Retrieve unique release years
SELECT DISTINCT release_year
FROM film;

-- Question 5.1: Number of stores
SELECT COUNT(*) as number_of_store 
FROM store;

-- Question 5.2: Number of employees
SELECT count(*) AS number_of_employee
FROM staff;

-- Question 5.3.1: Number of films available for rent
SELECT COUNT(*) AS films_available
FROM inventory;

-- Question 5.3.2: Number of films that have been rented
SELECT COUNT(*) AS films_rented 
FROM rental;

-- Question 5.4: Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

-- Question 6: Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Question 7.1: Actors named SCARLETT
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- Bonus 7.2: ARMAGEDDON movies longer than 100 minutes
SELECT title, length
FROM film
WHERE title like '%ARMAGEDDON%'
AND length>100;

-- Bonus 7.3: Films with Behind the Scenes content
SELECT COUNT(*) AS behind_the_scenes_films
FROM film
WHERE special_features LIKE '%Behind the scenes%';



























