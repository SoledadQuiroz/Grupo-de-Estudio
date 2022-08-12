CREATE DATABASE peluqueria_canina;
use peluqueria_canina;
CREATE TABLE Dueno (
DNI int not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(50) not null,
Direccion varchar(100) not null,
PRIMARY KEY (DNI)
);
CREATE TABLE Perro (
ID_Perro int not null,
Nombre varchar(50) not null,
Fecha_nac varchar(50) not null,
Sexo varchar (30) not null,
DNI_Dueno int not null,
PRIMARY KEY (ID_Perro),
FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);
CREATE TABLE Historial (
ID_Historial int not null,
Fecha varchar(50) not null,
Perro int not null,
Descripcion varchar(100) not null,
Monto varchar(100) not null,
PRIMARY KEY (ID_Historial),
FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
);
