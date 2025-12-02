-- 1 
USE sakila;  
SHOW TABLES;  
-- 2
SELECT * FROM sakila.actor, sakila.film, sakila.customer; 
-- 3
SELECT title FROM sakila.film; 
SELECT name AS language FROM sakila.language;
SELECT first_name FROM sakila.staff;
-- 4 2006 
SELECT distinct release_year FROM sakila.film; 
-- 5.1 number of stores 
SELECT count(distinct store_id) as store FROM sakila.store; 
-- 5.2 number of employees 
SELECT count(staff_id) as number_of_employees FROM sakila.staff; 
-- 5.3 films available for rent  
SELECT f.title, r.return_date
FROM sakila.rental r
JOIN sakila.inventory i ON r.inventory_id = i.inventory_id
JOIN sakila.film f ON i.film_id = f.film_id
WHERE r.return_date IS NOT NULL; 
-- 5.4 number of actors name, unique 
SELECT count(distinct last_name)FROM sakila.actor;
-- 6 10 longest film 
SELECT distinct length FROM sakila.film order by length DESC LIMIT 10; 

-- 7.1 all actros with 'scarlett'
SELECT first_name, last_name FROM sakila.actor WHERE first_name LIKE 'scarlett'; 

-- 7.2 retrive all ARMAGEDDON in their title duration longer than 100 
SELECT title, length FROM sakila.film WHERE title LIKE '%ARMAGEDDON%' AND length > 100; 

