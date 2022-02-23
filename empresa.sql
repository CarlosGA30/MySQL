DROP SCHEMA Empresa;
CREATE SCHEMA Empresa;
USE Empresa;
CREATE TABLE Worker (employee_id INT(3) NOT NULL AUTO_INCREMENT,
first_name varchar(55) NOT NULL,
last_Name varchar(55) NOT NULL,
SALARY DOUBLE NOT NULL,
start_date date NOT NULL,
DEPARTMENT varchar(55) NOT NULL,
 PRIMARY KEY(employee_id));
CREATE TABLE Title(employee_ref_id INT(3) NOT NULL);
Alter table Title add column job_title varchar(55) NOT NULL;
Alter table Title add column affected_from int NOT NULL;
Alter table Title add CONSTRAINT FK_empleado_title
FOREIGN KEY (employee_ref_id) 
REFERENCES worker(employee_id);

CREATE TABLE Bonus(employee_ref_id INT(3) NOT NULL);
Alter table bonus add column bonus_date date NOT NULL;
Alter table bonus add column bonus_amount int NOT NULL;
Alter table bonus add CONSTRAINT FK_empleado_bonus 
FOREIGN KEY (employee_ref_id) 
REFERENCES worker(employee_id);


insert into worker(first_name,last_name,salary,start_date,department) values
('Monika','Arora',100000,'2014-01-20','HR'),
('Santiago','Carrillo',80000,'2014-06-11','Admin'),
('Ian','Smith',300000,'2014-06-20','HR'),
('Boyd','Ndonga',500000,'2014-02-20','Admin'),
('Vivek','Bhati',500000,'2014-06-11','Admin'),
('Elise','Guimares',200000,'2014-06-11','Account'),
('Barrack','Obama',75000,'2014-01-20','Account'),
('Vivian','Muyu',90000,'2014-04-11','Admin');


insert into Title(employee_ref_id,job_title,affected_from) values 
(1,'Manager',5000),
(2,'Executive',3000),
(8,'Executive',4000),
(5,'Manager',4500),
(4,'Asst. Manager',3500),
(7,'Executive',4000),
(6,'Lead',4500),
(3,'Laed',3500);

insert into Bonus (employee_ref_id,bonus_date,bonus_amount) values
(1,'2016-02-11',5000),
(2,'2016-06-11',3000),
(3,'2016-02-20',4000),
(1,'2016-02-20',4500),
(2,'2016-06-11',3500);