-- Active: 1721291050538@@127.0.0.1@3306@sakila
USE sakila;
SHOW TABLES;

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
SELECT DISTINCT COUNT(actor.last_name) FROM actor;
--4)
SELECT film.title, film.length FROM film ORDER BY film.length DESC LIMIT 10;
--5)
SELECT actor.first_name FROM actor;
SELECT actor.first_name FROM actor WHERE actor.first_name = 'SCARLETT';
--6) 
SELECT film.title, film.length FROM film WHERE film.title LIKE '%ARMAGEDDON' AND film.length > 100;
SELECT film.special_features, film.title FROM film WHERE film.special_features LIKE '%Behind the Scenes';

