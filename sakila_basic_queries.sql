USE sakila
-- 1) Display all available tables
SHOW TABLES;

-- 2) Retrieve all the data from actor, film, and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3) Retrieve specific columns
-- 3.1 Titles of all films
SELECT title FROM film;

-- 3.2 List of languages (aliased as 'language')
SELECT name AS language FROM language;

-- 3.3 First names of all employees (staff)
SELECT first_name FROM staff;

-- 4) Retrieve unique release years
SELECT DISTINCT release_year
FROM film
ORDER BY release_year;

-- 5) Counting records
-- 5.1 Number of stores
SELECT COUNT(*) AS number_of_stores FROM store;

-- 5.2 Number of employees
SELECT COUNT(*) AS number_of_employees FROM staff;

-- 5.3 How many films are available for rent and how many have been rented
-- (A) Total copies available in inventory (all copies the company owns)
SELECT COUNT(*) AS total_inventory_copies FROM inventory;

-- (B) Total rentals ever made
SELECT COUNT(*) AS total_rentals_made FROM rental;

-- (Optional, nice-to-have) Current availability right now:
-- Copies currently rented out (not yet returned)
SELECT COUNT(*) AS copies_out_now
FROM rental
WHERE return_date IS NULL;

-- Copies currently on the shelf (in inventory and NOT out now)
SELECT COUNT(*) AS copies_available_now
FROM inventory i
LEFT JOIN rental r
  ON r.inventory_id = i.inventory_id
 AND r.return_date IS NULL
WHERE r.rental_id IS NULL;

-- 5.4 Number of distinct actor last names
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names
FROM actor;

-- 6) Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC, title ASC
LIMIT 10;

-- 7) Filtering
-- 7.1 All actors with first name 'SCARLETT'
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Movies with 'ARMAGEDDON' in the title and duration > 100 minutes
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100
ORDER BY length DESC;

-- 7.3 Number of films that include 'Behind the Scenes' content
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
