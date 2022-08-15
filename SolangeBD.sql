create database ejercicio;
use ejercicio;

create table Dueno(
clave_Dni bigint,
Nombre varchar(25),
Apellido varchar(25),
Telefono bigint,
Direccion varchar(150),
constraint pk_cDni primary key (clave_Dni)
);

select * from Dueno;
insert into Dueno values(40020963, 'Luca', 'Cate', 3525455693, 'Berutti 1185');
insert into Dueno values(40495911, 'Solange', 'Silva', 3525556677, 'Santiago 1010');
/* 1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias. 
/* 2) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal. */

create table Perro(
clave_IdPerro int,
Nombre varchar(25),
Fecha_nac date,
Sexo varchar(25),
clave_Dni1 bigint,
constraint pk_cIdPerro primary key (clave_IdPerro),
constraint fk_fDni1 foreign key (clave_Dni1) references Dueno(clave_Dni)
);

/* Punto 2) y 8)*/
insert into Perro values(1,'Odin',"2020-03-25",'Macho', 40020963);
insert into Perro values(10,'Or',"2022-01-01", 'Macho', 40495911);

create table Historial(
clave_IdHistorial bigint,
Fecha date,
clave_IdPerro1 int,
Descripcion varchar(150),
Monto float,
constraint pk_cIdHistorial1 primary key (clave_IdHistorial),
constraint fk_fIdPerro1 foreign key (clave_IdPerro1) references Perro(clave_IdPerro)
);
insert into Historial values(10,"2022-05-15",10,"Vacunado todas las dosis", 2500);

