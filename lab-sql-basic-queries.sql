USE sakila;

#1
SHOW TABLES FROM sakila;

#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3.1
SELECT title FROM film;

#3.2
SELECT name AS language
FROM language;

#3.3
SELECT * FROM staff;
SELECT first_name, last_name FROM staff;

#4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

#5.1 Determine the number of stores that the company has.
SELECT * FROM store;
SELECT COUNT(*) FROM store;

#5.2 Determine the number of employees that the company has.
SELECT * FROM staff;
SELECT COUNT(staff_id) FROM staff;

#5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM rental;

SELECT COUNT(*) AS available_films
FROM rental
WHERE return_date IS NOT NULL;

SELECT COUNT(*) AS rented_films
FROM rental;

#5.4 Determine the number of distinct last names of the actors in the database.
SELECT DISTINCT COUNT(last_name) AS distinct_last_name
FROM actor;

#6. Retrieve the 10 longest films.
SELECT title AS 10_longest_films
FROM film
ORDER BY length ASC
LIMIT 10;

#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name = "SCARLETT";

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

#7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(*) FROM film
WHERE special_features LIKE "%Behind the Scenes%";


