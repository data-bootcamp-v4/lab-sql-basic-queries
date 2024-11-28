-- Question 1
SHOW TABLES IN sakila;

-- Question 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Question 3
SELECT title FROM film;

SELECT name AS language
FROM language;

SELECT fist_name FROM staff;

-- Question 4
SELECT DISTINCT release_year
FROM film;

-- Question 5
SELECT COUNT(DISTINCT(store_id)) FROM sakila.store;		-- It has 2 stores
SELECT COUNT(DISTINCT(staff_id)) FROM sakila.staff;		-- It has 2 staff

SELECT COUNT(DISTINCT(film_id)) FROM sakila.inventory;		-- 958 distinct movies in stock
SELECT COUNT(DISTINCT(inventory_id)) FROM sakila.rental;	-- 4580 movies have been rented
SELECT COUNT(DISTINCT(last_name)) FROM sakila.actor;		-- 121 distinct last names

-- Question 6
SELECT title FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- Question 7
SELECT * FROM sakila.actor
WHERE first_name = "SCARLETT";

-- Bonus 1
SELECT * FROM sakila.film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

-- Bonus 2
SELECT COUNT(*) FROM sakila.film
WHERE special_features LIKE "%Behind the Scenes%";		-- There are 538 movies with Behind the Scenes

