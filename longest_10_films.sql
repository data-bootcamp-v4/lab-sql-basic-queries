USE sakila;

SELECT title,film.length AS film_length from film order by film.length desc LIMIT 10;