-- Active: 1721291050538@@127.0.0.1@3306@sakila
USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

--1)
SELECT film.title FROM film;
select * FROM film;
SELECT language.name AS language FROM language;
SELECT staff.first_name FROM staff;
--2)
SELECT DISTINCT film.release_year FROM film;
--3)
SELECT COUNT(store_id) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT COUNT(film_id) AS 'Films available for rent' FROM inventory;
SELECT COUNT(rental_id) AS 'Films rented' FROM rental;
SELECT COUNT(DISTINCT actor.last_name) FROM actor;
--4)
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;
--5)
SELECT actor.first_name FROM actor;
SELECT * FROM actor WHERE first_name = 'SCARLETT';

SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';

