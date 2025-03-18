USE sakila;

SHOW Tables;

select * FROM actor;

SELECT DISTINCT last_name FROM actor;

SELECT* FROM rental;

SELECT * FROM film;

SELECT length FROM film ORDER by length DESC LIMIT 10;


SELECT title FROM film;


select * from customer;

SELECT language from language;

SELECT * FROM staff;

SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT * FROM store;

SELECT * FROM actor WHERE first_name = "SCARLETT";

SELECT * FROM film WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

SELECT * FROM film WHERE special_features LIKE "%Behind the Scenes%";
