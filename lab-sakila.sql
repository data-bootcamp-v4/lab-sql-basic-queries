USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Titles of all films from the film table
SELECT title FROM film;

SELECT name AS language
FROM language;

SELECT first_name FROM staff;

SELECT distinct release_year FROM film;

SELECT COUNT(*) as number_of_stores
FROM store;

SELECT COUNT(*) as number_of_employees
FROM staff;

SELECT 
COUNT(DISTINCT film_id) AS films_rented
FROM INVENTORY;

SELECT COUNT(*) FROM rental;

SELECT distinct last_name 
FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT first_name 
FROM actor
WHERE first_name = "SCARLETT";

SELECT title
FROM film
WHERE title LIKE "%ARMAGEDDON%" 
	AND length > 100;
    
SELECT COUNT(*) AS behinde_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';