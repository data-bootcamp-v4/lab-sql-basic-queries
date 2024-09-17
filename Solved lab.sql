SHOW FULL TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
SELECT DISTINCT release_year FROM film;
SELECT COUNT(*) FROM staff;
SELECT COUNT(*) FROM film WHERE rental_duration IS NOT NULL;
SELECT COUNT(*) FROM rental;
SELECT COUNT(DISTINCT last_name) FROM actor;
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;
SELECT * FROM actor WHERE first_name = 'SCARLETT';




