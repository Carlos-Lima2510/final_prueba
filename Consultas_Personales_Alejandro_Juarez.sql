--Consultas personales Alejandro Juarez--

--Interseccion--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Carlos Lima', 'Miguel Rivas') INTERSECT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Kelvia Neves', 'Miguel Rivas');

--Union--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas') UNION SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Alejandro Juárez', 'Kelvia Neves');

--Diferencia--
SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Carlos Lima', 'Miguel Rivas', 'Alejandro Juárez') EXCEPT SELECT nombre, correo_electronico FROM Usuarios WHERE nombre IN ('Miguel Rivas', 'Kelvia Neves');

--Agregación--
SELECT COUNT(*) AS total_usuarios FROM Usuarios;
