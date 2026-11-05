-- 1. Crear la tabla
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    edad INTEGER,
    fotografia TEXT  -- Guarda la ruta o URL de la imagen
);

-- 2. Insertar un dato de ejemplo
INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Ricardo Ramírez Gomez', 21, 'url.png');


INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Mario Alejandro Delgado Vázquez', 19, 'url.png');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Dafne Arabelle Morales Stankiewicz', 18, 'url.png');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Elzair Josafat Rodrigues Tomas', 17, 'url.png');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Roman Cisneros Ramirez', 19, 'url.png');


INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Eduardo Antonio Colmenero Herrera', 17, 'N/A');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Alberich Morales Delgado', 18, 'N/A');


-- 3. Ver los datos guardados
SELECT * FROM usuarios;