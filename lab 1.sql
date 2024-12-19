-- 1
SELECT TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';
-- 2
select *
from actor a, film b, customer c;
-- 3
select a.title, b.name as language,  c.first_name
from film a, language b, staff c;
-- 4
select distinct release_year
from film;
-- 5
select count(store_id) 
from store;

select count(staff_id)
from staff;

select count(inventory_id)
from inventory;

select count(inventory_id)
from rental;

select count(distinct (last_name))
from actor;
-- 6
select title,length
from film
order by length desc
limit 10;
-- 7
select first_name, last_name
from actor
where first_name = 'SCARLETT';

-- 7.2
select title,length
from film
where length > 100 and title like '%ARMAGEDDON%';
-- 7.3
select count(title)
from film
where special_features like '%behind%';
