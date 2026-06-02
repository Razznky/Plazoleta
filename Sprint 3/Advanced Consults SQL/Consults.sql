CREATE VIEW vista_ubicacion_restaurantes AS
SELECT 
    r.nombre_comercial AS Restaurante, 
    c.nombre AS Ciudad, 
    d.nombre AS Departamento
FROM restaurante r
INNER JOIN ciudades c ON r.id_ciudad = c.id
INNER JOIN departamentos d ON c.id_departamento = d.id;

SELECT 
    p.nombre AS Nombre_Plato, 
    cp.nombre AS Categoria
FROM plato p
INNER JOIN categoria_plato cp ON p.categoria_plato_id = cp.categoria_plato_id;

SELECT * FROM vista_ubicacion_restaurantes;

SELECT 
    nombres, 
    apellidos, 
    correo_electronico
FROM cliente
WHERE id_estado = (SELECT id FROM estado_cliente WHERE nombre = 'Activo');

SELECT 
    cp.nombre AS Categoria, 
    COUNT(p.plato_id) AS Total_Platos
FROM categoria_plato cp
LEFT JOIN plato p ON cp.categoria_plato_id = p.categoria_plato_id
GROUP BY cp.nombre;

SELECT 
    r.nombre_comercial AS Restaurante, 
    pe.pedido_id AS ID_Pedido, 
    pe.fecha_pedido AS Fecha, 
    CONCAT(c.nombres, ' ', c.apellidos) AS Cliente
FROM pedido pe
INNER JOIN restaurante r ON pe.restaurante_id = r.restaurante_id
INNER JOIN cliente c ON pe.cliente_id = c.cliente_id
ORDER BY r.nombre_comercial, pe.fecha_pedido DESC;

SELECT 
    DATE_FORMAT(pe.fecha_pedido, '%Y-%m') AS Mes, 
    SUM(dp.cantidad_unitario * dp.precio_unitario) AS Total_Ventas
FROM pedido pe
INNER JOIN detalle_pedido dp ON pe.pedido_id = dp.pedido_id
GROUP BY Mes;

SELECT 
    r.nombre_comercial AS Restaurante, 
    p.nombre AS Plato, 
    SUM(dp.cantidad_unitario) AS Cantidad_Vendida
FROM restaurante r
INNER JOIN pedido pe ON r.restaurante_id = pe.restaurante_id
INNER JOIN detalle_pedido dp ON pe.pedido_id = dp.pedido_id
INNER JOIN plato p ON dp.plato_id = p.plato_id
GROUP BY r.nombre_comercial, p.nombre
ORDER BY Cantidad_Vendida DESC;

SELECT 
    CONCAT(e.nombres, ' ', e.apellidos) AS Empleado, 
    he.dia_de_semana, 
    he.horario_inicio
FROM empleado e
INNER JOIN horario_empleados he ON e.empleado_id = he.id_empleado
WHERE he.horario_inicio BETWEEN '08:00:00' AND '10:00:00';

SELECT 
    pe.pedido_id, 
    CONCAT(c.nombres, ' ', c.apellidos) AS Cliente, 
    pe.costo_envio, 
    ep.nombre AS Estado
FROM pedido pe
INNER JOIN cliente c ON pe.cliente_id = c.cliente_id
INNER JOIN estado_pedidos ep ON pe.id_estado = ep.id
WHERE pe.costo_envio > 5000 
  AND ep.nombre = 'Entregado';

SELECT 
    p.nombre AS Plato, 
    p.codigo_interno, 
    cp.nombre AS Categoria
FROM plato p
INNER JOIN categoria_plato cp ON p.categoria_plato_id = cp.categoria_plato_id
INNER JOIN estado_plato ep ON p.estado_id = ep.id
WHERE ep.nombre = 'Agotado';

CREATE VIEW vista_ubicacion_restaurantes AS
SELECT 
    r.nombre_comercial AS Restaurante, 
    c.nombre AS Ciudad, 
    d.nombre AS Departamento
FROM restaurante r
INNER JOIN ciudades c ON r.id_ciudad = c.id
INNER JOIN departamentos d ON c.id_departamento = d.id;

SELECT 
    p.nombre AS Nombre_Plato, 
    cp.nombre AS Categoria
FROM plato p
INNER JOIN categoria_plato cp ON p.categoria_plato_id = cp.categoria_plato_id;

SELECT * FROM vista_ubicacion_restaurantes;

SELECT 
    nombres, 
    apellidos, 
    correo_electronico
FROM cliente
WHERE id_estado = (SELECT id FROM estado_cliente WHERE nombre = 'Activo');

SELECT 
    cp.nombre AS Categoria, 
    COUNT(p.plato_id) AS Total_Platos
FROM categoria_plato cp
LEFT JOIN plato p ON cp.categoria_plato_id = p.categoria_plato_id
GROUP BY cp.nombre;

SELECT 
    r.nombre_comercial AS Restaurante, 
    pe.pedido_id AS ID_Pedido, 
    pe.fecha_pedido AS Fecha, 
    CONCAT(c.nombres, ' ', c.apellidos) AS Cliente
FROM pedido pe
INNER JOIN restaurante r ON pe.restaurante_id = r.restaurante_id
INNER JOIN cliente c ON pe.cliente_id = c.cliente_id
ORDER BY r.nombre_comercial, pe.fecha_pedido DESC;

SELECT 
    DATE_FORMAT(pe.fecha_pedido, '%Y-%m') AS Mes, 
    SUM(dp.cantidad_unitario * dp.precio_unitario) AS Total_Ventas
FROM pedido pe
INNER JOIN detalle_pedido dp ON pe.pedido_id = dp.pedido_id
GROUP BY Mes;

SELECT 
    r.nombre_comercial AS Restaurante, 
    p.nombre AS Plato, 
    SUM(dp.cantidad_unitario) AS Cantidad_Vendida
FROM restaurante r
INNER JOIN pedido pe ON r.restaurante_id = pe.restaurante_id
INNER JOIN detalle_pedido dp ON pe.pedido_id = dp.pedido_id
INNER JOIN plato p ON dp.plato_id = p.plato_id
GROUP BY r.nombre_comercial, p.nombre
ORDER BY Cantidad_Vendida DESC;

SELECT 
    CONCAT(e.nombres, ' ', e.apellidos) AS Empleado, 
    he.dia_de_semana, 
    he.horario_inicio
FROM empleado e
INNER JOIN horario_empleados he ON e.empleado_id = he.id_empleado
WHERE he.horario_inicio BETWEEN '08:00:00' AND '10:00:00';

SELECT 
    pe.pedido_id, 
    CONCAT(c.nombres, ' ', c.apellidos) AS Cliente, 
    pe.costo_envio, 
    ep.nombre AS Estado
FROM pedido pe
INNER JOIN cliente c ON pe.cliente_id = c.cliente_id
INNER JOIN estado_pedidos ep ON pe.id_estado = ep.id
WHERE pe.costo_envio > 5000 
  AND ep.nombre = 'Entregado';

SELECT 
    p.nombre AS Plato, 
    p.codigo_interno, 
    cp.nombre AS Categoria
FROM plato p
INNER JOIN categoria_plato cp ON p.categoria_plato_id = cp.categoria_plato_id
INNER JOIN estado_plato ep ON p.estado_id = ep.id
WHERE ep.nombre = 'Agotado';