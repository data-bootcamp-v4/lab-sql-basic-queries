USE sakila;
#challenge 1.
SHOW TABLES;

#challenge 2.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#challenge 3.
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;

#challenge 4.
SELECT DISTINCT release_year FROM film;

#challenge 5.
SELECT COUNT(*) AS number_of_stores FROM store;
SELECT COUNT(*) AS number_of_employees FROM staff;
SELECT DISTINCT last_name FROM actor; 

#challenge 6. 
SELECT * 
FROM film 
ORDER BY length DESC 
LIMIT 10;

#challenge 7.
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

SELECT * 
FROM film
WHERE (title LIKE '%ARMAGEDDON%' AND length >=100);

SELECT COUNT(special_features) AS include_BTS
FROM film;