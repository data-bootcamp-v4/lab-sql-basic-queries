USE sakila;

-- display all tables ---
SHOW TABLES;

-- retrive data from actor,film and customer --
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- retrive columns --
-- 1.title film --
SELECT title FROM film;
-- 2.List of languages used in films
SELECT name AS language FROM language;
-- 3.first names of all employees from the staff table
SELECT first_name FROM staff;
-- unique release years--
SELECT DISTINCT release_year FROM film;
-- Counting records for databas--
-- 1.number of stores--
SELECT COUNT(*) AS num_stores FROM store;
select * from store;

-- 2.number of employees--
SELECT COUNT(*) AS num_employees from staff;
select * from staff;

-- 3.how many films are availble for rent and how many are rented--
select * from inventory;
select * from rental;

SELECT COUNT(DISTINCT film_id) AS available
FROM inventory, rental
WHERE inventory.inventory_id = rental.inventory_id
  AND rental.return_date IS NOT NULL;
  
-- rented--

SELECT COUNT(DISTINCT film_id) AS rented FROM inventory WHERE inventory_id IN(SELECT inventory_id FROM rental);

-- num distinct last names of actors--
SELECT COUNT(DISTINCT last_name) AS num_distinct_lastname FROM actor;

-- 10 longest film--
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- scarlett first name--
SELECT * FROM actor WHERE first_name = "SCARLETT";

-- armageddon title and longer than 100min--
select title from film;
SELECT title, length FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

-- films with behind the scenes--
select special_features from film;

SELECT COUNT(*) AS films_with_behind_scenes
FROM film
WHERE special_features LIKE "%Behind the Scenes%"

