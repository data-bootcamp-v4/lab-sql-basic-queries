SHow Tables From sakila;
use sakila;
Select * from actor limit 50;
Select * from customer limit 50;
Select * from film limit 50;
select title from film;
Select * from film limit 50;
Select * from language limit 50;


SELECT *,
CASE 
    WHEN language_id = 1 THEN 'English'
    WHEN language_id = 2 THEN 'Italian'
    WHEN language_id = 3  THEN 'Japanese'
    WHEN language_id = 4  THEN 'Mandarin'
    WHEN language_id = 5  THEN 'French'
    WHEN language_id = 6  THEN 'German'
END AS 'language'
FROM film;

select * from staff;
select first_name from staff;

select release_year from film;

select * from store;
SELECT COUNT(store_id) from store; 
  
select * from staff;
SELECT COUNT(staff_id) from staff; 

Select * from rental limit 50;

select distinct last_name from actor;

select length from film
order by length DESC
limit 10;

select * from actor;
SELECT first_name FROM actor
WHERE first_name LIKE 'SCARLETT';

SELECT title, length FROM film
WHERE title LIKE '%ARMAGEDDON%' and length >= 100;

Select * from film limit 50;
select * from film
where specail_features like '%Behind the Scenes%';