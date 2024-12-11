use sakila;

select first_name, last_name
from actor
where first_name = 'SCARLETT';

select count(special_features)
from film
where special_features like '%Behind the Scenes%'
