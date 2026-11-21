USE sakila;

-- 1. Tablas y vistas del esquema.
SHOW FULL TABLES;

-- 2. Datos completos.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Columnas solicitadas.
SELECT title FROM film ORDER BY title;
SELECT name AS language FROM language ORDER BY name;
SELECT first_name FROM staff ORDER BY staff_id;

-- 4. Años de estreno distintos.
SELECT DISTINCT release_year FROM film ORDER BY release_year;

-- 5. Tiendas, empleados, inventario y alquileres.
SELECT COUNT(*) AS store_count FROM store;
SELECT COUNT(*) AS staff_count FROM staff;
-- Inventario = copias de catálogo. Cada fila de rental es una operación.
SELECT COUNT(*) AS inventory_copies,
       COUNT(DISTINCT film_id) AS films_in_inventory
FROM inventory;
SELECT COUNT(*) AS total_rentals FROM rental;
-- Disponibilidad actual: copias con y sin alquiler pendiente de devolución.
SELECT COUNT(*) - COUNT(open_rentals.inventory_id) AS copies_available_now,
       COUNT(open_rentals.inventory_id) AS copies_rented_now
FROM inventory AS i
LEFT JOIN (
    SELECT DISTINCT inventory_id FROM rental WHERE return_date IS NULL
) AS open_rentals ON open_rentals.inventory_id = i.inventory_id;
SELECT COUNT(DISTINCT last_name) AS distinct_actor_surnames FROM actor;

-- 6. Diez películas más largas, con desempate estable.
SELECT title, length FROM film ORDER BY length DESC, film_id LIMIT 10;

-- 7. Filtros y ejercicios adicionales.
SELECT * FROM actor WHERE first_name = 'SCARLETT';
SELECT title, length FROM film WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;
