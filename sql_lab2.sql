USE sakila;

-- 1.
SHOW TABLES;

-- 2.
SELECT * FROM actor, film, customer;

-- 3.
SELECT * FROM FILM;
SELECT title FROM film;
SELECT name AS language
FROM language;
SELECT first_name 
FROM staff;

-- 4.
SELECT DISTINCT release_year FROM film;

-- 5.
SELECT COUNT(*) AS store_count 
FROM store;
SELECT COUNT(*) AS employee_count
FROM staff;
SELECT 
    (SELECT COUNT(DISTINCT film_id) FROM inventory) AS films_for_rent,
    (SELECT COUNT(DISTINCT inventory.film_id)
     FROM rental
     JOIN inventory ON rental.inventory_id = inventory.inventory_id) AS films_rented;
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6.
SELECT length,title
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.
SELECT first_name 
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE 'ARMAGEDDON%';
-- It shows that length is 99

SELECT * FROM film;
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';