SELECT * FROM actor;
SELECT actor_id,first_name,last_name FROM actor;

/*
Operadores de comparación
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/
select * from actor where first_name =  'Penelope';
select * from actor where first_name != 'Penelope';
SELECT * FROM film WHERE film_id > 50;
SELECT * FROM film WHERE film_id <= 50;
SELECT * FROM customer WHERE customer_id%2=0;
SELECT * FROM film where rental_rate=2.99 AND rating='PG-13';
SELECT * FROM actor Where first_name='DAN';
SELECT * FROM actor where first_name like '%E';
SELECT * FROM actor WHERE first_name like 'an%';
SELECT * FROM actor WHERE last_name like '%n%';
SELECT * FROM actor WHERE first_name like 'b%' or last_name like 'b%';
SELECT * FROM actor WHERE first_name like '%k_r%';
SHOW full tables;
desc film_actor ;