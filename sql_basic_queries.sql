-- LAB | SQL Basic Queries

USE sakila;

-- Challenge 1: Display all available tables in the Sakila database
SHOW TABLES;

-- Challenge 2: Retrieve all data from actor, film and customer

-- 2.1 Retrieve all data from actor
SELECT *
FROM actor;

-- 2.2 Retrieve all data from film
SELECT *
FROM film;

-- 2.3 Retrieve all data from customer
SELECT *
FROM customer;

-- Challenge 3.1: Retrieve all film titles
SELECT title
FROM film;

-- Challenge 3.2: Retrieve film languages and alias the column as language
SELECT name AS language
FROM language;

-- Challenge 3.3: Retrieve the first names of all staff
SELECT first_name
FROM staff;

-- Challenge 4: Retrieve unique release years
SELECT DISTINCT release_year
FROM film;

-- Challenge 5.1: Determine the number of stores
SELECT COUNT(*)
FROM store;

-- Challenge 5.2: Determine the number of employees
SELECT COUNT(*)
FROM staff;

-- Challenge 5.3: Determine how many films are available for rent and how many have been rented

-- Count films in inventory
SELECT COUNT(*)
FROM inventory;

-- Count rental transactions
SELECT COUNT(*)
FROM rental;

-- Challenge 5.4: Determine the number of distinct actor last names

SELECT COUNT(DISTINCT last_name)
FROM actor;

-- Challenge 6: Retrieve the 10 longest films

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Challenge 7.1: Retrieve actors with first name SCARLETT

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- Challenge 7.2: Find films containing ARMAGEDDON with a duration longer than 100 minutes

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

-- Bonus Challenge 7.3: Count films that include Behind the Scenes content

SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


