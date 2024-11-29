-- import database 
--#1 show table 
use sakila;
show tables;

--#2 
select*
from (actor, film, customer);

--#3 
select(title)
from film;

select (language_id) as 'Language'
from film; 

select distinctfirst_name
from staff;  

--#4
select distinct(release_year)
from film;

--#5
 select count(address_id)
 from store;
 
  select count(staff_id)
 from staff;
 
select count(rental_date) as rented, count(return_date) as available from rental;

select count(distinct(last_name)) as 'Number of Distinct Last Names' 
from actor;

select length
from film;
 
 --#6 
 select title, length from film
 order by length DESC
 limit 10;
 
 --#7
 Select LAST_NAME, FIRST_NAME from actor
 where first_name like 'SCARLETT';