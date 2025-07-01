-- Setting the working database
USE sakila;

-- 1. Display all available tables in the Sakila database.
-- Selecting all the data from table trans
SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM category;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM film_text;
SELECT * FROM inventory;
SELECT * FROM language; 
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM staff;
SELECT * FROM store;

-- 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3
-- 3.1
SELECT title from sakila.film;
-- 3.2
SELECT name  AS language from sakila.language;

-- 3.3
SELECT *, first_name from sakila.staff;

-- 4.
SELECT DISTINCT release_year FROM sakila.film;

-- 5 
-- 5.1 
SELECT COUNT(*)  store from sakila.store;
-- 5.2 
SELECT COUNT(*)  staff from sakila.staff;

-- 5.3
SELECT COUNT(*) films from sakila.rental;
SELECT COUNT(films) from sakila.rental;
SELECT last_update from sakila.rental;

-- 5.4
 SELECT DISTINCT last_name FROM sakila.actor;
 
 -- 6 
 
 SELECT * from skila.films ORDER BY length ASC;
 SELECT * FROM sakila.film Order by length DESC limit 10;
 
 SELECT loand_id, account_id, amount-payments AS debt FROM bank.loan
WHERE status = 'B' AND amount-payments > 1000
ORDER BY debt DESC;

SELECT first_name FROM sakila.actor WHERE first_name = "SCARLETT";

 