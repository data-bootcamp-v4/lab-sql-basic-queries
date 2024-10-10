USE sakila;

#Display all available tables in the Sakila database.
SHOW TABLES;

#Retrieve all the data from the tables actor, film and customer.
SELECT *
FROM actor, film, customer;

SELECT language_id, name
FROM language;

SELECT first_name
FROM staff;

#unique release years (=1 -->2006)
SELECT DISTINCT release_year
FROM film;

#number of stores (=2)
SELECT COUNT(store_id)
FROM store;

#number of employees (=2)
SELECT COUNT(staff_id)
FROM staff;

#Count films in inventory : 4581
SELECT COUNT(film_id)
FROM inventory;
#Count rentals: 16044
SELECT COUNT(rental_id)
FROM rental;

#number of distinct last names of actors: 121
SELECT COUNT(DISTINCT last_name)
FROM actor;

#retrieve the 10 longest films:
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

#Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name
FROM actor
WHERE first_name = "SCARLETT";

SELECT title, length
FROM film
WHERE length > 100
	AND title LIKE("%ARMAGEDDON%");