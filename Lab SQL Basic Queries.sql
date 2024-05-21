USE sakila;

-- Number two

Select *
FROM actor;

Select *
FROM film;

Select *
FROM customer;

-- Number 3

SELECT title
FROM film;

SELECT name AS `language`
FROM language;

SELECT first_name
FROM staff;

-- Number 4

SELECT DISTINCT(release_year)
FROM film;

-- Number Five

SELECT COUNT(store_id)
FROM store;

SELECT COUNT(staff_id)
FROM staff;

SELECT DISTINCT(COUNT(inventory_id))
from rental;

SELECT COUNT(DISTINCT(last_name))
FROM actor;

-- Number Six

SELECT *
FROM film
ORDER BY length DESC
LIMIT 10;

-- Number 7

SELECT first_name
FROM actor
WHERE first_name = `SCARLETT`;