/* 1 */

SELECT *
FROM sakila;

/* 2 */

SELECT *
FROM sakila.film, sakila.actor, sakila.customer;

/* 3 */

SELECT title
FROM sakila.film;

SELECT original_language_id, language_id
FROM sakila.film;

SELECT first_name
FROM sakila.staff;

/* 4 */

SELECT DISTINCT release_year
FROM sakila.film;

/* 5 */

SELECT COUNT(*) store_id
FROM sakila.store;

SELECT COUNT(*) staff_id
FROM sakila.staff;




SELECT DISTINCT last_name
FROM sakila.actor;

/* 6 */

SELECT title, length 
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

/* 7 */

SELECT first_name, last_name
FROM sakila.actor
WHERE first_name = "Scarlett";

SELECT *
FROM sakila.film
WHERE film.title LIKE "%Armageddon%"
AND film.length > 100;

SELECT *
FROM sakila.film
WHERE film.special_features LIKE "%behind the scenes%"; 
