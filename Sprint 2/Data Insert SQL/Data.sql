INSERT INTO departamentos (nombre) VALUES 
('Atlántico'), 

('Bolívar'), 

('Magdalena'), 

('Antioquia');


INSERT INTO ciudades (nombre, id_departamento) VALUES 
('Barranquilla', 1), 

('Soledad', 1), 

('Puerto Colombia', 1), 

('Cartagena', 2), 

('Santa Marta', 3), 

('Medellín', 4);


INSERT INTO tipo_de_documento (nombre, descripcion) VALUES 
('CC', 'Cédula de Ciudadanía Colombiana'), 

('CE', 'Cédula de Extranjería');


INSERT INTO estado_cliente (nombre, descripcion) VALUES 
('Activo', 'Usuario con permisos de compra'), 

('Inactivo', 'Usuario bloqueado o suspendido');


INSERT INTO categoria_restaurante (nombre, descripcion) VALUES 
('Sabor Local', 'Cocina tradicional de la Costa Caribe'), 

('Express', 'Comidas rápidas de alta calidad'), 

('Green', 'Opciones fitness y balanceadas');


INSERT INTO estado_restaurante (nombre, descripcion) VALUES 
('Activo', 'Abierto y operando'), 

('Inactivo', 'Cerrado o en remodelación');


INSERT INTO categoria_plato (nombre, descripcion) VALUES 
('Entradas', 'Fritos y aperitivos caseros'), 

('Platos Fuertes', 'Almuerzos y cenas especializadas'), 

('Bebidas', 'Jugos naturales y café de origen');


INSERT INTO estado_plato (nombre, descripcion) VALUES 
('Disponible', 'Plato con insumos completos'), 

('Agotado', 'No disponible en el menú actual');


INSERT INTO cargos (nombre, descripcion, salario_base) VALUES 
('Líder de Punto', 'Administrador general del restaurante', 2800000), 

('Chef de Cocina', 'Encargado de la producción culinaria', 1800000),

('Auxiliar Logístico', 'Apoyo en servicio y entrega', 1300000);


INSERT INTO tipo_entrega (nombre, descripcion) VALUES 
('Recogida', 'El cliente retira en el punto físico'), 

('Domicilio', 'Entrega en la dirección del cliente');


INSERT INTO estado_pedidos (nombre, descripcion) VALUES 
('En preparación', 'El pedido está siendo cocinado'), 

('En reparto', 'El motorizado está en camino'), 

('Entregado', 'El pedido llegó a su destino');


INSERT INTO metodos_de_pago (nombre, descripcion) VALUES 
('Efectivo', 'Pago manual al recibir'), 

('Transferencia', 'Pago vía Nequi o Daviplata'), 

('Tarjeta', 'Pago mediante datáfono');


INSERT INTO cliente (nombres, apellidos, id_tipo_documento, numero_documento, telefono, correo_electronico, direccion, fecha_registro, id_estado) VALUES 
('Ricardo Andrés', 'Mendoza Pertuz', 1, '1.140.895.442', '3004552188', 'ricardo.mendoza@unisimon.edu.co', 'Cra 46 #84-120, Barranquilla', '2023-01-15', 1),

('Valentina Rosa', 'Guzmán Castro', 1, '1.045.332.119', '3157884432', 'valentina.guzman@unisimon.edu.co', 'Calle 72 #53-45, Barranquilla', '2023-02-10', 1),

('Gustavo Adolfo', 'Sarmiento Polo', 1, '72.334.112', '3106652231', 'gustavo.sarmiento@unisimon.edu.co', 'Cra 54 #59-140, Barranquilla', '2023-03-05', 1),

('Beatriz Helena', 'Villalobos Rico', 1, '32.887.445', '3017774455', 'beatriz.villalobos@unisimon.edu.co', 'Calle 98 #52-10, Barranquilla', '2023-04-12', 1),

('Mateo Sebastián', 'Díaz Granados', 1, '1.129.556.778', '3188894422', 'mateo.diaz@unisimon.edu.co', 'Cra 43 #76-20, Barranquilla', '2023-05-20', 2),

