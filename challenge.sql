USE sakila;

-- 1
SHOW TABLES; 

-- 2
SELECT *
FROM actor;
SELECT *
FROM film;
SELECT *
FROM customer;

-- 3.1
SELECT title
FROM film;

-- 3.2
SELECT name AS language
FROM language;

-- 3.3
SELECT first_name
FROM staff;

-- 4
SELECT DISTINCT release_year
FROM film;

-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id)
FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id)
FROM staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.

--  Don't understand
SELECT rental_duration, COUNT(*)
FROM film
GROUP BY rental_duration;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name)
FROM actor;

-- 6 Retrieve the 10 longest films.
SELECT title
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title
FROM film
WHERE LOCATE("ARMAGEDDON", title) AND length > 100;

SELECT title
FROM film
WHERE title like "%ARMAGEDDON%" AND length > 100;

-- 7.3 Determine the number of films that include Behind the Scenes content$
SELECT COUNT(*)
FROM film
WHERE special_features LIKE "%Behind the Scenes%";