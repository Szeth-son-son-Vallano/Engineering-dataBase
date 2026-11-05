-- =======================================================
-- Base de Datos: ingenierías
-- Sistema de gestión de estudiantes por carrera y semestre
-- =======================================================

CREATE DATABASE IF NOT EXISTS `ingenierias`;
USE `ingenierias`;

-- -------------------------------------------------------
-- 1. Tabla: Carreras (Majors)
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS `carreras` (
    `id_carrera` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(100) NOT NULL UNIQUE
);

-- Insertamos las carreras requeridas (Mecatrónica y Minas)
INSERT INTO `carreras` (`nombre`) VALUES 
('Mecatrónica'),
('Minas')
ON DUPLICATE KEY UPDATE `nombre` = VALUES(`nombre`);
-- -------------------------------------------------------
-- 2. Tabla: Estudiantes (Students)
-- Nota: En SQL las tablas se definen con paréntesis ()
-- -------------------------------------------------------
CREATE TABLE IF NOT EXISTS `estudiantes` (
    `id_estudiante` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(50) NOT NULL,
    `edad` INT NOT NULL,
    `semestre` TINYINT NOT NULL,                      -- 1, 3, 5, etc.
    `id_carrera` INT NOT NULL,                        -- Llave foránea hacia carreras
    `foto` VARCHAR(255) DEFAULT 'default.png',        -- Ruta, archivo o URL de la foto (o LONGBLOB si es binario)
    CONSTRAINT `fk_estudiante_carrera` 
        FOREIGN KEY (`id_carrera`) REFERENCES `carreras`(`id_carrera`)
        ON DELETE RESTRICT 
        ON UPDATE CASCADE,
    CONSTRAINT `chk_semestre` 
        CHECK (`semestre` BETWEEN 1 AND 12)
);


INSERT INTO `ingenierias`.`estudiantes` (`nombre`, `edad`,`semestre`, `foto`,`id_carrera`)
SELECT `nombre`, `edad`,1, `fotografía`, 1
FROM `base_1Mec`.`alumnosM1`;

INSERT INTO `ingenierias`.`estudiantes` (`nombre`, `edad`,`semestre`, `foto`,`id_carrera`)
SELECT `nombre`, `edad`,3, `fotografía`, 1
FROM `meca3ro`.`usuarios`;

INSERT INTO `ingenierias`.`estudiantes` (`nombre`, `edad`,`semestre`, `foto`,`id_carrera`)
SELECT `nombre`, `edad`,5, `fotografía`, 1
FROM `base_5Mec`.`alumnos`;

INSERT INTO `ingenierias`.`estudiantes` (`nombre`, `edad`,`semestre`, `foto`,`id_carrera`)
SELECT `nombre`, `edad`,2, `fotografía`, 5
FROM `base_5Minas`.`minas5to`;

-- -------------------------------------------------------
-- 3. Vista: Consulta simplificada para ver a los estudiantes
-- Permite ver directamente nombre, semestre, carrera y foto
-- -------------------------------------------------------
CREATE OR REPLACE VIEW `vista_estudiantes` AS
SELECT 
    e.`id_estudiante`,
    e.`nombre`,
    e.`edad`,
    e.`semestre`,
    c.`nombre` AS `carrera`,
    e.`foto`,
    CONCAT(e.`semestre`, '° ', c.`nombre`) AS `grupo`
FROM `estudiantes` e
INNER JOIN `carreras` c ON e.`id_carrera` = c.`id_carrera`;

