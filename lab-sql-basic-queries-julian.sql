USE sakila;

-- check if Db loaded correctly
SELECT COUNT(*) FROM actor;
SELECT COUNT(*) FROM film;
SELECT COUNT(*) FROM customer;

-- view Db
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;


-- question 3: load colums 

select title
from film
;

select distinct name as language
from language
;

select first_name
from staff
;

-- question 4 

select distinct release_year
from film
;

-- question 5 

select count(*) as n_stores
from store
;

select count(*) as n_staff
from staff
;

-- films available to rent
select count(distinct film_id) as n_film
from film
;

-- films rented
select count(distinct rental_id) as films_rented
from rental	
;


select distinct count(last_name)
from actor
;

-- question 6

select title, release_year, length
from film
order by length desc
limit 10
;

-- question 7 
select * 
from actor
where first_name = "SCARLETT"
;

-- bonus 7.2

select film_id, title, length
from film
where title like "%ARMAGEDDON%"
	AND
	length > 100
;

-- 7.3

select count(*) as film_BS_Content
from film
where special_features like "%BEHIND the Scenes%"
;