('Claudia Patricia', 'Vargas Meza', 1, '22.665.443', '3209991144', 'claudia.vargas@unisimon.edu.co', 'Calle 65 #14-22, Barrio Soledad 2000', '2023-06-15', 1),

('Felipe de Jesús', 'Cárdenas Borbón', 1, '1.042.441.990', '3043118855', 'felipe.cardenas@unisimon.edu.co', 'Cra 42G #85-112, Barranquilla', '2023-07-25', 1),

('Silvia María', 'Martínez Guerra', 1, '52.778.441', '3114227766', 'silvia.martinez@unisimon.edu.co', 'Calle 74 #47-50, Barranquilla', '2023-08-30', 1),

('Andrés David', 'Montenegro Llinás', 2, 'E-884.455.1', '3123335500', 'andres.montenegro@unisimon.edu.co', 'Calle 90 #51B-20, Barranquilla', '2023-09-10', 2),

('Paola Andrea', 'Solano Jiménez', 1, '1.143.990.221', '3002229988', 'paola.solano@unisimon.edu.co', 'Carrera 15 #20-44, Villa Campestre', '2023-10-05', 1);


INSERT INTO restaurante (nombre_comercial, razon_social, categoria_restaurante_id, propietario, nit, telefono, correo_electronico, direccion, id_ciudad, horario_apertura, horario_cierre, estado_id) VALUES 
('La Esquina del Sabor', 'Inversiones Bolívar SAS', 1, 'Luis Carlos Herazo', '900.122.344-1', '3441010', 'admin@esquinasabor.com.co', 'Calle 58 #54-10, Sede Bolívar', 1, '07:00:00', '19:00:00', 1),

('Parrilla Buen Corte', 'Asados del Norte SAS', 2, 'Jorge Eliecer Tatis', '901.445.667-2', '3502020', 'ventas@buencorte.co', 'Cra 53 #75-12, Barranquilla', 1, '11:00:00', '22:00:00', 1),

('Pasta Grado de Honor', 'Alimentos de Italia SAS', 3, 'Antonio Rossi', '890.334.112-5', '3853030', 'gerencia@gradohonor.co', 'Cra 54 #59-02, El Prado', 1, '11:30:00', '21:00:00', 1),

('Sazón de la Abuela', 'Tradición Soledad SAS', 1, 'Marta Lucía Solano', '900.556.889-4', '3445050', 'marta@sazonabuela.com', 'Calle 30 #22-10, Soledad', 2, '08:00:00', '17:00:00', 1),

('Burger Station 72', 'Estación Food SAS', 2, 'Camilo Andrés Pava', '900.887.112-9', '3104455', 'burger72@comercio.co', 'Calle 72 #46-15, Barranquilla', 1, '16:00:00', '23:30:00', 1),

('Wok & Roll Caribe', 'Oriental Star SAS', 2, 'Ying Chen Wang', '901.223.554-0', '3224040', 'info@wokroll.com.co', 'Calle 84 #51B-05, Barranquilla', 1, '11:30:00', '22:30:00', 1),

('Ensaladas y Punto', 'Green Food Solutions SAS', 3, 'Paola Vergara Solís', '900.112.556-3', '3008877', 'paola@ensaladasypunto.com', 'Cra 51B #94-12, Barranquilla', 1, '09:00:00', '20:00:00', 1),

('Mar Azul Cartagena', 'Frutos del Mar SAS', 1, 'Marina Solano Rico', '800.114.223-8', '3115566', 'gerencia@marazul.co', 'Bocagrande, Calle 6 #3-22, Cartagena', 4, '11:00:00', '20:00:00', 1),

('Café del Campus USB', 'Operadora Servicios SAS', 3, 'Andrés Felipe Arrieta', '890.223.114-1', '3448080', 'cafeteria.campus@unisimon.edu.co', 'Cra 54 #59-102, Sede principal', 1, '06:30:00', '18:30:00', 1),

('Taco Bolivariano', 'Mexican Flavors SAS', 2, 'Luis Hernández G.', '900.334.665-7', '3507070', 'luis@tacosbolivariano.co', 'Cra 50 #55-12, Barrio Abajo', 1, '12:00:00', '22:00:00', 1);


