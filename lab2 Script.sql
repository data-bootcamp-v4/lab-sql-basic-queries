USE sakila;

SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor, film, customer;

-- 3. Retrieve the following columns from their respective tables:
SELECT title FROM film;

SELECT name AS language
FROM language;

SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(DISTINCT store_id) FROM store;

-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(DISTINCT staff_id) FROM staff;
-- We use count because we want the total number

-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT COUNT(*) FROM rental;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) FROM actor;
-- COUNT, since it asks for a number, and not the list

-- 6. Retrieve the 10 longest films.
SELECT length, title FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor 
WHERE first_name = 'Scarlett';
