USE sakila;

SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT name FROM language;

SELECT first_name
	FROM staff;
    
SELECT DISTINCT release_year
FROM film;

SELECT count(store_id) AS number_of_stores FROM store;

SELECT count(staff_id) AS number_of_employees
	FROM staff;
    
SELECT count(film_id) 
FROM film;

SELECT count(rental_id)
FROM rental;

SELECT DISTINCT(COUNT(last_name))
FROM actor;

SELECT length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%';

SELECT COUNT(*) AS films_with_behind_scenes
FROM film
WHERE special_features LIKE '%Behind%';