INSERT INTO empleado (restaurante_id, nombres, apellidos, id_cargo, telefono, correo_electronico, fecha_contratacion, activo) VALUES 
(1, 'Alberto Manuel', 'Casas Frías', 1, '3008891122', 'alberto.casas@staff.unisimon.edu.co', '2023-01-10', 1),

(1, 'Beatriz Elena', 'Pino Suárez', 2, '3114452233', 'beatriz.pino@staff.unisimon.edu.co', '2023-02-15', 1),

(2, 'Cesar Augusto', 'Mora Valbuena', 1, '3157783344', 'cesar.mora@staff.unisimon.edu.co', '2023-03-20', 1),

(2, 'Isabel Cristina', 'Beltrán Luz', 2, '3002234455', 'isabel.beltran@staff.unisimon.edu.co', '2023-04-05', 1),

(3, 'Francisco Javier', 'Vidal Llanos', 1, '3205565566', 'francisco.vidal@staff.unisimon.edu.co', '2023-05-12', 1),

(4, 'Fabio Andrés', 'Galán Mercado', 2, '3046676677', 'fabio.galan@staff.unisimon.edu.co', '2023-06-20', 1),

(5, 'Gina Marcela', 'Rojas Peñaloza', 1, '3118897788', 'gina.rojas@staff.unisimon.edu.co', '2023-07-01', 1),

(6, 'Hugo Armando', 'Tatis Vergara', 2, '3004458899', 'hugo.tatis@staff.unisimon.edu.co', '2023-08-15', 1),

(7, 'Iván de Jesús', 'Buelvas Arrieta', 1, '3152239911', 'ivan.buelvas@staff.unisimon.edu.co', '2024-01-10', 1),

(8, 'Andrea Julia', 'Nieto Cardona', 2, '3207780011', 'andrea.nieto@staff.unisimon.edu.co', '2024-02-01', 1);


INSERT INTO horario_empleados (id_empleado, dia_de_semana, horario_inicio, horario_fin) VALUES 
(1, 'Lunes', '08:00:00', '16:00:00'),

(2, 'Martes', '09:00:00', '17:00:00'),

(3, 'Miércoles', '08:00:00', '16:00:00'),

(4, 'Jueves', '10:00:00', '18:00:00'),

(5, 'Viernes', '08:00:00', '16:00:00'),

(6, 'Sábado', '09:00:00', '15:00:00'),

(7, 'Lunes', '12:00:00', '20:00:00'),

(8, 'Martes', '08:00:00', '16:00:00'),

(9, 'Miércoles', '10:00:00', '18:00:00'),

(10, 'Jueves', '09:00:00', '17:00:00');


INSERT INTO plato (nombre, descripcion, categoria_plato_id, costo, tiempo_preparacion_min, codigo_interno, imagen_url, disponible, estado_id, orden_visual) VALUES 
('Hamburguesa La Simón', 'Res 150g, queso costeño, suero y cebolla caramelizada', 2, 24500, 15, 'HAM-BK-01', 'https://[Log in to view URL]', 1, 1, 1),

('Arroz con Pollo Criollo', 'Receta tradicional con verduras picadas y papas a la francesa', 2, 18500, 20, 'ARR-PL-02', 'https://[Log in to view URL]', 1, 1, 2),

('Pizza Pepperoni Familiar', 'Masa artesanal delgada, mozzarella y pepperoni madurado', 2, 38000, 25, 'PIZ-FAM-03', 'https://[Log in to view URL]', 0, 2, 3),

('Pasta Carbonara USB', 'Penne en salsa blanca artesanal, tocineta y parmesano', 2, 29000, 18, 'PAS-USB-04', 'https://[Log in to view URL]', 1, 1, 4),

('Tacos de Pastor x3', 'Tortilla de maíz artesanal, cerdo al achiote y piña fresca', 2, 21000, 12, 'TAC-MEX-05', 'https://[Log in to view URL]', 1, 1, 5),

