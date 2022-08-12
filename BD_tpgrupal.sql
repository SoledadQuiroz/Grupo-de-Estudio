DROP DATABASE IF EXISTS pelucanina;

CREATE DATABASE pelucanina;

USE pelucanina;

CREATE TABLE dueno( 
	Dni VARCHAR(9)NOT NULL PRIMARY KEY,
    Nombre VARCHAR (30) NOT NULL,
    Apellido VARCHAR (30)NOT NULL,
    Telefono VARCHAR (15) NULL,
    Direccion VARCHAR (80)  NOT NULL
    
);

CREATE TABLE perro(
	ID_perro INT NOT NULL,
    Nombre VARCHAR (20) NULL,
    Fecha_nac DATE NOT NULL,
    Sexo VARCHAR(10)NULL,
    Dni_dueno VARCHAR(9) NOT NULL,
    
    PRIMARY KEY ( ID_perro),
    FOREIGN KEY (Dni_dueno) REFERENCES dueno(Dni)
);

CREATE TABLE historial(
	ID_Historial INT auto_increment NOT NULL,
    fecha DATE NOT NULL,
    perro INT NOT NULL,
    descripcion VARCHAR(100)NULL,
    monto FLOAT NOT NULL,
    
    PRIMARY KEY( ID_Historial),
    FOREIGN KEY(perro) REFERENCES perro(ID_perro)
);
INSERT INTO dueno VALUES ('28957346', 'Juan', 'Perez', '4789689', 'Belgrano 101');
INSERT INTO dueno values('23546987', 'Maria', 'Perez', '4789689', 'Pueyrredon  811');
INSERT INTO dueno VALUES ('30502866', 'Alejandro', 'Kohler', '3518726354', 'chaja 150');

INSERT INTO perro VALUES('13', 'Puppy', '2012-12-12' , 'Hembra', '28957346');
INSERT INTO perro VALUES('14', 'Fido', '2015-12-05' , 'Macho', '23546987');
INSERT INTO perro VALUES('18', 'Dolfy', '2011-12-12' , '' , '30502866');

INSERT INTO historial(fecha, perro, descripcion,monto)
 VALUES 
('2013-12-12' , '13', 'corte','2350'),
('2014-02-06' , '13', 'baño','5960'),
('2016-05-10' , '13', 'tratamiento vip','23000'),
('2017-10-25' , '13', 'corte','2350');

INSERT INTO historial(fecha, perro, descripcion,monto)
 VALUES 
('2015-06-12' , '14', 'corte','9530'),
('2016-02-06' , '14', 'baño','4120'),
('2017-05-10' , '14', 'masaje','4580'),
('2018-10-25' , '14', 'corte','1500');

INSERT INTO historial(fecha, perro, descripcion,monto)
 VALUES 
('2012-06-12' , '18', 'corte','9530'),
('2015-02-06' , '18', 'baño','4120'),
('2016-05-10' , '18', 'manicura','7354');

/*buscamos animal q hace mas tiempo no se atiende*/
SELECT perro, MAX(Fecha) AS Fecha FROM historial GROUP BY perro order by fecha;
/*seleccionamos el primero (en este caso el 18) y lo eliminamos*/
delete from historial where perro=18;
/*revisamos q se haya eliminado */
select*from historial group by perro order by perro;

