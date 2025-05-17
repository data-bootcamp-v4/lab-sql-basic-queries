-- 1. Mostrar todas las tablas disponibles en la base de datos de Sakila
SHOW TABLES;

-- 2. Recuperar todos los datos de las tablas actor, film y customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Recuperar columnas específicas
-- 3.1 Títulos de todas las películas
SELECT title FROM film;

-- 3.2 Lista de idiomas utilizados en películas con alias "language"
SELECT name AS language FROM language;

-- 3.3 Lista de nombres de todos los empleados
SELECT first_name, last_name FROM staff;

-- 4. Recuperar años de lanzamiento únicos
SELECT DISTINCT release_year FROM film;

-- 5. Conteo de registros
-- 5.1 Número de tiendas
SELECT COUNT(*) AS store_count FROM store;

-- 5.2 Número de empleados
SELECT COUNT(*) AS employee_count FROM staff;

-- 5.3 Películas disponibles para alquilar y películas alquiladas
-- Películas disponibles (en inventory pero no alquiladas actualmente)
SELECT COUNT(*) AS available_films 
FROM inventory 
WHERE inventory_id NOT IN (SELECT inventory_id FROM rental WHERE return_date IS NULL);

-- Películas alquiladas (aún no devueltas)
SELECT COUNT(*) AS rented_films 
FROM rental 
WHERE return_date IS NULL;

-- 5.4 Número de apellidos distintos de los actores
SELECT COUNT(DISTINCT last_name) AS unique_actor_last_names FROM actor;

-- 6. Recuperar las 10 películas más largas
SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

-- 7. Técnicas de filtrado
-- 7.1 Actores con el nombre "SCARLETT"
SELECT * FROM actor 
WHERE first_name = 'SCARLETT';

-- 7.2 Películas con "ARMAGEDDON" en el título y duración > 100 minutos
SELECT title, length 
FROM film 
WHERE title LIKE '%ARMAGEDDON%' 
  AND length > 100;

-- 7.3 Número de películas con contenido detrás de escena
SELECT COUNT(*) AS behind_scenes_count 
FROM film 
WHERE special_features LIKE '%Behind the Scenes%';
