/* Display all available tables in the Sakila database */
Use sakila;
show tables;

/* Retrieve all the data from the tables `actor`, `film` and `customer`*/

select * from sakila.actor;
select * from sakila.film;
select * from sakila.customer;

/*Retrieve the following columns from their respective tables:
	- 3.1 Titles of all films from the `film` table
	- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
	- 3.3 List of first names of all employees from the `staff` table*/

select title 
from sakila.film;

select distinct name 
from sakila.language;

select distinct first_name 
from sakila.staff;

/*4. Retrieve unique release years. */

select distinct release_year 
from sakila.film;

/* 5. Counting records for database insights:
	- 5.1 Determine the number of stores that the company has.
	- 5.2 Determine the number of employees that the company has.
	- 5.3 Determine how many films are available for rent and how many have been rented.
	- 5.4 Determine the number of distinct last names of the actors in the database.*/

select count(store_id) 
from sakila.store;

select * from sakila.staff;
select count(staff_id)
from sakila.staff;

select * from sakila.film;

select count(last_name) 
from sakila.actor;

/*6. Retrieve the 10 longest films. */

select length 
from sakila.film
order by length desc
limit 10;

/* 7.  Use filtering techniques in order to:
	- 7.1 Retrieve all actors with the first name "SCARLETT".*/
    
select * from sakila.actor;

select * 
from sakila.actor
where first_name = "SCARLETT";

/* 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. */

select * from sakila.film;

select *
from sakila.film
where title like "%ARMAGEDDON%" and length >= 100;

/* 7.3 Determine the number of films that include Behind the Scenes content*/

select count(*)
from sakila.film
where special_features like "%Behind the scenes%";


