use sakila;
#1. Display all available tables in the Sakila database.
show tables;

#2. Retrieve all the data from the tables `actor`, `film` and `customer`.

select* from actor;
select* from film;
select* from customer;

#3. Retrieve the following columns from their respective tables:
#	- 3.1 Titles of all films from the `film` table
#	- 3.2 List of languages used in films, with the column aliased as `language` from the `language` table
#	- 3.3 List of first names of all employees from the `staff` table

select title from sakila.film;
SELECT name AS language FROM language;

select first_name from sakila.staff;

#4. Retrieve unique release years.

select distinct(release_year) from film;

#5. Counting records for database insights:
#	- 5.1 Determine the number of stores that the company has.
#	- 5.2 Determine the number of employees that the company has.
#	- 5.3 Determine how many films are available for rent and how many have been rented.
#	- 5.4 Determine the number of distinct last names of the actors in the database.

SELECT COUNT(DISTINCT store_id) FROM store;
SELECT COUNT(DISTINCT staff_id) from staff;

SELECT COUNT(*) FROM film;

SELECT COUNT(*) FROM rental r
inner join inventory i
on r.inventory_id = i.inventory_id;

select count(distinct(last_name)) from actor;

#6. Retrieve the 10 longest films.
#7.  Use filtering techniques in order to:
#	- 7.1 Retrieve all actors with the first name "SCARLETT".

select distinct(length) from film order by length desc
limit 10SELECT title, length FROM film ORDER BY length DESC LIMIT 10;

select first_name from actor where first_name ='scarlett';



	#BONUS: 
	-# 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes. 
#	- *Hint: use `LIKE` operator. [More information here.](https://www.w3schools.com/sql/sql_like.asp)*
#	- 7.3 Determine the number of films that include Behind the Scenes content

select title from film where title like'%ARMAGEDDON%' and length>100;

SELECT COUNT(*) FROM film WHERE special_features LIKE '%Behind the Scenes%';


