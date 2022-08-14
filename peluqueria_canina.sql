CREATE DATABASE peluqueria_canina;
use peluqueria_canina;
-- Tabla Dueno
CREATE TABLE Dueno (
    DNI INT NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Telefono BIGINT NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    PRIMARY KEY (DNI)
);
-- Tabla Perro
CREATE TABLE Perro (
    ID_Perro INT NOT NULL AUTO_INCREMENT,
    Nombre_perro VARCHAR(50) NOT NULL,
    Fecha_nac DATE NOT NULL,
    Sexo VARCHAR(10) NOT NULL,
    DNI_Dueno INT NOT NULL,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno)
        REFERENCES Dueno (DNI)
);
-- Tabla Historial
CREATE TABLE Historial (
    ID_Historial INT NOT NULL AUTO_INCREMENT,
    Fecha DATE NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(100) NOT NULL,
    Monto INT NOT NULL,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (perro)
        REFERENCES Perro (ID_Perro)
);
-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO Dueno VALUES (33574932, "Marina", "Lopez", "1186754569", "Colombia 455");
INSERT INTO Perro(Nombre_perro, Fecha_nac, Sexo, DNI_dueno) VALUES ("Coca", "2018-03-05", "Hembra", 33574932);
-- Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE Dueno 
SET 
    Direccion = 'Libertad 123'
WHERE
    DNI = 33574932