('Bowl Fitness Campus', 'Mix de lechugas, pechuga a la plancha, quinua y aguacate', 1, 23500, 15, 'BWL-FIT-06', 'https://[Log in to view URL]', 1, 1, 6),

('Limonada de Coco', 'Granizado natural preparado con crema de coco real', 3, 11500, 8, 'BEB-LIMO-07', 'https://[Log in to view URL]', 1, 1, 7),

('Punta de Anca 300g', 'Corte de res a la parrilla servido con yuca frita y guiso', 2, 45000, 25, 'CAR-PNT-08', 'https://[Log in to view URL]', 0, 2, 8),

('Deditos de Queso x6', 'Pasabocas fritos rellenos de queso costeño derretido', 1, 14000, 10, 'ENT-DED-09', 'https://[Log in to view URL]', 1, 1, 9),

('Cappuccino 12oz', 'Café espresso especial con leche vaporizada y espuma cremosa', 3, 7500, 5, 'CAF-CP-10', 'https://[Log in to view URL]', 1, 1, 10);


INSERT INTO pedido (cliente_id, restaurante_id, fecha_pedido, id_tipo_entrega, direccion_entrega, id_estado, impuesto, costo_envio, descuento, id_metodo_pago, observaciones) VALUES 
(1, 1, '2024-05-20 12:30:00', 1, 'Sede Bolívar USB, Bloque C, Pasillo 4', 3, 1900, 0, 0, 1, 'Sin cebolla por favor'),

(2, 2, '2024-05-20 13:00:00', 2, 'Calle 72 #53-45, Edificio Gran Parada Apto 402', 3, 2500, 6500, 1000, 2, 'Tocar el timbre al llegar'),

(3, 3, '2024-05-21 12:15:00', 1, 'Biblioteca USB Central, Segundo Piso', 3, 3200, 0, 0, 3, 'Entregar en la recepción'),

(4, 4, '2024-05-21 14:00:00', 2, 'Cra 45 con Murillo, Estación Transmetro', 1, 1500, 5000, 0, 1, 'Llamar al celular antes de subir'),

(5, 5, '2024-05-22 18:30:00', 2, 'Cra 43 #76-20, Portería Principal', 3, 2200, 3500, 2000, 2, 'Dejar en la recepción de portería'),

(6, 6, '2024-05-22 10:00:00', 2, 'Manzana 4 Lote 12, Barrio Soledad 2000', 1, 1200, 6000, 0, 3, 'Casa de rejas blancas'),

(7, 7, '2024-05-23 11:45:00', 1, 'Sede Posgrados USB, Bloque D', 3, 1800, 0, 0, 1, 'Entregar al vigilante de turno'),

(8, 8, '2024-05-23 13:20:00', 2, 'Bocagrande, Hotel Decameron Cartagena', 3, 3500, 5000, 0, 2, 'Entregar en el Lobby principal'),

(9, 9, '2024-05-24 19:00:00', 2, 'Calle 98 #53-20, Torre 2 Apto 501', 2, 4000, 4000, 1000, 3, 'Entrada por el parqueadero'),

(10, 10, '2024-05-24 09:30:00', 2, 'Villa Campestre, Frente a la iglesia parroquial', 3, 2100, 8000, 0, 1, 'Casa de dos pisos color crema');


INSERT INTO detalle_pedido (pedido_id, plato_id, cantidad_unitario, precio_unitario, indicaciones) VALUES 
(1, 1, 1, 24500, 'Término de la carne 3/4'),

(1, 9, 1, 14000, 'Entrada para restaurante 1'),

(1, 7, 2, 11500, 'Bebida para restaurante 1'),

(2, 2, 1, 18500, 'Sin verduras y con extra de papas fritas'),

(3, 3, 1, 38000, 'Entregar bien caliente'),

(4, 4, 1, 29000, 'Poco queso parmesano encima'),

(5, 5, 2, 21000, 'Sin picante en ninguna de las salsas'),

(6, 6, 1, 23500, 'Sin cebolla roja en el mix'),

(8, 8, 1, 45000, 'Bien asado'),

(10, 10, 1, 7500, 'Preparar con leche deslactosada por favor');