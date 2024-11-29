-- Use Sakila database to do the given tasks.
USE Sakila;

-- Display all available tables in Sakila Database.
SHOW TABLES;

-- Retrieve all data from the tables actor,film,and customer.
SELECT * from sakila.actor; 
SELECT * from sakila.film; 
SELECT * from sakila.customer;

/*Retrieve the following columns from their respective tables:
3.1 Titles of all films from the film table
3.2 List of languages used in films, with the column aliased as language from the language table
3.3 List of first names of all employees from the staff table. */

SELECT  film. film_id, film.title from sakila.film; 
SELECT l.language_id as id,l.name as language from sakila.language as l; 
SELECT *from sakila.staff;
SELECT s.staff_id as id ,s.first_name from sakila.staff as s;

-- Retrieve unique release years.
SELECT   DISTINCT RELEASE_YEAR from sakila.film; 

/*Counting records for database insights:

5.1 Determine the number of stores that the company has.
5.2 Determine the number of employees that the company has.
5.3 Determine how many films are available for rent and how many have been rented.
5.4 Determine the number of distinct last names of the actors in the database.*/

SELECT COUNT(STORE_ID) from sakila.store; 
SELECT COUNT(STAFF_ID) from sakila.staff; 
SELECT COUNT(INVENTORY_ID) as Rented_Film from sakila.rental; 
SELECT COUNT(INVENTORY_ID) as Available_Film from sakila.inventory where INVENTORY_ID NOT IN(SELECT COUNT(INVENTORY_ID) as Rented_Film from sakila.rental); 
SELECT COUNT(DISTINCT LAST_NAME) from sakila.actor; 

-- Retrieve the 10 longest Films.
SELECT FILM_ID,TITLE as FILM_NAME , LENGTH as FILM_LENGHT from sakila.film ORDER BY LENGTH DESC LIMIT 10;
/*Use filtering techniques in order to:

7.1 Retrieve all actors with the first name "SCARLETT".
BONUS:

7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

Hint: use LIKE operator. More information here.
7.3 Determine the number of films that include Behind the Scenes content.*/
SELECT actor_id, first_name from sakila.actor where first_name = 'SCARLETT'; 
SELECT film_id, title as film_name, length as duration  from sakila.film where title LIKE 'ARMAGEDDON' and length >100; 
SELECT COUNT(*) AS number_of_films
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';



