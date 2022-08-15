-- 1 (crear server e inicializarlo):
create database peluqueria_los_canes;
show databases;
use peluqueria_los_canes;

-- 2 (definir tablas)
CREATE TABLE Dueno (
	-- ATRIBUTOS
    DNI int,
    Nombre varchar(50),
    Apellido varchar(50),
    Telefono int,
    Direccion varchar(100),
    -- DEFINIENDO PK:
    PRIMARY KEY (DNI)
);

CREATE TABLE Perro (
	-- ATRIBUTOS 
	ID_Perro int NOT NULL auto_increment,
    Nombre varchar(50),
    Anio_nac int,
    Sexo varchar(10),
    DNI_Dueno int,
    -- DEFINIENDO PK:
    PRIMARY KEY (ID_Perro),
    -- DEFINIENDO FK
    FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial (
	-- ATRIBUTOS
    ID_Historial int NOT NULL auto_increment,
    -- (por simplicidad solo se detalla el año)
    Fecha int,
    Perro int,
    Descripcion varchar(50),
    Monto int,
    -- DEFINIENDO PK:
    PRIMARY KEY (ID_Historial),
    -- DEFINIENDO FK:
    FOREIGN KEY (perro) REFERENCES Perro(ID_Perro)
);

-- 3 (añadiendo registros y realizando consultas);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (41322585, "Marcos", "Altamirano", 351500217, "Av. Alem 500");
INSERT INTO Perro (Nombre, Anio_nac, Sexo, DNI_Dueno) VALUES ("Juanpi", 2014, "Macho", 41322585);
INSERT INTO historial (Fecha, Perro, Descripcion, Monto) VALUES (2022, 1, "examen rutinario", 2500);


INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (285021423, "Julio", "Gonzalez", 351500214, "Sarmiento 100");
INSERT INTO Perro (Nombre, Anio_nac, Sexo, DNI_Dueno) VALUES ("Luli", 2011, "Hembra", 285021423);
INSERT INTO historial (Fecha, Perro, Descripcion, Monto) VALUES (2022, 2, "examen rutinario", 2500);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (145200100, "Anastasya", "Voldrevich", 351500217, "Moscu 10");
INSERT INTO Perro (Nombre, Anio_nac, Sexo, DNI_Dueno) VALUES ("Vladi", 2018, "Macho", 145200100);
INSERT INTO historial (Fecha, Perro, Descripcion, Monto) VALUES (2022, 3, "vacunacion general", 3500);

INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (25575842, "Esteban", "Quito", 351500244, "Republica de Siria 5000");
INSERT INTO Perro (Nombre, Anio_nac, Sexo, DNI_Dueno) VALUES ("mark", 2021, "Macho", 25575842);
INSERT INTO historial (Fecha, Perro, Descripcion, Monto) VALUES (2022, 4, "vacunacion general", 3500);

-- Consultas

-- ver tabla completa
SELECT * FROM perro;
SELECT * FROM Dueno;
SELECT * FROM Historial;

-- ACTIVIDAD 11:
-- 1ro) filtrar dueños de perros de 5 años o menores
SELECT DNI_Dueno from Perro WHERE Anio_nac >= 2017;
-- 2do) filtrar quienes de los dueños / mascotas anteriores que no visitaron el local en este año
SELECT perro FROM HISTORIAL WHERE fecha != 2022;

-- OTRAS ACTIVIDADES para practicar
-- 12
SELECT nombre FROM perro WHERE sexo = "Macho" AND Anio_nac BETWEEN 2020 AND 2022;
-- 6 
SELECT perro FROM HISTORIAL WHERE fecha = 2022;


