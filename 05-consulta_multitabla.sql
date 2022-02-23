-- cuando se consultan dos o mas tablas se conbinan todas las columnas
select * from category,language;

select count(*)
from city inner join country 
on city.country_id=country.country_id
order by city_id;

select count(*)
from city left join country 
on city.country_id=country.country_id
order by city_id;

select count(*)
from city right join country 
on city.country_id=country.country_id
order by city_id;

select city_id,city,country 
from city full join country country
on city.country_id=country.country_id
order by city_id;

select f.title as titulo,f.description,
concat(a.first_name,' ',a.last_name) as 'nombre_completo'
from film f,actor a,film_actor f_a 
where f.film_id=f_a.film_id 
and  a.actor_id=f_a.actor_id
order by nombre_completo;
