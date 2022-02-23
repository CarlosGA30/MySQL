/*
MAX - maximi
MIN - minimo 
AVG - promedio
sum - suma
*/

-- Pelicula mas larga
select title,length from film order by length desc ;
select title,max(length) from film;
-- Nos permite obtener el promedio
select avg(length) from film; 
-- cuanto cuesta reemplazar el inventario
SELECT sum(replacement_cost) from film;

