USE sakila;
SHOW TABLES;
SHOW COLUMNS FROM actor;
## 2. Retrieve all the data from the tables `actor`, `film` and `customer`.
SELECT * FROM actor
LIMIT 10;
SELECT * FROM film
LIMIT 10;
SELECT * FROM customer
LIMIT 10;
SELECT * FROM language
LIMIT 10;
SELECT * FROM staff
LIMIT 10;

## 3. Retrieve the following columns from their respective tables:
	## 3.1 Titles of all films from the `film` table
	## 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
	## 3.3 List of first names of all employees from the `staff` table

SELECT title FROM film;

SELECT l.name
FROM film f
JOIN language l
ON f.language_id = l.language_id
GROUP BY l.name;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(DISTINCT store_id) FROM store;

SELECT COUNT(DISTINCT staff_id) FROM staff;

SELECT * FROM rental;
SELECT * FROM inventory;
SELECT * FROM film;

SELECT COUNT(DISTINCT i.film_id) as available_film 
FROM inventory i;

SELECT COUNT(rental_id) as total_rented_films FROM rental;

SELECT COUNT(DISTINCT last_name) fROM actor;

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

SELECT first_name, last_name FROM actor
WHERE first_name LIKE '%SCARLETT%';

SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length>100; 

SELECT COUNT(title) as number_of_films_with_behind_the_scenes FROM film
WHERE special_features = 'Behind the Scenes';