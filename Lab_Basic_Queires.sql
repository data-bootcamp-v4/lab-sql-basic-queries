USE sakila;

-- 1. Display all available tables in the Sakila database.
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
select* 
FROM actor,film,customer;

-- 3. Retrieve the following columns from their respective tables:
SELECT title FROM film;
SELECT DISTINCT name AS language FROM language;
SELECT first_name FROM staff;

-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;

-- 5 Counting records for database insights:
select COUNT(store_id) AS Number_Stores FROM store;
select COUNT(staff_id) AS number_employees FROM staff;
select COUNT(rental_id) AS available, COUNT(rental_date) AS currently_rented FROM rental;
SELECT COUNT(distinct(last_name)) AS distinct_lasta_name FROM actor;

-- 6 Retrieve the 10 longest films.
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;


-- 7 Use filtering techniques in order to:
SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

SELECT title, length
FROM film
WHERE title LIKE 'ARMAGEDDON%' AND length >100;

SELECT COUNT(*) AS num_films
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

