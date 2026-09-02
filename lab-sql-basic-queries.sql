USE sakila;


SHOW TABLES ; 
SELECT * FROM actor;
SELECT * FROM film ;
SELECT * FROM customer;
SELECT name AS language FROM language ;
SELECT first_name FROM staff ;
SELECT DISTINCT release_year FROM film ;
SELECT COUNT(*) AS number_of_stores FROM store ;
SELECT COUNT(*) AS number_of_mployee FROM staff; 
-- Exercise 5.3: Count films available for rent and films rented

SELECT COUNT(*) AS films_available_for_rent
FROM inventory;

SELECT COUNT(*) AS films_rented
FROM rental;
-- Exercise 5.4: Count distinct actor last names

SELECT COUNT(DISTINCT last_name) AS number_of_distinct_last_names
FROM actor;
-- Exercise 6: Retrieve the 10 longest films

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- Exercise 7.1: Retrieve actors whose first name is SCARLETT

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
-- Exercise 7.2: Films containing ARMAGEDDON and longer than 100 minutes

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  -- Exercise 7.3: Count films containing Behind the Scenes content

SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
