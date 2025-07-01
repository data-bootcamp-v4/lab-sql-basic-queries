SHOW TABLES;

-- Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- Retrieve the following columns from their respective tables:

-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table

SELECT title FROM film;
SELECT name as language FROM language;
SELECT first_name FROM staff;

-- Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
-- 5.2 Determine the number of employees that the company has.
-- 5.3 Determine how many films are available for rent and how many have been rented.
-- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT count(store_id) as number_of_stores FROM store;
SELECT count(staff_id) as Number_of_employees FROM staff;
SELECT COUNT(DISTINCT inventory_id) AS rented_films
FROM rental;
SELECT count(distinct film_id) FROM inventory;
SELECT DISTINCT last_name FROM actor;

-- Retrieve the 10 longest films.

SELECT distinct  length  FROM film
order by length desc
limit 10;

-- Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".

SELECT * FROM actor
where first_name like 'SCARLETT'