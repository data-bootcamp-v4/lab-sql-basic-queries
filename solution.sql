-- Lab SQL basic queries - sakila database

USE sakila;

-- 1. show all the tables
SHOW TABLES;

-- 2. get all data from actor, film and customer tables
SELECT * FROM actor;
SELECT * FROM film;
select * from customer;

-- 3.1 title of all films
SELECT title FROM film;

-- 3.2 languages of the films
SELECT name AS language FROM language;

-- 3.3 first name of employees
SELECT first_name FROM staff;

-- 4. unique release years
SELECT DISTINCT release_year FROM film;

-- 5.1 number of stores
SELECT COUNT(*) FROM store;

-- 5.2 number of employees
SELECT COUNT(*) FROM staff;

-- 5.3 number of films avaliable for rent and number of films rented
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;

-- 5.4 number of diferent last names of actors
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. the 10 longuest films
SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- 7.1 actors with first name SCARLETT
SELECT * FROM actor WHERE first_name = 'SCARLETT';
