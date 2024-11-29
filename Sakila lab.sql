-- Downloading and displaying Sakila
SHOW DATABASES;
USE sakila;
-- Showing tables for Sakila:
SHOW TABLES;
-- QUESTION 2:
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
-- QUESTION 3:
SELECT title FROM film;
SELECT name AS language FROM language;
SELECT first_name FROM staff;
-- QUESTION 4:
SELECT DISTINCT release_year FROM film;
-- QUESTION 5:
SELECT COUNT(*) AS number_of_stores FROM store;
SELECT COUNT(*) AS number_of_employees FROM staff;
SELECT
	SUM(CASE WHEN rental_rate>0 THEN 1 ELSE 0 END) AS films_available,
	SUM(CASE WHEN rental_duration> 0 THEN 1 ELSE 0 END) AS films_rented
    FROM film;
SELECT COUNT(DISTINCT last_name) AS number_last_names_of_actors FROM actor;
-- QUESTION 6:
SELECT title, length FROM film ORDER BY length DESC LIMIT 10;
-- QUESTION 7:
SELECT * FROM actor WHERE first_name = "SCARLETT";
-- BONUS:
SELECT * FROM film WHERE title = "%ARMAGEDDON%" AND length > 100;
SELECT COUNT(*) AS behind_scene_count FROM film WHERE special_features LIKE "%Behind the Scenes%"


