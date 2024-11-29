Use sakila ;
SHOW tables;
#2
Select * from actor;

select * from film;

SELECT * FROM customer;

#3.1 Titles of all films from the film table

select title from film;

#3.2 List of languages used in films, with the column aliased as language from the language table
select name as language from language;  

#3.3 List of first names of all employees from the staff table
select first_name from staff;

# 4 unique release year 

SELECT DISTINCT release_year FROM film;

#5.1 Determine the number of stores that the company has.
select count(distinct store_id) from store;

#5.2 Determine the number of employees that the company has.
select count(distinct staff_id) from staff;

#5.3 Determine how many films are available for rent and how many have been rented.

SELECT COUNT(DISTINCT rental_id) AS rented_films
FROM rental;

#5.4 Determine the number of distinct last names of the actors in the database.

select (distinct last_name) from actor;

#Retrieve the 10 longest films.
select title from film
order by lenght desc
limit 19;#

#Use filtering techniques in order to:

#7.1 Retrieve all actors with the first name "SCARLETT".
#BONUS:
select first_name, last_name from actor
where first_name like "Scarlet%";

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
select title from film 
where title like "%armageddon%" and length>100;


#Hint: use LIKE operator. More information here.
#7.3 Determine the number of films that include Behind the Scenes content

select count (film_id) from film 
where special_features like "%behind the scene%";