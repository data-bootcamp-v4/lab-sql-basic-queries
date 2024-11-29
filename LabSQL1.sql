USE sakila;
#1
SHOW TABLES;
#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#3
SELECT title FROM film;
SELECT name as language FROM language;
SELECT first_name FROM staff;
#4
SELECT DISTINCT release_year FROM film;

#5
SELECT COUNT(*) AS num_stores FROM store;

SELECT COUNT(*) AS num_employees FROM staff;

SELECT 
    (SELECT COUNT(film_id) FROM inventory) AS films_available_for_rent,
    (SELECT COUNT(rental_id) FROM rental) AS films_rented;

SELECT COUNT(DISTINCT last_name) AS num_distinct_last_names FROM actor;

#6
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

#7
SELECT * FROM actor WHERE first_name = 'SCARLETT';

#7 Bonus
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;



