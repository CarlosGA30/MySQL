
/*
Consultas de agrupamiento 
las utlizamos para agrupar resultados que tengan el mismo valor
*/

select * from inventory group by store_id;
SELECT * FROM rental group by customer_id;
SELECT country_id,count(country_id) as 'total_de_ciudades' 
FROM city group by country_id 
having total_de_ciudades > 2;

-- seleccionar el pais que tenga mas ciudades
SELECT city_id,country_id,count(city_id) as 'total_de_ciudades'
 FROM city group by country_id
order by total_de_ciudades desc limit 1;

select * from city where country_id=44;


