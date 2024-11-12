use sakila;

select distinct count(address_id)
from store;

select distinct count(username)
from staff;

select count(inventory_id), count(return_date)
from rental;

select distinct count(last_name)
from actor;