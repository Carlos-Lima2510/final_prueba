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
VALUES (4, "2025-01-16 00:00:00");
manuel
