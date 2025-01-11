-- Aqui van las tablas de cada uno -- 

CREATE TABLE IF NOT EXISTS prestamo (
    id_prestamo int PRIMARY KEY AUTO_INCREMENT,
    fecha_registro timestamp DEFAULT CURRENT_TIMESTAMP not null,
    duracion int not null,
    fecha_fin datetime not null
) ENGINE=MyISAM CHARSET=utf8 COLLATE=utf8mb3_general_ci;

INSERT INTO prestamo (duracion, fecha_fin)
VALUES (4, "2025-01-16 00:00:00");
