-- 1. Crear la tabla
CREATE TABLE minas5to (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    edad INTEGER,
    fotografia TEXT  -- Guarda la ruta o URL de la imagen
);

-- 2. Insertar los datos
INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Marco Herrera Adame', 20, 'imagenes/marco.jpeg');

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Erik Zamarripa Villanueva', 19, 'imagenes/erik.jpeg');

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Hannah Sofia Zavala Cepeda', 20, 'imagenes/hannah.jpeg');

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Karen Barrón Rios', 19, 'imagenes/karen.jpeg');

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Daniel David Garcia Aguirre', 20, 'imagenes/daniel.jpeg');

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Rogelio Orrico Jara', 20, 'imagenes/rogelio.jpeg');

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Diego Delgado Quiñones', 20, NULL);

INSERT INTO minas5to (nombre, edad, fotografia)
VALUES ('Angel Gabriel Esquivel De La Riva', 20, NULL);

-- 3. Ver los datos guardados
SELECT * FROM minas5to;