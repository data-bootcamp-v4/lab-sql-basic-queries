USE sakila;
-- Use the sakila database to do the following tasks:
-- 1.  Display all available tables in the Sakila database.
SHOW TABLES;
-- 2 . Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title 
FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT * FROM language;
SELECT name
FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT * FROM staff;
SELECT last_name
FROM staff;
-- 4. Retrieve unique release years.
SELECT DISTINCT release_year
FROM film;
-- select * from film;
-- 5 Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
select	count(store_id)
from store;
-- 5.2 Determine the number of employees that the company has.
select	count(staff_id)
from staff;
-- 5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM rental;
select	count(film_id)
from film;
-- films available for rent
select	count(rental_id)
from rental;
SELECT * FROM film;
-- films rented
SELECT COUNT(return_date)
FROM rental;
-- 6. Retrieve the 10 longest films.
SELECT * FROM film;
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
-- 7. Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor;
SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";
-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film;
SELECT title, length
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND LENGTH>100;
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM film;
SELECT count(title)
FROM film
WHERE special_features LIKE "%Behind the scenes%" ;