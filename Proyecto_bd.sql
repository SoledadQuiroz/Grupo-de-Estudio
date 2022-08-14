use proyecto;

CREATE TABLE `proyecto`.`perro` (
  `ID_Perro` VARCHAR(30) NOT NULL,
  `Nombre` VARCHAR(30) NULL,
  `Fecha_nac` DATE NULL,
  `Sexo` VARCHAR(15) NULL,
  `DNI_dueno` VARCHAR(15) NULL,
  PRIMARY KEY (`ID_Perro`));
  
  CREATE TABLE `proyecto`.`historial` (
  `ID_Historial` VARCHAR(30) NOT NULL,
  `Fecha` DATE NULL,
  `Perro` VARCHAR(30) NULL,
  `Descripcion` VARCHAR(100) NULL,
  `Monto` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Historial`));
  
 
  insert into perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values
  ('1', 'Wala', '2022-01-20', 'Hembra', '35546875');

 insert into historial (ID_Historial, Fecha, Perro, Descripcion, Monto) values
 ('1', '2022-06-29', 'Wala', 'Baño', '1500'),
 ('2', '2022-07-05', 'Wala', 'Peluqueria', '1200'),
 ('3', '2022-07-15', 'Wala', 'Baño', '1500'),
 ('4', '2022-07-29', 'Wala', 'Baño y peluqueria', '2200'),
 ('5', '2022-08-15', 'Wala', 'Baño', '1200');
 
 use proyecto
 
select SUM(monto)
from Historial
where month(fecha) = 7

