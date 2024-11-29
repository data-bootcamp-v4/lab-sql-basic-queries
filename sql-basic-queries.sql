USE sakila;
SHOW TABLES;

Select *
From actor, film, customer;

SELECT
    title AS film_title,
    name AS language_name,
    first_name AS staff_first_name
FROM
    film tittle
CROSS JOIN
    language name
CROSS JOIN
    staff first_name;

Select distinct release_year from film;

Select count(*) from store;

Select count(*) from staff;

select rental_id
from rental
where last_update > return_date;

SELECT COUNT(rental.rental_id) 
FROM rental
LEFT JOIN inventory ON rental.inventory_id = inventory.inventory_id
WHERE rental.return_date IS NULL;

SELECT DISTINCT(COUNT(inventory_id))
FROM rental;


select distinct last_name from actor;


Select * from film
order by length desc
limit 10;

select * from actor
where first_name = 'SCARLETT';

Select * from film
where title like '%ARMAGEDDON%'and length >100;

Select count(*) from film
where special_features like '%Behind the Scenes%';