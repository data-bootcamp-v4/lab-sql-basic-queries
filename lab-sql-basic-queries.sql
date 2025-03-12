USE sakila;

SHOW TABLES;

SELECT * FROM actor, film, customer;

SELECT title FROM film; 
SELECT name AS language FROM language;
SELECT first_name FROM staff;

SELECT DISTINCT release_year FROM film;

SELECT COUNT(DISTINCT store_id) AS store_count FROM store;
SELECT COUNT(DISTINCT staff_id) AS employee_count FROM staff;


SELECT COUNT(*) as currently_rented
FROM rental
where return_date is null;

SELECT COUNT(*) as total_films from film;

SELECT 
	(SELECT COUNT(*) as total_films from film)
    - (SELECT COUNT(*) FROM rental where return_date is null)
    AS available_now;
    
SELECT count(DISTINCT last_name) FROM actor;

SELECT title, length AS arm_100
FROM film
WHERE title like "%ARMAGEDDON%"
AND length > 100;







