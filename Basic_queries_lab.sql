/* 1. */
SHOW tables;
/* 2. */
select*
from actor;
select*
from film;
select*
from customer;
/* 3.1. */
select title
from sakila.film;
/*  3.2.  */
select name 
as language from language;
/*. 3.3.  */
select first_name
from staff;
/*. 4.   */
select distinct 
release_year from film;
/* 5. */
SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS employee_count FROM staff;
SELECT 
    (SELECT COUNT(*) FROM inventory) AS films_available,
    (SELECT COUNT(*) FROM rental) AS films_rented;
    /* 5.4.  */
SELECT COUNT(last_name) FROM actor;
/* 6. */
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
/* 7 */
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) AS behind_the_scenes_films_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
