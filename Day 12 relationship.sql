
use sakila;

select * from actor;

select a.first_name, a.actor_id from actor as a
join   film_actor as  fa
where a.actor_id=fa.actor_id;

desc film_actor;
desc film;

select fa.film_id ,fa.actor_id, f.film_id, f.title  from  film_actor as fa 
join film as f
where fa.film_id = f.film_id;

	
select * from actor;
select * from film;
select * from film;


select a.first_name 


-- learning Assignment
-- what are inner joins 
-- what are oouter join 
--  types of outer join




