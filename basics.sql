USE sakila;

#1
SHOW tables;

#2 
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3.1
SELECT f.title FROM film as f;
#3.2
SELECT l.name as language FROM language as l;
#3.3
SELECT s.first_name FROM staff as s;

#4
SELECT DISTINCT release_year from film;

#5.1
SELECT count(*) from store;
#5.2
SELECT count(*) from staff;
#5.3 Determine how many films are available for rent and how many have been rented.
SELECT count(*) as total from inventory;
SELECT count(distinct inventory_id) as rented from rental;
#5.4 Determine the number of distinct last names of the actors in the database.
select count(distinct last_name) as unique_lasts from actor;

#6
Select max(length) from film;

#7.1
Select first_name, last_name FROM actor
WHERE first_name like "SCARLETT";

#7.2
SELECT title, length FROM film
WHERE (length > 100) AND (title LIKE "%ARMAGEDDON%");

#7.3 Determine the number of films that include Behind the Scenes content
SELECT count(*) FROM film
WHERE special_features LIKE ("%Behind%");



