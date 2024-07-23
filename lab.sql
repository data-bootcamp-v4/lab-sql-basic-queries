USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT *  FROM film;
SELECT *  FROM customer;
SELECT title FROM film;
SELECT name FROM language;
SELECT first_name FROM staff;

SELECT DISTINCT last_update FROM film;
SELECT count(*) FROM store;

SELECT count(*) FROM staff;
-- Available --
SELECT count(*) FROM inventory;
SELECT DISTINCT COUNT(last_name) FROM actor;

SELECT * FROM film ORDER BY `length` DESC LIMIT 10;

SELECT * FROM actor WHERE first_name='SCARLETT';

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length>100;

SELECT count(*) FROM film WHERE special_features LIKE '%BEHIND THE SCENES%'