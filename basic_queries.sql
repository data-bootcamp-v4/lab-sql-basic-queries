USE sakila;
SHOW tables FROM sakila;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;
SELECT l.name AS Language FROM language as l;
SELECT first_name AS 'First Name' FROM sakila.staff;

SELECT DISTINCT f.release_year FROM sakila.film as f;

SELECT COUNT(store_id) as number_of_stores FROM store;
SELECT COUNT(staff_id) as number_of_employees FROM staff;
SELECT count(film_id) as number_of_films FROM film; -- number of films available for rent
SELECT count(rental_id) as number_of_rentals FROM rental; -- number of rentals (not distinct)
SELECT COUNT(DISTINCT a.last_name) AS number_of_last_names FROM actor as a;

SELECT f.title, f.length FROM film as f
ORDER BY length DESC LIMIT 10;

SELECT a.first_name, a.last_name FROM actor as a
WHERE first_name = 'Scarlett';

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT * FROM film
WHERE special_features = 'Behind the Scenes';