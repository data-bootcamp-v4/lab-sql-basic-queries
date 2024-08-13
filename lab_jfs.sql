use sakila;
show tables;
select * from actor;
select * from film;
select * from customer;
select * from language;
select * from staff;

select title
from film;

select name as language
from language;

select first_name
from staff;

select distinct release_year
from film;

select * from store;

SELECT COUNT(*) AS store_count 
FROM store;

SELECT COUNT(*) AS employee_count 
FROM staff;

SELECT 
    COUNT(*) AS total_films,
    (SELECT COUNT(*) FROM rental) AS rented_films 
FROM film;

SELECT COUNT(DISTINCT last_name) AS distinct_last_names 
FROM actor;

SELECT title, length 
FROM film 
ORDER BY length DESC
LIMIT 10;

SELECT * 
FROM actor
WHERE first_name LIKE '%SCARLETT%';

SELECT * 
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT COUNT(*) AS behind_the_scenes_count
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
