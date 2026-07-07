USE Sakila;
--- Display all available tables in the Sakila database.
SHOW TABLES FROM sakila;
--- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor; 
SELECT * FROM film; 
SELECT * FROM customer; 
SELECT title FROM film;
--- Retrieve the following columns from their respective tables:
SELECT name AS "language" FROM language; 
SELECT first_name FROM staff;
SELECT distinct release_year FROM film;
SELECT COUNT(*)   FROM store;
SELECT COUNT(*) staff_id  FROM staff;
--- Films available to rent
SELECT COUNT(*) AS available_for_rent
FROM inventory;
--- Last names of Actors
SELECT COUNT(DISTINCT last_name) AS "Number_of_last_names"
FROM actor;
--- 10 longest films
SELECT length
FROM film
ORDER BY length DESC
LIMIT 10;
--- Retrieve all actors with the first name "SCARLETT"
SELECT *
FROM actor
WHERE first_name = "SCARLETT";
--- BONUS
SELECT *
FROM film
WHERE length > 100
  AND title LIKE "%ARMAGEDDON%";


