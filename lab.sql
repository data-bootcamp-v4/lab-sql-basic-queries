USE sakila;
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.staff;

SELECT title
FROM sakila.film;

SELECT l.name AS language , f.title
FROM sakila.language l
JOIN sakila.film f ON f.language_id = l.language_id;
ORDER BY l.name, f.title;

select first_name
FROM sakila.staff;

SELECT DISTINCT release_year
FROM sakila.film
WHERE release_year IS NOT NULL
ORDER BY release_year;

SELECT * FROM sakila.store;
#5.1
SELECT COUNT(store_id) AS store_count
FROM sakila.store;

#5.2
SELECT COUNT(staff_id) AS staff_count
FROM sakila.staff;
#5.3
SELECT COUNT(inventory_id) AS movieCNT
FROM sakila.inventory;

SELECT COUNT(inventory_id) AS movieCNTout
FROM sakila.rental
WHERE return_date IS NULL;

SELECT
  (SELECT COUNT(inventory_id) FROM sakila.inventory) -
  (SELECT COUNT(DISTINCT inventory_id) FROM sakila.rental WHERE return_date IS NULL)
  AS movieCNT_minus_movieCNTout;
#5.4
select distinct last_name from actor;

-- #6
SELECT *
FROM sakila.film
WHERE length = (SELECT MAX(length) FROM sakila.film)
ORDER BY length
LIMIT 10;

#7.1
SELECT *
FROM actor
WHERE first_name = "SCARLETT";

#7.2
SELECT *
FROM film
where length > 100 AND title LIKE '%ARMAGEDDON%';