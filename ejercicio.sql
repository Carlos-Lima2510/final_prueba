-- Aqui van las tablas de cada uno -- 
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,      
    pais_origen VARCHAR(100) NOT NULL, 
    fecha_nacimiento DATE NOT NULL  
);

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
