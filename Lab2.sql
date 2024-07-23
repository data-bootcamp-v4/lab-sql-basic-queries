-- Active: 1721292127253@@127.0.0.1@3306@sakila 
--1. Display all available tables in the Sakila database.
--2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM category;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM film_text;
SELECT * FROM inventory;
SELECT * FROM language;
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM staff;
SELECT * FROM store;
--3. Retrieve the following columns from their respective tables:

3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
-- 4. Retrieve unique release years.
SELECT DISTINCT(release_year) FROM film;
--5. Counting records for database insights:
SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT COUNT(inventory_id) FROM inventory;
SELECT COUNT(DISTINCT(inventory_id)) FROM rental;
SELECT DISTINCT last_name FROM actor;
--6. Retrieve the 10 longest films.
SELECT length, title
FROM film
ORDER BY length desc
LIMIT 10;
--7. Use filtering techniques in order to:
SELECT * 
FROM actor
WHERE first_name = "SCARLETT";
--BONUS:
SELECT *
FROM film 
WHERE title LIKE "%ARMAGEDDON%" AND length >100;

SELECT *
FROM film
WHERE special_features LIKE "%Behind the Scenes%";




