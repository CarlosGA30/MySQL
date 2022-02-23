select * from film_category where category_id in (7,11);
select * from film where film_id in (select film_id from film_category where category_id =11);

select title from film where film_id 
in (select film_id from film_actor where actor_id 
in(select actor_id from actor where first_name="dan" ));

select f.title as titulo,f.description,concat(a.first_name,' ',a.last_name) as 'nombre_completo' from film f,actor a,film_actor f_a 
where f.film_id=f_a.film_id 
and  a.actor_id=f_a.actor_id
and first_name="dan";


select * from actor where actor_id between 15 and 35;