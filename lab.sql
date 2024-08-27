USE sakila

-- number 1
SHOW TABLES;
-- number 2
SELECT * FROM sakila.actor;

SELECT * FROM sakila.customer;

SELECT * FROM sakila.film;

-- number 3
SELECT title FROM sakila.film;
SELECT name AS language FROM sakila.language;
SELECT first_name FROM sakila.staff;

-- number 4
SELECT DISTINCT release_year FROM sakila.film ORDER BY release_year;
-- number 5
SELECT COUNT(*) AS number_of_stores FROM sakila.store;

SELECT COUNT(*) AS number_of_employees FROM sakila.staff;

SELECT COUNT(*) AS films_available_for_rent FROM sakila.inventory WHERE inventory_id NOT IN (SELECT inventory_id FROM sakila.rental);

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM sakila.actor;
-- number 6
SELECT title, length FROM sakila.film ORDER BY length desc LIMIT 10;
-- number 7
SELECT first_name, last_name FROM sakila.actor WHERE first_name = 'SCARLETT';

