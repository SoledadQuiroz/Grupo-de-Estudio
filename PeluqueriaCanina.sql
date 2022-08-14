create database PeluqueriaCanina;
use PeluqueriaCanina;
create table Dueno (
dni int not null unique,
nombre varchar (30) not null,
apellido varchar (30) not null,
telefono int,
direccion varchar (150) not null,
Primary Key (dni)
);

create table Perro(
id_perro int not null unique auto_increment,
nombre varchar (40),
fecha_nac date,
sexo varchar (15),
dni_dueno int not null unique,
primary key (id_perro),
foreign key (dni_dueno) references Dueno (dni)
);

create table Historial(
id_historial int not null unique auto_increment,
fecha date,
perro int not null unique,
descripcion varchar (200),
monto int,
primary key  (id_historial),
foreign key (perro) references Perro (id_perro)
);

insert into Dueno (dni, nombre, apellido, telefono, direccion)
values
(32456789, 'Juan', 'Carujo', 456123, 'Av Paz 1235'),
(45123456, 'Andrea', 'Guedes', 42516, 'Colon 232'),
(78564210, 'Jimena', 'Zaric', 78123895, 'Corrientes 7854'),
(12456304, 'Marcelo', 'Perez', 123456, 'Bedoya 231');

insert into Perro (nombre, fecha_nac, sexo, dni_dueno)
values
('Popy', '2001-05-15', 'Macho', 32456789),
('Ruca', '2022-06-03', 'Hembra', 78564210),
('Coco', '2022-04-23', 'Macho', 12456304),
('Cuchi', '2021-09-17', 'Macho',45123456);


select * from Perro where sexo = 'Macho' and fecha_nac between '2020-01-01' and '2022-12-31';