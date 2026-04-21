USE sakila;

-- 1. Display all available tables
SHOW TABLES;

-- 2. Retrieve all data from actor, film, customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 List of languages (alias = language)
SELECT name AS language FROM language;

-- 3.3 First names of all employees (staff)
SELECT first_name FROM staff;

-- 4. Unique release years
SELECT DISTINCT release_year FROM film;

-- 5.1 Number of stores
SELECT COUNT(*) AS num_stores FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS num_employees FROM staff;

-- 5.3 How many films are available for rent and how many have been rented?
SELECT COUNT(*) AS num_films_available_for_rent FROM inventory;
SELECT COUNT(*) AS num_films_rented FROM rental;

-- 5.4 Distinct last names of actors
SELECT COUNT(DISTINCT last_name) AS num_distinct_actor_lastnames FROM actor;

-- 6. The 10 longest films
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

-- 7.1 All actors with first name "SCARLETT"
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- BONUS 7.2 Films with "ARMAGEDDON" in title and length > 100
SELECT title, length FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- BONUS 7.3 Films with "Behind the Scenes"
SELECT COUNT(*) AS num_films_behind_the_scenes FROM film WHERE special_features LIKE '%Behind the Scenes%';
