-- 1. Configuración del entorno
-- Seleccionamos la base de datos sakila para que las consultas se ejecuten sobre ella
-- Ejecuta esta línea primero para activar el esquema de trabajo
USE sakila;

-- 2. Tarea 1: Mostrar todas las tablas disponibles en la base de datos
-- Este comando lista tanto las tablas base como las vistas (views)
SHOW TABLES;
-- 4. Ver los primeros registros de la tabla de películas
-- Permite verificar que la base de datos contiene información válida

SELECT * FROM film LIMIT 5;

SELECT * FROM actor, film, customer;
	SELECT title FROM film; 
	SELECT name AS language FROM language;
	SELECT first_name FROM staff;
   
   SELECT DISTINCT 
    release_year 
FROM 
    film;
    
    SELECT 
    COUNT(DISTINCT payment_id) AS total_Payment
FROM 
  payment;

SELECT 
    store_id
FROM 
 store
LIMIT 10;

    SELECT 
    COUNT(DISTINCT payment_id) AS total_payment
FROM 
payment;

SELECT 
    store_id 
FROM 
store
LIMIT 10;

    SELECT 
    COUNT(DISTINCT staff_id) AS total_employe_number
FROM 
staff;

SELECT  
  staff_id
FROM 
staff
LIMIT 10;

    SELECT 
    COUNT(DISTINCT film_id) AS total_for_rental_film
   
FROM 
inventory

LIMIT 10;

SELECT

COUNT(DISTINCT rental_id) AS total_rented_film

 FROM 
 rental
 LIMIT 10;
 
    SELECT 
    COUNT(DISTINCT staff_id) AS total_employe_number
FROM 
staff;

SELECT 
 staff_id
FROM 
staff
LIMIT 10;

SELECT 
    COUNT(DISTINCT last_name) AS total_actor_last_name
FROM 
actor;

SELECT 

last_name
FROM 
actor
LIMIT 10;

SELECT 
title
FROM 
 film
ORDER BY 
length DESC
LIMIT 10;

SELECT 
    actor_id, 
    first_name, 
    last_name 
FROM 
    actor 
WHERE 
    first_name = 'SCARLETT';
