USE sakila;

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT title 
FROM film;

SELECT language_id AS language
FROM film;

SELECT * 
FROM staff;

SELECT first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

## 5. Counting records for database insights:
## 5.1 Determine the number of stores that the company has.

SELECT COUNT(store_id)
FROM store;

## 5.2 Determine the number of employees that the company has.

SELECT COUNT(staff_id)
FROM staff;

## 5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(*) AS total_films_available
FROM inventory;

## Retrieve the 10 longest films.

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

## Use filtering techniques in order to:
## 7.1 Retrieve all actors with the first name "SCARLETT"

SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

## BONUS:
## 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

SELECT *
FROM film
WHERE length > 100 AND title = 'ARMAGEDDON';



