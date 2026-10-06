USE sakila;


show full tables;

SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM film_text;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

Select title from sakila.film;

SELECT * FROM language;

Select * FROM staff LIMIT 3;

SELECT DISTINCT release_year FROM sakila.film; 

SELECT DISTINCT store_id FROM sakila.store; 
SELECT DISTINCT staff_id FROM sakila.staff;

SELECT COUNT(inventory_id) FROM inventory;
SELECT COUNT(inventory_id) FROM rental;
SELECT COUNT(DISTINCT last_name) From actor;

SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM sakila.actor
WHERE first_name = "SCARLETT";