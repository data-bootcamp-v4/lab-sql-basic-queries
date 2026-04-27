USE sakila;
-- Part 1: Display all available tables --
SHOW TABLES;

-- Part 2: Retrieve data for actor, film, customer --
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Part 3: Retrieve data for film titles, language, staff first names --
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

-- Part 4: Get data about release years --
SELECT DISTINCT release_year FROM film;

-- Part 5: Number of stores, staff, films available, films rented, actor last names --
SELECT COUNT(*) FROM store;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) AS physical_copies_available FROM inventory;
SELECT COUNT(*) AS total_historical_rentals FROM rental;
SELECT COUNT(DISTINCT last_name) FROM actor;

-- Part 6: Get 10 longest movies --
SELECT title, length FROM film 
ORDER BY length DESC 
LIMIT 10;

-- Part 7: Find all actors called Scarlett; Bonus Armageddon, Behind the scenes -- % wildcard to find starts/ends with..
SELECT * FROM actor WHERE first_name = 'SCARLETT';

SELECT * FROM film 
WHERE title LIKE '%ARMAGEDDON%'	 
AND length > 100;

SELECT COUNT(*) FROM film 
WHERE special_features LIKE '%Behind the Scenes%';