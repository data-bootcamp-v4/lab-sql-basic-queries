SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;

SELECT title
FROM film ;

SELECT name as 'language'
FROM language;

SELECT first_name       
FROM staff;

SELECT DISTINCT release_year
FROM film;

# Determine the number of stores that the company has
SELECT SUM(DISTINCT store_id) as 'total_stores'
FROM store;

# Determine the number of employees that the company has
SELECT SUM(DISTINCT staff_id) as 'total_employees'
FROM staff;

# Determine how many films are available for rent and how many have been rented
SELECT COUNT(*) as 'total_rented_films'
FROM rental;

#Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT(last_name)) as 'num_distinct_actor_last_names'
FROM actor;

#Retrieve the 10 longest films
SELECT length as 'top_10_longest_films'
FROM film
ORDER BY length DESC
LIMIT 10;

#Retrieve all actors with the first name "SCARLETT"
SELECT first_name, last_name
FROM actor
WHERE first_name = 'scarlett';

# Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title as 'armaggeddon_long_100_min'
FROM film
WHERE title LIKE '%armageddon%' AND length >100

