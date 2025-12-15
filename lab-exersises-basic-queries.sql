USE sakila;
SHOW TABLES;
SELECT COUNT(*) FROM film;

-- Challenge 1.1 : Display all available tables in the Sakila database.
SHOW TABLES;


-- Challenge 1.2 : Retrieve all the data from the tables `actor`, `film` and `customer`.SHOW * FROM actor;
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


-- Challenge 1.3 : Retrieve the following columns from their respective tables:
DESCRIBE film;
DESCRIBE language;
DESCRIBE staff;
-- Challenge 1.3.1 : Titles of all films from the `film` table
SELECT DISTINCT title FROM film;
-- Challenge 1.3.2 : List of languages used in films, with the column aliased as `language` from the `language` table
SELECT name AS language FROM language;
-- Challenge 1.3.3 : List of first names of all employees from the `staff` table
SELECT first_name FROM staff;


-- Challenge 1.4 : Retrieve unique release years.
SELECT DISTINCT release_year FROM film;


-- Challenge 1.5 : Counting records for database insights:
-- Challenge 1.5.1 : Determine the number of stores that the company has.
SELECT COUNT(*) AS `Amount of stores` FROM store;
-- Challenge 1.5.2 : Determine the number of employees that the company has.
SELECT COUNT(*) AS `Amount of employees` FROM staff;
-- Challenge 1.5.3 : Determine how many films are available for rent and how many have been rented.
-- Part one, available for rent:
SELECT COUNT(*) AS `Available for rent` FROM inventory;
-- (I think this code is not enough, but we havent learned how to do it properly yet. 
-- This counts all that are in the inventory. Also the once that are out rented at the moment.
-- I talked with Chat GPT about it and it gave me this code:
SELECT COUNT(*) AS currently_available
FROM inventory i
LEFT JOIN rental r
  ON r.inventory_id = i.inventory_id
 AND r.return_date IS NULL
WHERE r.rental_id IS NULL;
-- But like i said, its not something I could have come up with by myself)
-- Part two, have been rented:
SELECT COUNT(*) AS `Have been rented` FROM rental;
-- (Little extra)
SELECT COUNT(*) AS `Currently rented` FROM rental WHERE return_date IS NULL;
-- Challenge 1.5.4 : Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name) AS `Actors last names` FROM actor;


-- Challenge 1.6 : Retrieve the 10 longest films.
SELECT length, title FROM film ORDER BY length DESC LIMIT 10;
-- (not sure if the title was also asked for, but made more sence to me to also show it)


-- Challenge 1.7 : Use filtering techniques in order to:
-- Challenge 1.7.1 : Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name FROM actor WHERE first_name = 'SCARLETT';
-- Challenge 1.7.2 : Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%'
	AND length > 100;
-- Challenge 1.7.3 : Determine the number of films that include Behind the Scenes content
SELECT COUNT(special_features)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';










