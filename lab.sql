-- 1. Mostar todas las tablas disponibles
SHOW TABLES;

-- 2. Recupera datos de las tablas actor, film y customer
SELECT * FROM sakila.actor, sakila.film, sakila.customer;

-- 3. Recupera las siguientes columnas de las respectivas tablas
-- titulos de todas las peliculas de la tabla film:
SELECT title FROM sakila.film;
-- lista de idiomas utilizados en peliculas con el alias language de la tabla language:
SELECT name AS language FROM sakila.language;
-- lista nombres de todos los empleados de la tabla staff:
SELECT first_name FROM sakila.staff;

-- 4. Años de lanzamiento unicos
SELECT DISTINCT release_year
FROM sakila.film;

-- 5. Conteo registros para obtener informacion
-- determinar el numero de tiendas que tiene la empresa:
SELECT COUNT(store_id)
FROM sakila.store;
-- determinar el numero de empleados que tiene la empresa:
SELECT COUNT(staff_id)
FROM sakila.staff;
-- determinar cuantas películas están disponibles para alquilar y cuántas ya se han alquilado.
SELECT(
	(SELECT COUNT(rental_id) FROM sakila.rental) - (SELECT COUNT(film_id) FROM sakila.inventory) 
    ) AS disponibles;
    
SELECT COUNT(rental_id)
FROM sakila.rental;
-- determina el número de apellidos distintos de los actores en la base de datos.
SELECT COUNT(last_name)
FROM sakila.actor;

-- 6. Recupera las 10 peliculas mas largas
SELECT title, length as len FROM sakila.film
ORDER BY len DESC
LIMIT 10;

-- 7. tenicas de filtrado para recuperar todos los actores con el nombre Scarlett
SELECT first_name, last_name from sakila.actor
WHERE first_name = "SCARLETT";
-- Recuperar todas las películas que tengan ARMAGEDDON en el título y una duración mayor a 100 min
SELECT title, length as len from sakila.film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100;
-- Determina el número de películas que incluyen contenido detrás de escena
SELECT COUNT(special_features) FROM sakila.film
