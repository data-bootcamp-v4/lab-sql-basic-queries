use sakila;

show tables;

select * from actor;
select * from customer;
select * from film;

select title from film;
select name as language from language;
select first_name from staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS employee_count FROM staff;
SELECT COUNT(DISTINCT film_id) AS available_films FROM inventory;
SELECT COUNT(DISTINCT film_id) AS rented_films FROM inventory 
WHERE inventory_id IN (SELECT * FROM rental);

SELECT COUNT(DISTINCT last_name) AS distinct_last_names 
FROM actor;

SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;
