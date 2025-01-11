DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_alejandro` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_alejandro`()
BEGIN

--Interseccion--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Carlos Lima', 'Miguel Rivas') INTERSECT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Kelvia Neves', 'Miguel Rivas');

--Union--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas') UNION SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Kelvia Neves');

--Diferencia--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas', 'Alejandro Juárez') EXCEPT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Miguel Rivas', 'Kelvia Neves');

--Agregación--
SELECT COUNT(*) AS total_usuarios FROM Usuarios;

END //

DELIMITER;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_kelvia`()
BEGIN

-- Consultas --

END //

DELIMITER;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_carlos` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_carlos`()
BEGIN

-- Intersección

SELECT * FROM prestamo WHERE duracion = 4 INTERSECT SELECT * FROM prestamo WHERE fecha_registro > '2025-01-01 00:00:00:';

-- Diferencia

SELECT * FROM prestamo WHERE duracion = 6 EXCEPT SELECT * FROM prestamo WHERE fecha_registro < '2025-01-01 00:00:00:';

-- Agregación de duración promedio

SELECT AVG(duracion) FROM prestamo;

-- Union

SELECT * FROM prestamo WHERE duracion = 4 UNION SELECT * FROM prestamo WHERE fecha_registro > '2025-01-01 00:00:00:';

END //

DELIMITER;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_manuel` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_manuel`()
BEGIN

-- Consultas --

END //

DELIMITER;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_miguel`()
BEGIN

-- Consultas --

END //

DELIMITER;
