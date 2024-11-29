USE sakila;
SHOW TABLES;

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

# Titulos de todas las películas de la tabla film
SELECT title FROM film;

# Lista de idiomas utilizados en las películas, con la columna alias como idioma de la tabla lenguaje
# SELECT * FROM language;
SELECT language_id, name AS language FROM language;

# Lista de nombres de pila de todos los empleados de la tabla staff
SELECT first_name FROM staff;

# Recuperar años de publicación únicos
SELECT DISTINCT release_year 
FROM film;

# Contar registros para obtener información de la base de datos
# Determinar el número de tiendas que tiene la empresa
SELECT COUNT(*) AS num_stores
FROM store;

# Determinar cuántas películas están disponibles para alquiler y cuántas han sido alquiladas
# 1 - Para contar las películas desponibles para alquiler

SELECT COUNT(*) AS available_for_rent
FROM inventory
WHERE inventory_id NOT IN (SELECT inventory_id FROM rental);

# 2 - Para contar cuantas películas han sido alquiladas

SELECT COUNT(DISTINCT i.inventory_id) AS rented_movies
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id;

# Determinar el número de apellidos distintos de los actores en la base de datos
SELECT COUNT(DISTINCT last_name) AS distinct_last_names
FROM actor;

# Recupera las 10 películas más largas.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

# BONUS 1 -> Recuperar todas las películas que tengan ARMAGEDDON en su título y tengan una duración superior a 100 minutos.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

# Bonus 2 -> Determinar el número de películas que incluyen contenido Behind the Scene
SELECT COUNT(*) AS num_films_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';

# Bonus 3 -> Recuperar todos los actores cuyo nombre de pila sea «SCARLETT».
SELECT first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';
