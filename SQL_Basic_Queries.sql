# 1. Show all tables.
USE sakila;
SHOW tables;

#2. Retrieve all the data from the tables `actor`, `film` and `customer`.
SELECT *
FROM sakila.actor;

SELECT *
FROM sakila.film;

SELECT * 
FROM sakila.customer;

/* 3. Retrieve the following columns from their respective tables:
3.1 Titles of all films from the film table*/
SELECT *
FROM sakila.film;

SELECT title
FROM sakila.film;

# 3.2. List of languages used in films, with the column aliased as language from the language table
SELECT *
FROM sakila.language;

SELECT name AS "language" 
FROM sakila.language;

# 3.3 List of first names of all employees from the staff table
SELECT*
FROM sakila.staff;

# 4. Retrieve unique release years.
SELECT *
FROM sakila.film;

SELECT DISTINCT release_year
FROM sakila.film;

/* 5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.*/
SELECT *
FROM sakila.store;

SELECT COUNT(*) AS stores_num
FROM sakila.store;
    
	# - 5.2 Determine the number of employees that the company has.
SELECT COUNT(*) AS employees_num
FROM sakila.staff;

	# - 5.3 Determine how many films are available for rent and how many have been rented.
SELECT * 
FROM sakila.inventory;

SELECT * 
FROM sakila.rental;

SELECT COUNT(*) AS films_available
FROM (
	SELECT DISTINCT film_id
	FROM sakila.rental 
	INNER JOIN sakila.inventory
	ON sakila.rental.inventory_id = sakila.inventory.inventory_id) AS rent;
    
	# - 5.4 Determine the number of distinct last names of the actors in the database.
SELECT *
FROM sakila.actor;

SELECT COUNT(DISTINCT sakila.actor.last_name) AS different_last_name
FROM sakila.actor;

# 6. Retrieve the 10 longest films.
SELECT sakila.film.length, sakila.film.title
FROM sakila.film
ORDER BY length DESC
LIMIT 10;

/*7.  Use filtering techniques in order to:
- 7.1 Retrieve all actors with the first name "SCARLETT".*/
SELECT* 
FROM sakila.actor;

SELECT sakila.actor.first_name, sakila.actor.last_name
FROM sakila.actor
WHERE sakila.actor.first_name = 'SCARLETT';

#	- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
SELECT*
FROM sakila.film;

SELECT sakila.film.title, sakila.film.length
FROM sakila.film	
WHERE sakila.film.title LIKE '%ARMAGEDDON%' AND sakila.film.length > 100;
		#- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
	
    # 7.3 Determine the number of films that include Behind the Scenes content
SELECT*
FROM sakila.film;

SELECT COUNT(sakila.film.special_features) AS content_BTS
FROM sakila.film
WHERE sakila.film.special_features LIKE '%Behind the Scenes%';