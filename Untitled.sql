/* SQL basics -  lab 1 ## Challenge
Use the sakila database to do the following tasks:
1. Show all tables.
2. Retrieve all the data from the tables `actor`, `film` and `customer`.
3. Retrieve the following columns from their respective tables:
	- 3.1 Titles of all films from the film table
	- 3.2. List of languages used in films, with the column aliased as language from the language table
	- 3.3 List of first names of all employees from the staff table

4. Retrieve unique release years.
5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.
	- 5.2 Determine the number of employees that the company has.
	- 5.3 Determine how many films are available for rent and how many have been rented.
	- 5.4 Determine the number of distinct last names of the actors in the database.
6. Retrieve the 10 longest films.
7.  Use filtering techniques in order to:
	- 7.1 Retrieve all actors with the first name "SCARLETT".
	- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
	
		- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
	- 7.3 Determine the number of films that include Behind the Scenes content?*/
    
    
    
/* challenge 1 Show all tables? */
SHOW TABLES FROM sakila;

/* Retrieve all the data from the tables `actor`, `film` and `customer`. */

SELECT * FROM sakila.actor, sakila.film, sakila.customer;

/* 3. Retrieve the following columns from their respective tables:
	- 3.1 Titles of all films from the film table
	- 3.2. List of languages used in films, with the column aliased as language from the language table
	- 3.3 List of first names of all employees from the staff table  */
    
    
SELECT sakila.film.title 
FROM Sakila.film;

SELECT sakila.language.name AS language FROM sakila.language;

SELECT sakila.staff.first_name FROM sakila.staff;

/*4. Retrieve unique release years. */

SELECT distinct sakila.film.release_year from sakila.film;

/* 5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.
	- 5.2 Determine the number of employees that the company has.
	- 5.3 Determine how many films are available for rent and how many have been rented.
	- 5.4 Determine the number of distinct last names of the actors in the database. */
    
SELECT COUNT(store_id) FROM sakila.store;

SELECT COUNT(staff_id) FROM sakila.staff;

SELECT COUNT(rental_id) as rented FROM sakila.rental;
SELECT COUNT(inventory_id) as inventory from sakila.inventory;
    

    
