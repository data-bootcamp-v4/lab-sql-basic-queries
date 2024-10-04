USE sakila;

#1 Show the tables.
SHOW TABLES;

#2 Retrieve all data from some tables.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3 Retrieve specific columns from their respective tables.
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

#4 Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

#5 Counting records for database insights.
SELECT COUNT(*) AS number_of_stores FROM store;
SELECT COUNT(*) AS number_of_employees FROM staff;
SELECT COUNT(*) AS films_available_for_rent FROM inventory;
SELECT COUNT(*) AS films_rented FROM rental;
SELECT COUNT(DISTINCT last_name) AS actors_last_name FROM actor;

#6 Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name = 'SCARLETT';

# Bonus: Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;

# Bonus: Determine the number of films that include Behind the Scenes content.
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';


