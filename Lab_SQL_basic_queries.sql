use sakila;

##### 1 ######

show full tables;

## 2 ##
SELECT * FROM customer;
SELECT * FROM actor;
SELECT * FROM film;

## 3 ##
SELECT title FROM film;
SELECT name AS 'language' FROM language;
SELECT first_name FROM staff;

### 4 ###
SELECT distinct release_year FROM film;

### 5 ###
SELECT COUNT(store_id) FROM store;

SELECT COUNT(staff_id) FROM staff;

select COUNT(inventory_id) FROM inventory;

SELECT COUNT(rental_id) FROM rental;

SELECT count(distinct last_name) FROM actor;

### 6 ###
SELECT * FROM film
ORDER BY lengTH DESC
LIMIT 10;
### 7 ###
SELECT * FROM actor
WHERE first_name = "SCARLETT";