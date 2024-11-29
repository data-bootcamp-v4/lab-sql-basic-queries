USE sakila;
-- Display all tables in the Sakila database
SHOW TABLES FROM sakila;
-- Retrieve all data from the 'actor' table
SELECT * FROM actor;
-- Retrieve all data from the 'film' table
SELECT * FROM film;
-- Retrieve all data from the 'customer' table
SELECT * FROM customer;
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
-- Retrieve unique release years.
SELECT DISTINCT release_year FROM film;
-- Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT SUM(store_id) FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT SUM(staff_id) FROM staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT SUM(inventory_id) FROM inventory;
SELECT SUM(inventory_id) FROM rental;
-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT last_name FROM actor;
-- Retrieve the 10 longest films.
SELECT title, rental_duration FROM film ORDER BY rental_duration DESC LIMIT 10;
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT a.actor_id, a.first_name, a.last_name, f.title
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE a.first_name = 'SCARLETT';
