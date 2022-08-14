use peluqueria_canina;

INSERT INTO dueno( DNI, Nombre, Apellido, Telefono,Direccion ) VALUES
('28957346', 'Juan',  'Perez', '4789689',  'Belgrano 101'), 
('23546987',  'Maria',  'Perez', '4789689',  'Pueyrredon  811');

UPDATE dueno 
SET 
    Direccion = 'Libertad 123'
WHERE
    DNI = '28957346'
    
