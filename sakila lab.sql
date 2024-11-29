USE sakila;
select *, language.name from film
left join language on film.language_id = language.language_id;

select *, staff.first_name from customer
left join staff on customer.store_id = staff.store_id;

select distinct film.release_year from film;

select count(*) as number_of_stores from store;

select count(*) as number_of_employees from staff;

select count(*) as number_of_films_available from film;

select count(*) as number_of_films_rented from film
where rental_duration > 0;

select title from film
order by length DESC
limit 10;

select * from actor
where first_name like "Scarlett";

select * from film
where title like "%ARMAGEDDON%" AND length >100;

select * from film
where special_features like "%Behind the Scenes%";