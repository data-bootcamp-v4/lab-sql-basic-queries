USE sakila;
SHOW TABLES;

SELECT *
FROM actor;

SELECT *
FROM film;

SELECT *
FROM customer;


select title
from film;

select name
FROM language;

select first_name
FROM staff;

SELECT DISTINCT release_year
FROM film;

SELECT COUNT(*) AS number_of_stores
FROM store;

SELECT count(*) as number_of_emp
FROM staff;

SELECT count(*) as number_of_rent
FROM inventory;


USE sakila;

SELECT 
    (SELECT COUNT(DISTINCT f.film_id)
     FROM film f
     JOIN inventory i ON f.film_id = i.film_id
     LEFT JOIN rental r ON i.inventory_id = r.inventory_id
     WHERE r.rental_id IS NULL) AS films_available_for_rent,
     
    (SELECT COUNT(DISTINCT f.film_id)
     FROM film f
     JOIN inventory i ON f.film_id = i.film_id
     JOIN rental r ON i.inventory_id = r.inventory_id) AS films_rented;


SELECT count(DISTINCT last_name) as apellidos
FROM staff;

select length, title
from film
order by length desc;

select *
from actor
where first_name = "Scarlett";

select *
from film
where title like "%ARMAGEDDON%" and length > 100;

select *
from film
where special_features like "%behind%"