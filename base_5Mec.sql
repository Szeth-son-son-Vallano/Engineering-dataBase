- 1. Crear la tabla
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    edad INTEGER,
    fotografia TEXT  -- Guarda la ruta o URL de la imagen
);

-- 2. Insertar un dato de ejemplo
INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Alejandro Amalla', 20, 'imagenes/axelM1.png');


INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Andrik Dorado Lira', 21, 'imagenes/rodrigoM1.png');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Saulo Armando González Rivera', 20, 'imagenes/leonardoM1.png');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Axel Alejandro Soto Cordero', 21, 'imagenes/edwinM1.png');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Cesar Alejandro Romo Rios', 22, 'imagenes/yannickM1.png');


INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Damian Tonatiuh Reyna Tejeda', 20, 'imagenes/melanyM1.png');


-- 3. Ver los datos guardados
SELECT * FROM usuarios;

