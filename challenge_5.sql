-- Challenge 5.1

SELECT COUNT(store_id) AS number_of_stores  FROM store;

-- 5.2

SELECT COUNT(staff_id) AS number_of_employees FROM staff;

-- 5.3

SELECT
	(SELECT COUNT(*) FROM film) AS film_available,
	(SELECT COUNT(DISTINCT inventory_id) FROM rental) AS rented_films;

-- 5.4

SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;
