USE sakila;

#1
SHOW tables;

#2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3.1
SELECT title FROM film;
#3.2
SELECT name as language FROM language;
#3.3
SELECT first_name FROM staff;

#4
SELECT DISTINCT release_year FROM film;

#5.1
SELECT COUNT(*) AS num_stores FROM store;
#5.2
SELECT COUNT(*) as num_employees FROM staff;
#5.3
SELECT COUNT(*) as films_for_rent FROM film;
SELECT COUNT(*) as Films_rented FROM rental;

#5.4
SELECT COUNT(DISTINCT last_name) FROM actor;

#6
SELECT title FROM film ORDER BY length DESC LIMIT 10;

#7 7.1
SELECT first_name FROM actor WHERE first_name='SCARLETT';
#7.2
SELECT * FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
# BONUS 7.3
SELECT COUNT(*) as films_with_bts FROM film WHERE special_features LIKE '%Behind the Scenes%';
