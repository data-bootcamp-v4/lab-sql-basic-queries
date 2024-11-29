use sakila;
#1
SHOW TABLES IN sakila;
#2
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
#3
#3.1
SELECT title FROM sakila.film;
#3.2
SELECT name AS language FROM sakila.language;
#3.3
SELECT first_name FROM sakila.staff;
#4
SELECT DISTINCT release_year FROM sakila.film;
#5
#5.1
SELECT COUNT(*) AS store_count FROM sakila.store;
#5.2
SELECT COUNT(*) AS employee_count FROM sakila.staff;
#5.3
SELECT 
    (SELECT COUNT(*) FROM sakila.film) AS available_for_rent,
    (SELECT COUNT(DISTINCT film_id) FROM sakila.inventory WHERE inventory_id IN (SELECT inventory_id FROM sakila.rental)) AS rented_films;
#5.4
SELECT COUNT(DISTINCT last_name) AS distinct_actor_last_names FROM sakila.actor;
#6
SELECT title, length 
FROM sakila.film 
ORDER BY length DESC 
LIMIT 10;
#7
#7.1
SELECT * 
FROM sakila.actor 
WHERE first_name = 'SCARLETT';
#7.2
SELECT title, length
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%'
  AND length > 100;
#7.3
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';











