--Reunion natural--
SELECT u.nombre, pu.prestamo_id FROM prestamo_usuario AS pu NATURAL JOIN Usuarios AS u;

--Informacion ausente por la derecha--


--Informacion ausente por la izquierda--


--Producto Cartesiano--
SELECT u.nombre, pu.prestamo_id FROM prestamo_usuario AS pu CROSS JOIN Usuarios AS u;
