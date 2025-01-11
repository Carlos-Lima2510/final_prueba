-- Tabla de Alejandro Juárez - Usuarios --

CREATE TABLE IF NOT EXISTS `Usuarios` ( usuario_id INT AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, correo_electronico VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci UNIQUE NOT NULL, fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `Usuarios` (nombre, correo_electronico) VALUES ('Alejandro Juárez', 'alejandro.juarez@fenix.com'), ('Carlos Lima', 'carlos.lima@fenix.com'), ('Miguel Rivas', 'miguel.rivas@fenix.com'), ('Kelvia Neves', 'kelvia.neves@fenix.com'), ('Manuel Muñoz', 'manuel.muñoz@fenix.com');

-- Tabla de Carlos Alvarado - Prestamos --

CREATE TABLE IF NOT EXISTS prestamo (
    id_prestamo int PRIMARY KEY AUTO_INCREMENT,
    fecha_registro timestamp DEFAULT CURRENT_TIMESTAMP not null,
    duracion int not null,
    fecha_fin datetime not null
) ENGINE=MyISAM CHARSET=utf8 COLLATE=utf8mb3_general_ci;

INSERT INTO prestamo (duracion, fecha_fin)
VALUES (4, "2025-01-16 00:00:00"),
        (4, "2024-01-15 00:00:00"),
        (6, "2025-01-17 00:00:00");

CREATE TABLE IF NOT EXISTS prestamo_usuario (
    prestamo_usuario_id int PRIMARY KEY AUTO_INCREMENT,
    usuario_id int not null,
    prestamo_id int not null
) ENGINE=MyISAM CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO prestamo_usuario (usuario_id, prestamo_id)
VALUES (1, 1);


CREATE TABLE autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(100),      
    pais_origen VARCHAR(100), 
    fecha_nacimiento DATE  
) 
ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO autores (nombre, pais_origen, fecha_nacimiento) VALUES
('Masashi Kishimoto', 'Japón', '1974-11-08'), 
('Eiichiro Oda', 'Japón', '1975-01-01'),    
('Hajime Isayama', 'Japón', '1986-08-29'),  
('Tsugumi Ohba', 'Japón', '1969-10-01'),    
('Hiromu Arakawa', 'Japón', '1973-05-08'),  
('Akira Toriyama', 'Japón', '1955-04-05'),  
('Kōhei Horikoshi', 'Japón', '1986-11-20'),  
('Koyoharu Gotouge', 'Japón', '1989-05-05'), 
('Tite Kubo', 'Japón', '1977-06-26'),       
('Sui Ishida', 'Japón', '1986-12-28');  

CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    año_publicacion YEAR,
    editorial VARCHAR(255),
    ejemplares_disponibles INT
)ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO libros (titulo, año_publicacion, editorial, ejemplares_disponibles) VALUES
('Naruto', 1999, 'Shueisha', 10),
('One Piece', 1997, 'Shueisha', 15),
('Attack on Titan', 2009, 'Kodansha', 8),
('Death Note', 2003, 'Shueisha', 7),
('Fullmetal Alchemist', 2001, 'Square Enix', 5),
('Dragon Ball', 1984, 'Shueisha', 20),
('My Hero Academia', 2014, 'Shueisha', 10),
('Demon Slayer', 2016, 'Shueisha', 12),
('Bleach', 2001, 'Shueisha', 9),
('Tokyo Ghoul', 2011, 'Shueisha', 6);

CREATE TABLE autores_libros (
    id_autor INT NOT NULL,  
    id_libro INT NOT NULL,    
    PRIMARY KEY (id_autor, id_libro), 
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_libro) REFERENCES libros(id_libro) 
        ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO autores_libros (id_autor, id_libro) VALUES
(1, 1), 
(2, 2),
(3, 3), 
(4, 4), 
(5, 5), 
(6, 6); 


DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_alejandro` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_alejandro`()
BEGIN

-- Interseccion --

SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Carlos Lima', 'Miguel Rivas') INTERSECT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Kelvia Neves', 'Miguel Rivas');

-- Union --
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas') UNION SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Kelvia Neves');

-- Diferencia --
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas', 'Alejandro Juárez') EXCEPT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Miguel Rivas', 'Kelvia Neves');

-- Agregación --
SELECT COUNT(*) AS total_usuarios FROM Usuarios;

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_kelvia`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_carlos` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_carlos`()
BEGIN

-- Intersección --

SELECT * FROM prestamo WHERE duracion = 4 INTERSECT SELECT * FROM prestamo WHERE fecha_registro > '2025-01-01 00:00:00:';

-- Diferencia --

SELECT * FROM prestamo WHERE duracion = 6 EXCEPT SELECT * FROM prestamo WHERE fecha_registro < '2025-01-01 00:00:00:';

-- Agregación de duración promedio --

SELECT AVG(duracion) FROM prestamo;

-- Union --

SELECT * FROM prestamo WHERE duracion = 4 UNION SELECT * FROM prestamo WHERE fecha_registro > '2025-01-01 00:00:00:';

-- Reunion Natural --

SELECT u.nombre, pu.prestamo_id FROM prestamo_usuario AS pu NATURAL JOIN Usuarios AS u;

-- Reunion Natural por la izquierda --

SELECT u.nombre, pu.prestamo_id FROM prestamo_usuario AS pu LEFT JOIN Usuarios AS u ON pu.usuario_id = u.usuario_id;

-- Reunion Natural por la derecha --

SELECT u.nombre, pu.prestamo_id FROM prestamo_usuario AS pu RIGHT JOIN Usuarios AS u ON pu.usuario_id = u.usuario_id;

-- Producto Cartesiano --

SELECT u.nombre, pu.prestamo_id FROM prestamo_usuario AS pu CROSS JOIN Usuarios AS u ON pu.usuario_id = u.usuario_id;

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_manuel` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_manuel`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_miguel`()
BEGIN

-- Consultas --

END //

DELIMITER ;
