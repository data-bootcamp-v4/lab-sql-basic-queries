USE sakila;

#1
SHOW Tables;

#2
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

#3
SELECT f.title FROM sakila.film AS f;
SELECT l.name AS language FROM sakila.language AS l;
SELECT s.first_name FROM sakila.staff AS s;

#4
SELECT DISTINCT release_year FROM sakila.film;

#5
SELECT COUNT(st.store_id) FROM sakila.store as st;
SELECT COUNT(s.staff_id) FROM sakila.staff as s;
SELECT COUNT(DISTINCT inventory_id) AS films_available FROM sakila.inventory;
SELECT COUNT(DISTINCT inventory_id) AS films_rented FROM sakila.rental;
SELECT COUNT(DISTINCT act.last_name) FROM sakila.actor as act;

#6
SELECT f.title, f.length FROM sakila.film AS f ORDER BY f.length DESC LIMIT 10;

#7
#7.1
SELECT * FROM sakila.actor as act
WHERE act.first_name = 'SCARLETT';

#7.2
SELECT * FROM sakila.film as f
WHERE f.title LIKE '%ARMAGEDDON%' AND f.length > 100;

#7.3
SELECT COUNT(*) FROM sakila.film as f
WHERE f.special_features LIKE '%Behind the Scenes%';