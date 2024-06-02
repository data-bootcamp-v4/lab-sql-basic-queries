SELECT * FROM actor;
SELECT * FROM address;
SELECT * FROM category;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM customer;
SELECT * FROM film;
SELECT * FROM film_actor;
SELECT * FROM film_category;
SELECT * FROM film_text;
SELECT * FROM inventory;
SELECT * FROM language;
SELECT * FROM payment;
SELECT * FROM rental;
SELECT * FROM staff;
SELECT * FROM store;

SELECT title FROM film;
SELECT name FROM language;
SELECT first_name from staff;

SELECT distinct release_year from film;

SELECT COUNT(store_ID) FROM store;
SELECT COUNT(staff_id) FROM staff;
SELECT * FROM inventory;

SELECT distinct COUNT(last_name) FROM actor;

SELECT title, length 
from film 
order by length desc 
limit 10;

SELECT * FROM actor where first_name="SCARLETT"



