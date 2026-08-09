USE sakila;

-- 1. Display all available tables in the Sakila database.
USE sakila;
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film;
SELECT * FROM sakila.customer;

-- Additional queries
SELECT * FROM sakila.address;
SELECT * FROM sakila.cars;
SELECT * FROM sakila.category;
SELECT * FROM sakila.city;
SELECT * FROM sakila.country;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.customers;
SELECT * FROM sakila.film_category;
SELECT * FROM sakila.film_text;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.invoices;
SELECT * FROM sakila.language;
SELECT * FROM sakila.payment;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.staff;
SELECT * FROM sakila.store;

-- 3. Retriefilmve the following columns from their respective tables:  


-- 3.1 Titles of all films from the film table
SELECT title FROM sakila.film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name as 'language' FROM sakila.language;

-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM sakila.staff;


-- 4. Retrieve unique release years.

SELECT DISTINCT release_year FROM sakila.film;

-- 5. Counting records for database insights:

-- 5.1 Determine the number of stores that the company has.
SELECT count(store_id) FROM sakila.store;

-- 5.2 Determine the number of employees that the company has.
SELECT count(staff_id) FROM sakila.staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
-- first attempt
-- SELECT count(rental_date), count(return_date) FROM sakila.rental;

-- How many film copies are available in the inventory?
SELECT COUNT(*) AS 'films available'
FROM sakila.inventory;

-- How many rental transactions have occurred?
SELECT COUNT(*) AS 'films rented'
FROM sakila.rental;

SELECT
    i.inventory_id,
    i.film_id,
    r.rental_date,
    r.return_date
FROM sakila.inventory AS i
LEFT JOIN sakila.rental AS r
    ON i.inventory_id = r.inventory_id;



-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT count(distinct last_name) FROM sakila.actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to: 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM sakila.actor
WHERE first_name = 'SCARLETT';









