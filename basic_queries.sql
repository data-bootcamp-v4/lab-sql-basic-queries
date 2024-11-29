-- Active: 1721290976264@@127.0.0.1@3306@sakila
USE sakila;

--1--
SHOW TABLES;

--2--
SELECT * FROM actor

SELECT * FROM film

SELECT * FROM customer

--3.1--
SELECT film.title
FROM film

--3.2--

SELECT * FROM language;

SELECT DISTINCT language.name AS language
FROM language

SELECT DISTINCT film.language_id FROM film

--3.3--
SELECT first_name from staff

--4--
SELECT DISTINCT film.release_year FROM film;

--5--

--5.1--
SELECT COUNT(store.store_id) AS store_num FROM store

--5.2--
SELECT COUNT(staff.staff_id) AS staff_num FROM staff

--5.3--
SELECT COUNT(inventory_id) from inventory

SELECT DISTINCT COUNT(rental.inventory_id) FROM rental

--5.4--
SELECT DISTINCT COUNT(actor.last_name) FROM actor

--6--
SELECT film.title, film.length FROM film
ORDER BY film.length DESC LIMIT 10

--7.1--
SELECT * FROM actor
WHERE actor.first_name = "SCARLETT"

--7.2--
SELECT * FROM film
WHERE film.title LIKE "%ARMAGEDDON%" AND film.length > 100

--7.3--
SELECT * FROM film
WHERE film.special_features LIKE "%Behind the Scenes%"