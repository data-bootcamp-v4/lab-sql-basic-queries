USE sakila;

#1
SHOW TABLES;

#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3.1
SELECT DISTINCT title FROM film;
#3.2
SELECT DISTINCT name AS language 
FROM language
ORDER BY language ASC;
#3.3
SELECT first_name
FROM staff;

#4
SELECT DISTINCT release_year
FROM film;

#5.1
SELECT COUNT(DISTINCT store_id)
FROM store;
#5.2
SELECT COUNT(DISTINCT staff_id)
FROM staff;
#5.3
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM rental;
#5.4
SELECT count(DISTINCT last_name)
FROM actor;

#6
SELECT title
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1
SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

#7.2
SELECT title
FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

#7.3
SELECT COUNT(title)
FROM film
WHERE special_features LIKE "%BEHIND THE SCENES%";

