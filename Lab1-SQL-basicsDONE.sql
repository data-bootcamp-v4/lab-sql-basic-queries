rental#1

SELECT *
FROM sakila.actor, sakila.address, sakila.category, sakila.city, sakila.country, sakila.customer, sakila.film, sakila.film_actor, sakila.film_category, sakila.film_text, sakila.inventory, sakila.payment, sakila.rental, sakila.staff, sakila.store; 

#2
SELECT *
FROM sakila.actor, sakila.customer, sakila.film;

#3.1
SELECT title
FROM sakila.film;

#3.2
SELECT name as Language
FROM sakila.language;

#3.2
SELECT first_name
FROM sakila.staff;

#4
SELECT DISTINCT release_year
FROM sakila.film;

#5.1
SELECT COUNT(store_id)
FROM sakila.store;

#5.2
SELECT COUNT(staff_id)
FROM sakila.staff;

#5.3
# total of films available for renting

SELECT COUNT(inventory_id) as rented
FROM sakila.rental
WHERE return_date > last_update;

SELECT COUNT(inventory_id) as in_store
FROM sakila.rental
WHERE return_date > last_update;

#5.4
SELECT COUNT(DISTINCT last_name)
FROM sakila.actor;

#6
SELECT length, title
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

#7.1
SELECT actor_id, first_name, last_name
FROM sakila.actor
WHERE actor.first_name = "Scarlett";

#7.2
SELECT title, length
FROM sakila.film
WHERE title LIKE "%Armageddon%" AND length > 100;

#7.3
SELECT COUNT(title)
FROM sakila.film
WHERE special_features LIKE "%Behind the scenes%"