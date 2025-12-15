-- Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

USE sakila;
-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Titles of all films from the film table
SELECT  title 
FROM film;

-- List of languages used in films, with the column aliased as language from the language table
SELECT name AS language
FROM language;

-- List of first names of all employees from the staff table
SELECT first_name, last_name
FROM staff;
 
-- Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;

-- Determine the number of stores that the company has.
SELECT COUNT(*) AS number_of_stores
FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS number_of_employees
FROM staff;
-- Determine how many films are available for rent and how many have been rented
SELECT COUNT(*) AS rented_films 
FROM rental;
SELECT COUNT(*) AS available_films
FROM inventory;

-- Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;
-- Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- Retrieve all actors with the first name "SCARLETT".
 SELECT first_name ,last_name
 FROM actor
 WHERE first_name= 'SCARLETT';

-- Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.


SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
-- Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) AS number_of_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
