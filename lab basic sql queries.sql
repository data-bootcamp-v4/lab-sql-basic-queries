USE sakila

Display all available tables in the Sakila database.
SHOW FULL TABLES 

Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT * FROM language;
SELECT * FROM staff;


Titles of all films from the film table
SELECT title FROM film;

List of languages used in films, with the column aliased as language from the language table
SELECT name AS language FROM language;

List of first names of all employees from the staff table
SELECT first_name FROM staff;

Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

Determine the number of stores that the company has.

SELECT * FROM store
SELECT DISTINCT store_id FROM store

Determine the number of employees that the company has.
SELECT * FROM staff
SELECT DISTINCT staff_id FROM staff

Determine how many films are available for rent and how many have been rented.
SELECT * FROM inventory
SELECT * FROM rental
SELECT 
(SELECT COUNT(*) FROM inventory) AS rentable,
(SELECT COUNT(*) FROM rental) AS rented;

Determine the number of distinct last names of the actors in the database.
SELECT * FROM actor
SELECT DISTINCT last_name FROM actor

Retrieve the 10 longest films.
SELECT * FROM film
ORDER BY length DESC LIMIT 10;

Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
SELECT * FROM actor
WHERE first_name = "SCARLETT";

Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
SELECT * FROM film
WHERE title LIKE'ARMAGEDDON%'
AND length > 100;

SELECT COUNT(*) AS films_bts FROM film
WHERE special_features LIKE '%Behind the Scenes%';
SHOW FULL TABLES