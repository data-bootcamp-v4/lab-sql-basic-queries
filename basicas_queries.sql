USE sakila;
-- ejercicio1 mostrar tablas 
SHOW TABLES;
-- ejercicio2 
SELECT* 
FROM actor;
SELECT*
FROM film;
SELECT*
FROM customer;
-- punto 3.1 
SELECT title
FROM film; 
-- punto 3.2
SELECT name as language
FROM language;
-- punto 3.3
SELECT first_name
  FROM staff;
-- punto 4
SELECT DISTINCT release_year
FROM film;
-- punto 5.1
SELECT COUNT(store_id) as number_of_stores
FROM store;
-- punto 5.2
SELECT COUNT(staff_id) as total_empleados
FROM staff;
-- punto 5.3
SELECT COUNT(*) as peliculas_disponibles
FROM inventory;
SELECT count(DISTINCT( inventory_id)) as total_peliculas_rentadas
FROM rental;
-- punto 5.4
SELECT count(DISTINCT(last_name )) as total_apellidos_distintos
FROM actor;
-- punto 6
SELECT title, length 
FROM film
ORDER BY length DESC
LIMIT 10;
-- punto 7
SELECT *  
FRom actor
WHERE first_name= 'SCARLETT'