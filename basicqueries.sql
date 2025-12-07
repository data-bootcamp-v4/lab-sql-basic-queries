SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title from film;

select name AS language from language;

select first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS number_of_stores FROM store;

SELECT COUNT(*) AS number_of_employees FROM staff;

SELECT COUNT(*) AS films_available FROM inventory;

SELECT COUNT(DISTINCT inventory_id) AS films_rented from rental;

SELECT COUNT(DISTINCT last_name) AS distinct_l_names
FROM actor;

SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM actor
WhERE first_name = 'SCARLET';

SELECT title FROM film
WHERE title = 'ARMAGEDDON'
AND length > 100;


