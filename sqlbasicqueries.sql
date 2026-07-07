USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

select title from film;
select name as language from language;
select first_name from staff;

select distinct release_year from film;

SELECT COUNT(*) FROM store;

select count(*) from staff;

SELECT COUNT(*) AS films_available FROM inventory;
SELECT COUNT(*) AS films_rented FROM rental;

SELECT DISTINCT last_name FROM actor;

SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT first_name FROM actor WHERE first_name = "SCARLETT";

SELECT * FROM actor WHERE first_name = "SCARLETT";

