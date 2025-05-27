SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title from film;
SELECT original_language_id FROM film AS LANGUAGE;
SELECT first_name from staff;

SELECT DISTINCT release_year
FROM film;

-- Determine the number of stores that the company has.

SELECT DISTINCT store_id
FROM store;

-- Determine the number of employees that the company has.

SELECT DISTINCT staff_id
FROM staff;

-- Determine how many films are available for rent and how many have been rented.

SELECT COUNT(film_id) FROM film;
SELECT COUNT(rental_id) FROM rental;

-- Determine the number of distinct last names of the actors in the database.

SELECT COUNT(distinct last_name) FROM actor;

-- Retrieve the 10 longest films.

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

--  Retrieve all actors with the first name "SCARLETT".

SELECT * 
FROM actor	
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE  '%ARMAGEDDON%' and length > 100;