--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null:

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);	

--Наполнить таблицу employee 70 строками:

insert into employees(employee_name)
values ('Vadim'),
	   ('Andrey'),
	   ('Igor'),
	   ('Inna'),
	   ('Viktor'),
	   ('Sveta'),
	   ('Nikola'),
	   ('Anna'),
	   ('Stella'),
	   ('Kris'),
	   ('Stas'),
	   ('Olga'),
	   ('Zahar'),
	   ('Sofa'),
	   ('Vlad'),
	   ('Kurt'),
	   ('Sasha'),
	   ('Masha'),
	   ('Misha'),
	   ('Goga'),
	   ('Mike'),
	   ('Nik'),
	   ('Angel'),
	   ('Rustam'),
	   ('Rashid'),
	   ('Rama'),
	   ('Roma'),
	   ('Rima'),
	   ('Rasul'),
	   ('Oleg'),
	   ('Maks'),
	   ('Jek'),
	   ('Jef'),
	   ('Liza'),
	   ('Ozzy'),
	   ('Света'),
	   ('Антон'),
	   ('Анжелика'),
	   ('Оксана'),
	   ('Жанна'),
	   ('Александр'),
	   ('Захар'),
	   ('Дима'),
	   ('Глеб'),
	   ('Сара'),
	   ('Мария'),
	   ('Володя'),
	   ('Василий'),
	   ('Виктор'),
	   ('Вадим'),
	   ('Ульяна'),
	   ('Павел'),
	   ('Наташа'),
	   ('Раиса'),
	   ('Рима'),
	   ('Рита'),
	   ('Влас'),
	   ('Макс'),
	   ('Гарри'),
	   ('Герман'),
	   ('Дуглас'),
	   ('Стивен'),
	   ('Стив'),
	   ('Энтони'),
	   ('Килиан'),
	   ('Коля'),
	   ('Заур'),
	   ('Артем'),
	   ('Юрий'),
	   ('Юлиан');
	   
	 
select * from employees;

--Создать таблицу salary 
-- id. Serial  primary key, 
-- monthly_salary. Int, not null:

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary 15 строками:

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   	   	   
select * from salary;

--Создать таблицу employee_salary 
-- id. Serial  primary key, 
-- employee_id. Int, not null, unique 
-- salary_id. Int, not null:

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками: - в 10 строк из 40 вставить несуществующие employee_id:

insert into employee_salary(employee_id,salary_id)
values (1,16),
	   (2,5),
	   (3,3),
	   (4,1),
	   (5,2),
	   (6,4),
	   (7,9),
	   (8,8),
	   (9,14),
	   (10,13),
	   (11,9),
	   (12,7),
	   (13,2),
	   (14,5),
	   (15,1),
	   (16,3),
	   (17,10),
	   (18,11),
	   (19,15),
	   (20,14),
	   (21,9),
	   (22,16),
	   (23,8),
	   (24,5),
	   (25,1),
	   (26,2),
	   (27,3),
	   (28,4),
	   (29,5),
	   (30,6),
	   (51,7),
	   (52,8),
	   (53,9),
	   (54,10),
	   (55,11),
	   (56,12),
	   (57,13),
	   (58,14),
	   (59,15),
	   (60,16);
	   
select * from employee_salary;

--Создать таблицу roles 
-- id. Serial  primary key, 
-- role_name. int, not null, unique:

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30):

alter table roles
alter column role_name type varchar(30);

select * from roles;

--Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
	  select * from roles;
	 
	 --Создать таблицу roles_employee 
	 -- id. Serial  primary key,
	 -- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
	 -- role_id. Int, not null (внешний ключ для таблицы roles, поле id):
	 
	 create table roles_employee(
	 	id serial primary key,
	 	employee_id int not null unique,
	 	role_id int not null,
	 	foreign key (employee_id)
	 		references employees(id),
	 	foreign key (role_id)
	 		references roles(id)
	 );

	select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id,role_id)
values (1,3),
	   (2,4),
	   (3,5),
	   (4,6),
	   (5,7),
	   (6,8),
	   (7,9),
	   (8,10),
	   (9,11),
	   (10,12),
	   (11,13),
	   (12,14),
	   (13,15),
	   (14,16),
	   (15,17),
	   (16,18),
	   (17,19),
	   (18,20),
	   (45,11),
	   (32,8),
	   (25,9),
	   (43,7),
	   (54,15),
	   (66,17),
	   (69,11),
	   (51,9),
	   (38,14),
	   (28,3),
	   (27,8),
	   (48,16),
	   (22,12),
	   (47,4),
	   (23,19),
	   (35,1),
	   (33,8),
	   (61,18),
	   (64,5),
	   (29,14),
	   (20,20),
	   (30,10);
	   
select * from roles_employee;
	   
	