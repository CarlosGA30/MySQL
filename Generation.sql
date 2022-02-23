drop schema genetarion;
CREATE SCHEMA Generation;
USE Generation;
CREATE TABLE cohorte (id INT NOT NULL AUTO_INCREMENT, PRIMARY KEY(id));
ALTER TABLE cohorte ADD COLUMN nombre VARCHAR(255) NOT NULL;
ALTER TABLE cohorte ADD COLUMN edad INT NOT NULL;

-- Agrega datos
INSERT INTO cohorte(nombre,edad) VALUES
('Pedro',15),
('Ash Katchup',10),
('Patricio',22);
-- Muetra datos de las tablas
SELECT * FROM cohorte;
show full tables from world;
SELECT * FROM world.city where name like 'A%';
SELECT nombre FROM cohorte;
SELECT CountryCode,Population FROM world.city where name like 'A%';
SELECT name as 'Nombre' FROM world.city where name like 'A%';
UPDATE cohorte set nombre = 'Juan';
UPDATE cohorte set 
nombre = 'Juan',
edad=21
WHERE id=4;

-- DELETE elimina el WHERE seleciona
-- delete from cohorte where id=6;

 

