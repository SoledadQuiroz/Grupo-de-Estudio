use peluqueria_canina

# Tabla dueño
create table dueño(
dni int,
nom_due varchar(150),
ape_due varchar (150),
tel_due bigint,
dir_due varchar (150),
constraint pk_du primary key (dni)
)

insert into dueño values (40123456, 'Maxi', 'Nieto', 4561012, 'Calle 1')
insert into dueño values (40123789, 'Mika', 'Lopez', 1105201, 'Calle 3')
insert into dueño values (40456789, 'Fede', 'Giambi', 1102202, 'calle 5')

#Tabla perro
create table perro(
id_perro int,
nom_perro varchar (150),
nac_perro date,
sexo varchar (10),
dni_due int,
constraint pk_id primary key (id_perro),
constraint fk_du foreign key (dni_due) references dueño (dni)
)

insert into perro values (0810, 'Coly', '2020-02-15','hembra', 40123456)
insert into perro values (1013, 'Shira', '2018-02-26', 'hembra', 40123789)
insert into perro values (1370, 'Bujia', '2012-12-08', 'macho', 40456789)

#tabla historial
create table historial(
his_perro int,
fecha year,
perro int,
descripcion varchar (200),
monto int,
constraint pk_hp primary key (his_perro),
constraint fk_pp foreign key (perro) references perro (id_perro)
)

insert into historial values (1, '2021',0810,'pedicura', 2500)
insert into historial values (2, '2022',1013,'peluqueria', 5000)
insert into historial values (3, '2018', 1370, 'spa completo', 15000)

select * from historial
where fecha='2022'

