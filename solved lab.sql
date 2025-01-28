show tables;

select * from actor,film,customer;

select title from film;

select distinct name as language 
from language;

select first_name
from staff;

select distinct release_year
from film;

select count(store_id) 
from store;

select count(staff_id)
from staff;

select count(film_id) 
from film;

select count(rental_id)
from payment;

select length, title
from film
order by length desc
limit 10;

select first_name, last_name
from actor
where first_name="SCARLETT";

select title, length
from film
where length > 100 and title like "%ARMAGEDDON%";

select title, special_features
from film
where special_features like "Behind%"