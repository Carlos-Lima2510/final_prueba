-- Aqui van las tablas de cada uno -- 
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
