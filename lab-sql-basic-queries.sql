SHOW DATABASES;
USE sakila;
SELECT COUNT(*) FROM actor;

-- 1.
SHOW TABLES;

-- 2.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.1.
SELECT title FROM film;

-- 3.2.
DESCRIBE language;
SELECT name AS language FROM language;

-- 3.3.
DESCRIBE staff;
SELECT first_name FROM staff;

-- 4.
SELECT DISTINCT release_year FROM film;

--5.1.
SELECT COUNT(*) FROM store;

-- 5.2.
SELECT COUNT(*) FROM staff;

-- 5.3.
SELECT COUNT(*) FROM inventory;
SELECT COUNT(*) FROM rental;

-- 5.4.
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6.
SELECT length, title FROM film ORDER BY length DESC LIMIT 10;

-- 7.1. 
SELECT * FROM actor WHERE first_name = 'SCARLETT';

-- 7.2.
SELECT title FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

-- 7.3.
DESCRIBE film;
SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind The Scenes%';
