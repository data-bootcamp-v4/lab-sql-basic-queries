USE sakila;

SHOW Tables;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title
FROM film;

SELECT name AS language
FROM language;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(*) AS number_of_stores
FROM store;

SELECT COUNT(*) AS number_of_employees
FROM staff;

SELECT 
    COUNT(DISTINCT inventory.film_id) AS films_available_for_rent,
    COUNT(DISTINCT rental.inventory_id) AS films_rented
FROM inventory
LEFT JOIN rental 
    ON inventory.inventory_id = rental.inventory_id;
    
    SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

SELECT title as film , length as film_length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
  




SELECT *
FROM actor
WHERE first_name = 'SCARLETT';








