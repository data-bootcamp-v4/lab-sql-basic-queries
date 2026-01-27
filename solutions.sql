USE sakila;

-- 2. Display de las tablas

SELECT *
FROM actor;
SELECT * 
FROM film;
SELECT *
FROM customer;

-- 3. Retrieve  columnas respectivamente
-- 3.1
SELECT
title
FROM film;

-- 3.2 
SELECT
name as idioma
FROM language;

-- 3.3
select 
first_name 
FROM staff;

-- 4 Retrieve valores unicos de years
SELECT 
distinct release_year
from film;

-- 5 conteo de records
-- 5.1
select 
count(*)
from store;

-- 5.2
select 
count(*)
from staff;

-- 5.3
select
count(*) as peliculas_disponibles
from inventory;

select
count(*) as total_alquileres
from rental;

-- 5.4
select
count(distinct last_name)
from actor;

-- 6 Retrieve 10 peliculas mas largas
select
title,
length
from film
order by length desc
limit 10;


-- 7 uso de filtros  
-- 7.1
select *
from actor
where first_name = 'SCARLETT';

-- 7.2 Retrieve todas las pelicuasl que contengan ARMAGEDON  en su titulo y una duracion de mas de 100 mins
select * 
from film
where title like '%ARMAGEDDON%'
AND length > 100;


-- 7.3 Determina el numero de peliculas que incluyan Behind the Scenes content
select 
count(*)
from film
where special_features like '%Behind the Scenes%';