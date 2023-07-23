/* Show all tables. */

SHOW tables;

/* Retrieve all the data from the tables `actor`, `film` and `customer`. */

SELECT *
FROM sakila.actor, sakila.film, sakila.customer;

/* 3.1 Titles of all films from the film table */

SELECT title
FROM sakila.film;

/* 3.2. List of languages used in films, with the column aliased as language from the language table */

SELECT name As language_from_the_language_table
FROM sakila.language;

/* 3.3 List of first names of all employees from the staff table */

SELECT first_name
FROM sakila.staff;

/* Retrieve unique release years. */

SELECT DISTINCT release_year
FROM sakila.film;

/* 5.1 Determine the number of stores that the company has. */

SELECT COUNT(*)
FROM sakila.store;

/* 5.2 Determine the number of employees that the company has. */

SELECT COUNT(*) AS companies_emplyoee
FROM sakila.staff;

/* 5.3 Determine how many films are available for rent and how many have been rented. */

SELECT COUNT(*) AS Available_count
FROM sakila.rental
WHERE last_update > 0 AND 

/* 5.4 Determine the number of distinct last names of the actors in the database. */

SELECT DISTINCT last_name
FROM sakila.actor;

/* Retrieve the 10 longest films. */

	SELECT title, length
    FROM sakila.film
    ORDER BY length DESC
    LIMIT 10;
    
    
   /* 7.1 Retrieve all actors with the first name "SCARLETT". */
   
   SELECT *
   FROM sakila.actor
   WHERE first_name = "SCARLETT"
   
   /* Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. */
   
   SELECT *
   FROM sakila.film
   WHERE film.title LIKE "%ARMAGEDDON%" AND length >= 100; 
   
 /* 7.3 Determine the number of films that include Behind the Scenes content */
 
 SELECT *
 FROM sakila.film
 WHERE film.special_features = "Behind the scenes";
 
 
   
   
   
    
















