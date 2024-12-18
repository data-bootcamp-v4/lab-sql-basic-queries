#2
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;
#3
SELECT title FROM sakila.film;
SELECT name as language FROM sakila.language;
SELECT first_name FROM sakila.staff;
#4
SELECT DISTINCT release_year FROM sakila.film;
#5
SELECT COUNT(DISTINCT store_id) FROM sakila.store;
SELECT COUNT(DISTINCT staff_id) FROM sakila.staff;
SELECT COUNT(*) FROM sakila.film;
SELECT COUNT(*) FROM sakila.rental;
SELECT DISTINCT last_name FROM sakila.actor;
#6
SELECT title FROM sakila.film
ORDER BY length desc
LIMIT 10;
#7
SELECT * FROM sakila.actor
WHERE first_name = "Scarlett";
#BONUS
SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%' and length > 100;
SELECT COUNT(*) FROM sakila.film
WHERE special_features = "behind the scenes";
