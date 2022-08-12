CREATE DATABASE peluqueria_canina;
use peluqueria_canina;
CREATE TABLE Dueno (
    DNI INT NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Telefono INT NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    PRIMARY KEY (DNI)
);
CREATE TABLE Perro (
    ID_Perro INT NOT NULL AUTO_INCREMENT,
    Nombre_perro VARCHAR(50) NOT NULL,
    Fecha_nac VARCHAR(50) NOT NULL,
    Sexo VARCHAR(30) NOT NULL,
    DNI_Dueno INT NOT NULL,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI)
);
CREATE TABLE Historial (
    ID_Historial INT NOT NULL AUTO_INCREMENT,
    Fecha VARCHAR(50) NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(100) NOT NULL,
    Monto INT NOT NULL,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (perro)
        REFERENCES Perro (ID_Perro)
);
#Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (33574932, "Marina", "Lopez", "1186754569", "Colombia 455");
INSERT INTO Perro(Nombre_perro, Fecha_nac, Sexo, DNI_dueno) VALUES ("Coca", "5/3/2018", "Hembra", 33574932);
#Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE Dueno 
SET 
    Direccion = 'Libertad 123'
WHERE
    DNI = 33574932