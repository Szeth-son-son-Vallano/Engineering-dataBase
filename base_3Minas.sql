PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

CREATE TABLE IF NOT EXISTS alumnos (
    id INTEGER PRIMARY KEY,
    nombres TEXT NOT NULL,
    primer_apellido TEXT NOT NULL,
    segundo_apellido TEXT NOT NULL,
    edad INTEGER CHECK (edad IS NULL OR (typeof(edad) = 'integer' AND edad BETWEEN 0 AND 120)),
    carrera TEXT NOT NULL DEFAULT 'Ingeniería en Minas',
    anio_academico INTEGER NOT NULL DEFAULT 3,
    fotografia TEXT DEFAULT NULL
);

INSERT INTO alumnos (id, nombres, primer_apellido, segundo_apellido, edad) VALUES
    (1, 'Elías', 'Campos', 'Gonzales', 20),
    (2, 'Javier Emiliano', 'Medrano', 'Perez Vertti', 19),
    (3, 'Emiliano', 'Lamas', 'Rosales', 19),
    (4, 'Matilde', 'Garcia', 'Bretado', 19),
    (5, 'Tenoch Dali', 'Martinez', 'Herrera', 18),
    (6, 'Gael Alejandro', 'Orozco', 'Sanchez', 18),
    (7, 'Nicol Estefania', 'Nobares', 'Campos', 20),
    (8, 'Giovanni Alfredo', 'Araiz', 'Martinez', 21)
ON CONFLICT(id) DO NOTHING;

UPDATE alumnos SET fotografia = 'fotos/01_elias_campos_gonzales_20_anos.jpeg' WHERE id = 1 AND fotografia IS NULL;
UPDATE alumnos SET fotografia = 'fotos/02_javier_emiliano_medrano_perez_vertti_19_anos.jpeg' WHERE id = 2 AND fotografia IS NULL;
UPDATE alumnos SET fotografia = 'fotos/03_emiliano_lamas_rosales_19_anos.jpeg' WHERE id = 3 AND fotografia IS NULL;
UPDATE alumnos SET fotografia = 'fotos/04_matilde_garcia_bretado_19_anos.jpeg' WHERE id = 4 AND fotografia IS NULL;
UPDATE alumnos SET fotografia = 'fotos/05_tenoch_dali_martinez_herrera_18_anos.jpeg' WHERE id = 5 AND fotografia IS NULL;
UPDATE alumnos SET fotografia = 'fotos/06_gael_alejandro_orozco_sanchez_18_anos.jpeg' WHERE id = 6 AND fotografia IS NULL;

CREATE VIEW IF NOT EXISTS ficha_alumnos AS
SELECT id, nombres, primer_apellido, segundo_apellido,
       nombres || ' ' || primer_apellido || ' ' || segundo_apellido AS nombre_completo,
       edad, carrera, anio_academico, fotografia
FROM alumnos;

COMMIT;

SELECT * FROM ficha_alumnos
ORDER BY primer_apellido COLLATE NOCASE, segundo_apellido COLLATE NOCASE, nombres COLLATE NOCASE;
