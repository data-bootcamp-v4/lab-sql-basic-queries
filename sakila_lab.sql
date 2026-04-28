-- selecciono la tabla de datos con la que voy a trabajar
USE sakila;

-- muestro todas las tablas que contiene
SHOW tables;

-- accedo a la informacion de las tablas actor, film y customer
SELECT * 
FROM actor, film, customer;

-- accedo a cierta informacion de dentro de distintas tablas
SELECT title
FROM film;

SELECT name
FROM language;

SELECT first_name
FROM staff;

-- obtener los años distintos 
SELECT DISTINCT release_year
FROM film;

-- obtener el numero de tiendas distinas != de las diferentes tiendas
SELECT COUNT(DISTINCT store_id)
FROM store;

SELECT COUNT(DISTINCT staff_id)
FROM staff;

SELECT COUNT(inventory_id) AS Available_films
FROM inventory; 

SELECT COUNT(rental_id)
FROM rental;

SELECT COUNT(DISTINCT last_name) AS Diferent_last_names
FROM actor;

SELECT title 
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT *
FROM actor
WHERE first_name LIKE '%SCARLETT%';

SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

SELECT * 
FROM film
WHERE special_features LIKE '%Behind the Scenes%';