-- Aqui van las tablas de cada uno -- 
CREATE TABLE libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    año_publicacion YEAR,
    editorial VARCHAR(255),
    ejemplares_disponibles
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

