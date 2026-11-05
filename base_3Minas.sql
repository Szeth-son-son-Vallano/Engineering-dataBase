-- 1. Crear la tabla
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL,
    edad INTEGER,
    fotografia TEXT
);

-- 2. Insertar los alumnos de Minas 3ro
INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Elías Campos Gonzales', 20, 'imagenes/elias_campos_gonzales_20_anos.jpeg');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Javier Emiliano Medrano Perez Vertti', 19, 'imagenes/javier_emiliano_medrano_perez_vertti_19_anos.jpeg');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Emiliano Lamas Rosales', 19, 'imagenes/emiliano_lamas_rosales_19_anos.jpeg');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Matilde Garcia Bretado', 19, 'imagenes/matilde_garcia_bretado_19_anos.jpeg');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Tenoch Dali Martinez Herrera', 18, 'imagenes/tenoch_dali_martinez_herrera_18_anos.jpeg');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Gael Alejandro Orozco Sanchez', 18, 'imagenes/gael_alejandro_orozco_sanchez_18_anos.jpeg');

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Nicol Estefania Nobares Campos', 20, NULL);

INSERT INTO usuarios (nombre, edad, fotografia)
VALUES ('Giovanni Alfredo Araiz Martinez', 21, NULL);

-- 3. Ver los datos guardados
SELECT * FROM usuarios;
