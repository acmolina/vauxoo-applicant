-- Se crea la tabla de empleados y se llena

CREATE TABLE employee
(
	Id char(3) NOT NULL,
	First_Name varchar(10),
	Last_Name varchar(10)
)

INSERT INTO employee (Id,First_Name,Last_Name)
VALUES ('E01','Anderson','Molina')
INSERT INTO employee (Id,First_Name,Last_Name)
VALUES ('E02','Roberto','Gutierrez')
INSERT INTO employee (Id,First_Name,Last_Name)
VALUES ('E03','Andres','Fernandez')
INSERT INTO employee (Id,First_Name,Last_Name)
VALUES ('E04','Felipe','Mendez')

-- Se crea la tabla de departamentos y se llena

CREATE TABLE employee_departament
(
	Id char(3) NOT NULL,
	Name varchar(20),
	Description char (50)
)

INSERT INTO employee_departament (Id,Name,Description)
VALUES ('E01','Gerencia','Responsables de la empresa')
INSERT INTO employee_departament (Id,Name,Description)
VALUES ('E02','Recursos','Busqueda de personal competente')
INSERT INTO employee_departament (Id,Name,Description)
VALUES ('E03','Produccion','Diseñar, planear y control del producto')
INSERT INTO employee_departament (Id,Name,Description)
VALUES ('E04','Mercadotecnia','Encargados de llevar el producto al mercado')
INSERT INTO employee_departament (Id,Name,Description)
VALUES ('E05','Finanzas','Encargados de la administracion financiera')
INSERT INTO employee_departament (Id,Name,Description)
VALUES ('E06','Servicios Generales','Prestar los servicios que requiera la empresa')

-- Se escoge la llave primaria y la llave foranea para la normalización de las tablas 

ALTER TABLE employee_departament
ADD CONSTRAINT employee_departament_pk primary key(Id)

ALTER TABLE employee
ADD CONSTRAINT employee_fk foreign key (Id) references employee_departament(Id)

-- Se crea la nueva columna en la tabla 'employee'

ALTER TABLE employee
ADD departament char(3)

-- Se actualiza la tabla 'employee' para asignarle un departamento a cada empleado

UPDATE employee
SET "departament"='E02'
WHERE Id='E01'

UPDATE employee
SET "departament"='E01'
WHERE Id='E02'

UPDATE employee
SET "departament"='E06'
WHERE Id='E03'

UPDATE employee
SET "departament"='E02'
WHERE Id='E04'

SELECT *
FROM employee

------------------------------------------------------------------------------------------------------------------------------------
-- Se crea la table de hobbys

CREATE TABLE employee_hobby
(
	Id char(3) NOT NULL,
	Name varchar(20),
	Description char (50)
)

INSERT INTO employee_hobby (Id,Name,Description)
VALUES ('E01','Deportes','Realiza actividades relacionadas con deportes')
INSERT INTO employee_hobby (Id,Name,Description)
VALUES ('E02','Lectura','Le gusta realizar actividades de lectura')
INSERT INTO employee_hobby (Id,Name,Description)
VALUES ('E03','Manualidades','Actividades relacionadas con obras de arte')

ALTER TABLE employee_hobby
ADD CONSTRAINT employee_hobby_fk foreign key (Id) references employee_departament(Id)

ALTER TABLE employee
ADD hobby char(7)

-- Se actuliza la tabla employee para ingresar el hobby a cada empleado

UPDATE employee
SET "hobby"='E02,E03'
WHERE Id='E01'

UPDATE employee
SET "hobby"='E01,E02'
WHERE Id='E02'

UPDATE employee
SET "hobby"='E01,E03'
WHERE Id='E03'

UPDATE employee
SET "hobby"='E02,E03'
WHERE Id='E04'

SELECT *
FROM employee


