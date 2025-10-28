use sakila;
#1
show tables;
#2
select*from actor;
select*from film;
select*from customer;
#3
select title from film;
select name as language from language;
select first_name from staff;
#4
select distinct release_year from film;
#5
select count(distinct store_id) from store;
select count(distinct staff_id) from staff;
select count(*)from rental;
select count(*) from film;
select count(distinct last_name) from actor;
#6
select title from film
order by length desc
limit 10;
#7
select * from actor
where first_name= "SCARLETT";
#8
select title from film
where title like "%ARMAGEDDON%" and length >100;
#9
select count(title) from film
where special_features like "%Behind the Scenes%";


