SHOW TABLES FROM sakila;

SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

SELECT title FROM sakila.film;
SELECT DISTINCT name AS language FROM sakila.language;
SELECT first_name FROM sakila.staff;

SELECT DISTINCT release_year FROM sakila.film;

SELECT COUNT(DISTINCT store_id) AS num_of_stores FROM sakila.store;
SELECT COUNT(DISTINCT staff_id) AS num_of_staff FROM sakila.staff;
SELECT COUNT(DISTINCT film_id) AS num_film FROM sakila.film;
SELECT COUNT(DISTINCT rental_id) AS num_rentals FROM sakila.rental;
SELECT COUNT(DISTINCT last_name) AS num_actors_name FROM sakila.actor;

SELECT film_id, title, length 
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM sakila.actor
WHERE first_name LIKE 'SCARLETT';

SELECT title FROM sakila.film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) FROM sakila.film WHERE special_features LIKE '%Behind the Scenes%';

SELECT * FROM sakila.film;


