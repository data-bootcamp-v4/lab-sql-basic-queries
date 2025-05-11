USE sakila;

SHOW Tables;

 SELECT *
 FROM sakila.actor;
 
 SELECT title
 FROM sakila.film;
 
 SELECT *
 FROM sakila.customer;
 
 SELECT title
 FROM sakila.film;
 
 SELECT *
 FROM sakila.language;
 
 SELECT name AS 'language'
 FROM sakila.language;
 
 SELECT first_name
 FROM sakila.staff;
 
 SELECT *
 FROM sakila.film;
 
 SELECT DISTINCT(release_year)
 FROM sakila.film;
 
 SELECT *
 FROM sakila.store;
 
 SELECT COUNT(store_id) AS 'Number of Stores'
 FROM sakila.store; 

SELECT *
FROM sakila.staff;

 SELECT COUNT(staff_id) AS 'Number of Employees'
 FROM sakila.staff;

SELECT count(*)
FROM rental
WHERE return_date IS NULL;


SELECT *
FROM rental;

SELECT *
FROM inventory;

SELECT
(SELECT COUNT(*) FROM inventory)-(SELECT COUNT(*) FROM rental WHERE return_date IS NULL) AS available_for_rent;

SELECT *
FROM sakila.actor;

SELECT DISTINCT(COUNT(last_name))
FROM sakila.actor;

SELECT *
FROM film;

SELECT title
FROM film
ORDER BY length DESC
LIMIT 10; 

SELECT *
FROM actor; 

SELECT *
FROM actor
WHERE first_name='SCARLETT';

SELECT *
FROM filfm;

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length>100;