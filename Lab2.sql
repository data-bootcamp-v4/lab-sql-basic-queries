USE sakila;	

-- 1
SHOW TABLES;

-- 2

SELECT * FROM actor AS a;
SELECT * FROM film AS f;
SELECT * FROM customer as c;

-- 3
-- 	a)
SELECT DISTINCT(title) FROM film;

-- 	b)
SELECT 
f.title,
l.name
FROM film as f
LEFT JOIN language as l
	ON f.language_id = l.language_id;

-- 	c)
SELECT DISTINCT(first_name) FROM staff;


-- 4)
SELECT DISTINCT(release_year) FROM film;

-- 5) 
--  a)
SELECT COUNT(store_id) AS store_count FROM store;

-- 	b)  
SELECT COUNT(staff_id) as total_employees FROM staff;
-- c)
SELECT 
f.title,
r.rental_date,
r.return_date
FROM inventory AS i
LEFT JOIN film AS f
	ON i.film_id = f.film_id
LEFT JOIN rental AS r
	ON i.inventory_id = r.inventory_id;


-- 	d)  
SELECT DISTINCT(last_name) FROM staff;


-- 6)
SELECT 
title,
length
FROM film
ORDER BY  length DESC
LIMIT 10;

-- 7)
SELECT *
FROM actor
WHERE first_name = "SCARLETT";











	




















