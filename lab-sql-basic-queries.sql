USE sakila;

-- answer to 1
SHOW TABLES;

-- answer to 2
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- answer to 3.1
SELECT title
FROM sakila.film;

-- answer to 3.2
SELECT `name` as `language`
FROM `language`;

-- answer to 3.3
SELECT first_name FROM staff;

-- answer to 4
SELECT DISTINCT release_year FROM film;

-- answer to 5.1
SELECT count(store_id) FROM store;

-- answer to 5.2
SELECT count(staff_id) FROM staff;

-- answer to 5.3
SELECT count(rental_id)
FROM rental
WHERE return_date IS NULL;

SELECT count(rental_id)
FROM rental
WHERE return_date IS NOT NULL;

-- answer to 5.4
SELECT DISTINCT count(last_name) FROM actor;

-- answer to 6
SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- answer to 7.1
SELECT * 
FROM actor
WHERE first_name = "SCARLETT";

-- answer to 7.2
SELECT * FROM film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;

-- answer to 7.3
SELECT count(film_id) FROM film
WHERE special_features LIKE "%Behind the scenes%";

