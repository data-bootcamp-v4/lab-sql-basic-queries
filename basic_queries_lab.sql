-- 2
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- 3
SELECT title FROM sakila.film;

SELECT name FROM sakila.language;

SELECT first_name FROM sakila.staff;

-- 4

SELECT DISTINCT release_year FROM sakila.film;

-- 5.1

SELECT COUNT(store_id) FROM sakila.store;

-- 5.2

SELECT COUNT(staff_id) FROM sakila.staff;

-- 5.3
-- Rented films: 
SELECT COUNT( DISTINCT inventory_id) FROM rental
WHERE return_date is null; -- 183
-- Total films: 
SELECT COUNT(DISTINCT inventory_id) FROM rental; -- 4580

-- 5.4

SELECT COUNT( distinct last_name ) FROM sakila.actor;

-- 6

SELECT MAX(length) FROM sakila.film;

-- 7.1

SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';

-- 7.2

SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3

SELECT * FROM film
WHERE special_features LIKE '%Behind the Scenes%'; 





