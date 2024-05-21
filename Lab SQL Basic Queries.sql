USE sakila;

-- Number one -- Display all available tables in the Sakila database.
SHOW TABLES;

-- Number two -- Retrieve all the data from the tables actor, film and customer.

Select *
FROM actor;

Select *
FROM film;

Select *
FROM customer;

-- Number 3 -- Retrieve the following columns from their respective tables

SELECT title
FROM film;

SELECT name AS language 
FROM language;

SELECT first_name
FROM staff;

-- Number 4 -- Retrieve unique release years.

SELECT DISTINCT YEAR(release_year) AS release_year 
FROM film

-- Number Five -- Counting records for database insights

SELECT COUNT(*) AS number_of_stores FROM sakila.store;

SELECT 
    (SELECT COUNT(*) FROM film) AS total_films,
    (SELECT COUNT(*) FROM inventory WHERE NOT inventory_id IN (SELECT inventory_id FROM rental)) AS films_available_for_rent,
    (SELECT COUNT(*) FROM rental) AS films_rented;

SELECT COUNT(DISTINCT last_name) AS number_of_distinct_last_names FROM actor;

-- Number Six -- Retrieve the 10 longest films.

SELECT * FROM film ORDER BY length DESC 
LIMIT 10;

-- Number 7 -- Retrieve all actors with the first name "SCARLETT".

SELECT * FROM actor WHERE first_name = 'SCARLETT';