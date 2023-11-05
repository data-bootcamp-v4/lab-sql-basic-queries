/* Challenge 1*/

SELECT * FROM sakila.actor;
SELECT * FROM sakila.address;
SELECT * FROM sakila.category;
SELECT * FROM sakila.city;
SELECT * FROM sakila.country;
SELECT * FROM sakila.customer;
SELECT * FROM sakila.film;
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film_category;
SELECT * FROM sakila.film_text;
SELECT * FROM sakila.inventory;
SELECT * FROM sakila.language;
SELECT * FROM sakila.payment;
SELECT * FROM sakila.rental;
SELECT * FROM sakila.staff;
SELECT * FROM sakila.store;

/* 2. Retrieve all the data from the tables `actor`, `film` and `customer`.*/
SELECT  from sakila.actor;
SELECT *from sakila.film;
SELECT * from sakila.customer;

/* 3. Retrieve the following columns from their respective tables:
	- 3.1 Titles of all films from the `film` table
	- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
	- 3.3 List of first names of all employees from the `staff` table */

select title from sakila.film;
select name as "Language" from sakila.language;
select first_name from sakila.staff;

/* 4. Retrieve unique release years. */
select distinct release_year from sakila.film;

/* 5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.
	- 5.2 Determine the number of employees that the company has.
	- 5.3 Determine how many films are available for rent and how many have been rented.
	- 5.4 Determine the number of distinct last names of the actors in the database.*/

select COUNT(*) as "Stores"  from sakila.store;
select COUNT(*) as "Employees"  from sakila.staff;

SELECT COUNT(*) AS available_films
FROM sakila.inventory
WHERE inventory_id NOT IN (SELECT DISTINCT inventory_id FROM sakila.rental);
select COUNT(*) AS "Rented Films" from sakila.rental;

select COUNT(distinct last_name) as "Number of Distinct Last Names" from sakila.actor;

/* 6. Retrieve the 10 longest films. */

select length
from sakila.film
order by length desc
Limit 10;

/* 7.  Use filtering techniques in order to:
	- 7.1 Retrieve all actors with the first name "SCARLETT". */
select * from sakila.actor
where first_name = "SCARLETT";

/* 	BONUS: 
	- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
	
		- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
	- 7.3 Determine the number of films that include Behind the Scenes content */
 select * from sakila.film
 where title like "%ARMAGEDDON%" and length > 100;
 
 select COUNT(*) as "Amount" from sakila.film
 where special_features like "%Behind the Scenes%";


