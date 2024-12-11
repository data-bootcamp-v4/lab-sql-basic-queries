use sakila;

/*select *
from film, `language`, staff;*/

/*SELECT film.title, `language`.`name`, staff.first_name 
FROM film 
JOIN `language` ON film.last_update = `language`.last_update 
JOIN staff ON `language`.`name` = staff.username;*/

select title, `name`, first_name
from film, `language`, staff;