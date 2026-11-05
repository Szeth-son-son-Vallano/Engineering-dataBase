-- 1. Crear la tabla
CREATE TABLE alumnosM1 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    edad INTEGER,
    fotografia TEXT  -- Guarda la ruta o URL de la imagen
);

-- 2. Insertar un dato de ejemplo
INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Axel Villa Ramirez', 18, 'imagenes/axelM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Rodrigo Saucedo Flores', 18, 'imagenes/rodrigoM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Leonardo Daniel Nava López', 18, 'imagenes/leonardoM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Edwin Mauricio Ayala Valero', 18, 'imagenes/edwinM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Yannick Alejandro Rivera Valero', 18, 'imagenes/yannickM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Melany Samantha García Hernandez', 18, 'imagenes/melanyM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Irene Dorantes Colunga', 18, 'imagenes/ireneM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Román Benicio Ruiz Chairez', 17, 'imagenes/románM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Alan Rafael Rosales Reyes', 18, 'imagenes/alanM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('José Enrique Espino Retana', 18, 'imagenes/kikeM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Diego Manuel Baez Gonzalez', 18, 'imagenes/diegoM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Mario Juarez Hernandez', 18, 'imagenes/marioM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Caleb Iván Adam Torres', 18, 'imagenes/calebM1.png');

INSERT INTO alumnosM1 (nombre, edad, fotografia)
VALUES ('Cesar Alejandro Camacho Morales', 18, 'imagenes/cesarM1.png');



-- 3. Ver los datos guardados
SELECT * FROM alumnosM1;