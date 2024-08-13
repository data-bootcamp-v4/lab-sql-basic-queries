USE sakila;

SHOW tables; 
-- Retrieve all data from the actor table, film table, and customer table 

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

SELECT title FROM film;

-- Retrieve list of languages used in films with the column aliased as language

SELECT name as language FROM language;
SELECT first_name FROM staff; 

SELECT distinct release_year
FROM film;

SELECT film_id, title, release_year
FROM film
LIMIT 10;
SELECT DISTINCT release_year
FROM film;

SELECT COUNT(*) AS number_of_stores
FROM store;

SELECT COUNT(*) AS number_of_employees
FROM staff;

SELECT COUNT(distinct film_id) AS films_available_for_rent
FROM inventory;

SELECT COUNT(distinct last_name) AS distinct_last_names
FROM actor;

SELECT title, length 
FROM film
order by length desc 
limit 10;


SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

SELECT COUNT(*) AS no_film_behind_the_scenes
FROM film 
WHERE description LIKE '%Behind%';
