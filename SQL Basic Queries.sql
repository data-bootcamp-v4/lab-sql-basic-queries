#1.Display all available tables in the Sakila database.

USE sakila;
SHOW FULL TABLES;

SELECT COUNT(*) FROM film;

SELECT COUNT(*) FROM film_text;

#2. Retrieve all the data from the tables actor, film and customer.

SELECT*FROM film;
SELECT*FROM actor;
SELECT*FROM customer;

# 3.Retrieve the following columns from their respective tables:

SELECT title FROM film;

SELECT name AS language FROM language;

SELECT first_name FROM staff;

# 4.Retrieve unique release years

SELECT DISTINCT release_year FROM film;

# 5. Counting records for database insights:
SELECT COUNT(*) AS store_id FROM store;
SELECT COUNT(*) AS staff_id FROM staff;

SELECT COUNT(*) AS available_films FROM inventory;
SELECT COUNT(DISTINCT inventory_id) AS rented_films FROM rental;

SELECT COUNT(DISTINCT last_name) FROM actor;

# 6. Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# 7. Use filtering techniques in order to:
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

#Bonus
  
SELECT COUNT(*) AS total_matching_films
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS films_with_bts
FROM film
WHERE FIND_IN_SET('Behind the Scenes', special_features);







