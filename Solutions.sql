SHOW tables; -- 1

SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer; -- 2

SELECT title FROM film;
SELECT `name` FROM language;
SELECT first_name FROM staff; -- 3

SELECT DISTINCT release_year FROM film; -- 4

SELECT COUNT(DISTINCT store_id) FROM store;
SELECT COUNT(DISTINCT staff_id) FROM staff;
SELECT COUNT(DISTINCT film_id) FROM inventory; -- (958 movies available)
SELECT COUNT(DISTINCT film_id)
FROM rental r
JOIN inventory i -- join table using keys
  ON i.inventory_id = r.inventory_id; 
SELECT COUNT(DISTINCT last_name) FROM actor; -- 5

SELECT * FROM film ORDER BY length DESC
LIMIT 10; -- 6

SELECT * FROM actor
WHERE first_name='SCARLETT';
SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
SELECT * FROM film
WHERE special_features='SCARLETT';
SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%'; -- 7