/* 1. Show all tables. */
SELECT *
FROM sakila.actor, sakila.address, sakila.category, sakila.city, sakila.country, sakila.customer, sakila.film, sakila.film_actor, sakila.film_category, sakila.film_text, sakila.inventory, sakila.language, sakila.payment, sakila.rental, sakila.staff, sakila.store; 

/* 2. Retrieve all the data from the tables actor, film and customer. */
SELECT *
FROM sakila.actor, sakila.film, sakila.customer;

/* 3.1 Retrieve the titles of all films from the film table */
SELECT title
FROM sakila.film;

/* 3.2. List of languages used in films, with the column aliased as language from the language table */
SELECT name AS language
FROM sakila.language;

/* 3.3. List of first names of all employees from the staff table */
SELECT first_name 
FROM sakila.staff;

/* 4. Retrieve unique release years. */
SELECT DISTINCT release_year
FROM sakila.film;

/* 5.1 Determine the number of stores that the company has. */
SELECT 	COUNT(*)
FROM sakila.store;

/* 5.2 Determine the number of employees that the company has. */
SELECT COUNT(*)
FROM sakila.staff;

/* 5.3 Determine how many films are available for rent and how many have been rented. */
SELECT COUNT(return_date) # this is how many films have been rentend
FROM sakila.rental;
SELECT COUNT(inventory_id)  # total movies available
FROM sakila.rental; 

/* 5.4 Determine the number of distinct last names of the actors in the database. */
SELECT COUNT(DISTINCT last_name) 
FROM sakila.actor;

/* 6. Retrieve the 10 longest films. */
SELECT length, title
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

/* 7.1 Retrieve all actors with the first name "SCARLETT". */
SELECT first_name
FROM sakila.actor
WHERE actor.first_name = "SCARLETT";

/* 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. */
SELECT title
FROM sakila.film
WHERE title LIKE "%ARMAGEDDON%" AND length > 100; 

/* 7.3 Determine the number of films that include Behind the Scenes content */
SELECT COUNT(*)
FROM sakila.film
WHERE film.special_features LIKE "%Behind the Scenes%";
