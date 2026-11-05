-- Paso 1: Crear la base de datos
CREATE DATABASE Meca_5;

-- Paso 2: Seleccionar la base de datos para trabajar en ella
USE Meca_5;

-- Paso 3: Crear la tabla para almacenar la información y la imagen
CREATE TABLE alumnos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT CHECK (edad >= 0),
    imagen LONGBLOB
);

-- Paso 4: Insertar un registro con una imagen cargada desde el sistema de archivos
INSERT INTO alumnos (nombre, edad, imagen) 
VALUES ('Alejandro Amalla', 20, LOAD_FILE('/ruta/a/tu/imagen.jpg'));

INSERT INTO alumnos (nombre, edad, imagen) 
VALUES ('Andrik Dorado Lira', 21, LOAD_FILE('/ruta/a/tu/imagen.jpg'));

INSERT INTO alumnos (nombre, edad, imagen) 
VALUES ('Saulo Armando González Rivera', 20, LOAD_FILE('/ruta/a/tu/imagen.jpg'));

INSERT INTO alumnos (nombre, edad, imagen) 
VALUES ('Axel Alejandro Soto Cordero', 21, LOAD_FILE('/ruta/a/tu/imagen.jpg'));

INSERT INTO alumnos (nombre, edad, imagen) 
VALUES ('Cesar Alejandro Romo Rios', 22, LOAD_FILE('/ruta/a/tu/imagen.jpg'));

INSERT INTO alumnos (nombre, edad, imagen) 
VALUES ('Damian Tonatiuh Reyna Tejeda', 20, LOAD_FILE('/ruta/a/tu/imagen.jpg'));

