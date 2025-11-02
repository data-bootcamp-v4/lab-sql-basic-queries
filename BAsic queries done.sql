USE SAKILA;
SHOW TABLES;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#3
SELECT language_id FROM language;
SELECT title FROM film;
SELECT first_name FROM staff;
#4 
SELECT distinct release_year FROM film;
#5 
SELECT  COUNT(distinct release_year) FROM film GROUP BY release_year;
SELECT staff_id, COUNT(*) FROM staff GROUP BY staff_id;
SELECT COUNT(distinct film_id) FROM inventory GROUP BY film_id;
 SELECT count(DISTINCT i.film_id) as film_rented
 from rental r 
 join inventory i on r.inventory_id = i.inventory_id;
SELECT (SELECT COUNT(distinct film_id) FROM inventory ) AS film_availables,
 (SELECT count(DISTINCT i.film_id) 
 from rental r 
 join inventory i on r.inventory_id = i.inventory_id)as film_rented;
 select COUNT(distinct first_name) FROM actor ;
 #6
 SELECT length from film order by length ASC LIMIT 10;
 #7
 SELECT * FROM actor where first_name ='SCARLETT';
 #7.1
 SELECT * FROM film where title LIKE '%ARMAGEDDON%' AND length > 100;
 
