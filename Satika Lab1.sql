USE sakila;

#1
SHOW TABLES;

#2
SELECT *
FROM actor, film, customer;

#3.1
SELECT *
FROM film;

#3.2
SELECT name as language
from language;

#3.3
SELECT first_name
FROM staff;

#4
SELECT DISTINCT release_year
FROM film;

#5.1
SELECT COUNT(store_id) as number_of_stores
FROM store;

#5.2
select count(staff_id) as employees
from staff;

#5.3
SELECT COUNT(rental_id) AS total_rentals #have been rented
FROM rental;

SELECT COUNT(film_id) as total_films #available for rent
FROM film;

#5.4
SELECT distinct count(first_name)
FROM actor;

#6
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#7
SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';

#BONUS
select title, length
from film
where title LIKE 'ARMAGEDDON%' and length > 100;

select title, special_features
from film
where special_features = 'Behind the Scenes';