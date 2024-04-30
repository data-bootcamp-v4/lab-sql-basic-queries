USE sakila;

SHOW tables;

SELECT * FROM actor; 
SELECT * FROM film;
SELECT * FROM customer;


SELECT title FROM film;
SELECT name AS language FROM language; 
SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(DISTINCT store_id) FROM store;
SELECT COUNT(DISTINCT staff_id) FROM staff;


SELECT title FROM film ORDER BY length DESC LIMIT 10;

SELECT * FROM actor WHERE first_name = 'SCARLETT'; 
SELECT * FROM film WHERE title like '%ARMAGEDDON%' AND length > 100;

SELECT *
FROM actor;

SELECT *
FROM address;

SELECT *
FROM category;

SELECT *
FROM city;

SELECT *
FROM country;

SELECT *
FROM customer;

SELECT *
FROM film;

SELECT *
FROM film_actor;

SELECT *
FROM film_category;

SELECT *
FROM film_text;

SELECT *
FROM inventory;

SELECT *
FROM language;

SELECT *
FROM payment;

SELECT *
FROM rental;

SELECT *
FROM staff;

SELECT *
FROM store;

