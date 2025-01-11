-- Aqui van las tablas de cada uno -- 
-- Tabla de Alejandro Juárez - Usuarios --

CREATE TABLE IF NOT EXISTS `Usuarios` ( usuario_id INT AUTO_INCREMENT PRIMARY KEY, nombre VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, correo_electronico VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci UNIQUE NOT NULL, fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP ) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT INTO `Usuarios` (nombre, correo_electronico) VALUES ('Alejandro Juárez', 'alejandro.juarez@fenix.com'), ('Carlos Lima', 'carlos.lima@fenix.com'), ('Miguel Rivas', 'miguel.rivas@fenix.com'), ('Kelvia Neves', 'kelvia.neves@fenix.com'), ('Manuel Muñoz', 'manuel.muñoz@fenix.com');

-- Consultas personales Alejandro Juárez --

--Intersección--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Carlos Lima', 'Miguel Rivas') INTERSECT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Kelvia Neves', 'Miguel Rivas');

--Union--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas') UNION SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Kelvia Neves');

--Diferencia--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas', 'Alejandro Juárez') EXCEPT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Miguel Rivas', 'Kelvia Neves');

--Agregación--
SELECT COUNT(*) AS total_usuarios FROM Usuarios;
