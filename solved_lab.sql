USE sakila;
## 1
SHOW tables;

## 2
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

## 3 - 
##3.1
SELECT title FROM film;
##3.2
SELECT name as language FROM language;
##3.3
SELECT first_name FROM staff;

##4
SELECT DISTINCT release_year 
FROM film
;

##5
##5.1
SELECT COUNT(store_id) as n_store
FROM store
;

##5.2
SELECT COUNT(staff_id) FROM staff;

##5.3
SELECT COUNT(DISTINCT inventory_id) FROM rental; ##how many are rented
SELECT COUNT(inventory_id) FROM inventory; #how many are available for rent

##5.4
SELECT COUNT(DISTINCT last_name) FROM actor;

##6
SELECT title
FROM film
ORDER BY length DESC
LIMIT 10
;

##7
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';