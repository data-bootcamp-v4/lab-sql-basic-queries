USE sakila

SHOW TABLES;

SELECT*
FROM
actor;

SELECT*
FROM
film;

SELECT*
FROM
customer;

SELECT
title
FROM
film;

SELECT
name AS Language
FROM
language;

SELECT
first_name AS Name
FROM
staff;

SELECT
DISTINCT release_year
FROM
film;

SELECT
COUNT(*) AS number_stores
FROM
store;

SELECT
COUNT(*) AS number_employees
FROM
staff;

SELECT
COUNT(*) AS total_films
FROM
film;

SELECT
COUNT(DISTINCT inventory_id) AS total_films_rent
FROM
rental;

SELECT
COUNT(DISTINCT last_name)
FROM
actor;

SELECT
title,
length
FROM
film
ORDER BY length DESC
LIMIT 10;

SELECT*
FROM actor
WHERE first_name REGEXP 'SCARLETT';

SELECT title,
length
FROM
film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT
COUNT(*) AS behind_the_scenes_films
FROM
film
WHERE title LIKE '%Behind the Scenes%';


