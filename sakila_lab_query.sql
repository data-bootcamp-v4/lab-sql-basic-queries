SHOW TABLES;

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT title
FROM film;

SELECT name
FROM language;

SELECT first_name
FROM staff;

SELECT release_year
FROM film
GROUP BY release_year;

SELECT COUNT(*) AS "Number of store"
FROM store;

SELECT COUNT(*) AS "Number of employees"
FROM staff;

SELECT COUNT(*) AS "Number of films that have been rent"
FROM rental;

SELECT COUNT(*) AS "Number of films available for rent"
FROM inventory;

SELECT COUNT(DISTINCT last_name) AS "Number of last name"
FROM actor;

SELECT title "Top 10 longest films"
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name = "SCARLETT";

SELECT title
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT title
FROM film
WHERE special_features like '%Behind the Scenes%'
