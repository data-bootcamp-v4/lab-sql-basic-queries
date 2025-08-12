USE sakila;
SHOW TABLES;
SELECT * FROM actor;  
SELECT * FROM film;
SELECT * FROM customer;
SELECT title FROM film;
SELECT * FROM language;
SELECT name AS language FROM language; 
SELECT * FROM staff;
SELECT first_name FROM staff;
SELECT release_year FROM film;
SELECT DISTINCT release_year FROM film;
SELECT * FROM store;
SELECT * FROM rental;
SELECT DISTINCT last_name FROM actor;

SELECT title,length AS 'Top longest Films'
 FROM sakila.film
 ORDER BY length DESC 
 LIMIT 10;
 
 SELECT * FROM actor
 WHERE first_name = 'Scarlett';
 
 SELECT * FROM film
 WHERE (title = 'Armageddon') AND length >100 ;
 