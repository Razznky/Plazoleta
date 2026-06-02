CREATE TABLE departamentos (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL UNIQUE,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE ciudades (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  id_departamento INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_ciudad_depto FOREIGN KEY (id_departamento) REFERENCES departamentos(id)
) ENGINE=InnoDB;

CREATE TABLE tipo_de_documento (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE categoria_restaurante (
  categoria_restaurante_id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(220) NOT NULL,
  PRIMARY KEY (categoria_restaurante_id)
) ENGINE=InnoDB;

CREATE TABLE estado_restaurante (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE restaurante (
  restaurante_id INT NOT NULL AUTO_INCREMENT,
  nombre_comercial VARCHAR(150) NOT NULL,
  razon_social VARCHAR(180) NOT NULL,
  propietario VARCHAR(140) NOT NULL,
  nit VARCHAR(30) NOT NULL UNIQUE,
  telefono VARCHAR(25) NOT NULL,
  correo_electronico VARCHAR(120) NOT NULL UNIQUE,
  direccion VARCHAR(180) NOT NULL,
  horario_apertura TIME NOT NULL,
  horario_cierre TIME NOT NULL,
  categoria_restaurante_id INT NOT NULL,
  id_ciudad INT NOT NULL,
  estado_id INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (restaurante_id),
  CONSTRAINT fk_res_cat FOREIGN KEY (categoria_restaurante_id) REFERENCES categoria_restaurante(categoria_restaurante_id),
  CONSTRAINT fk_res_ciu FOREIGN KEY (id_ciudad) REFERENCES ciudades(id),
  CONSTRAINT fk_res_est FOREIGN KEY (estado_id) REFERENCES estado_restaurante(id)
) ENGINE=InnoDB;

CREATE TABLE estado_cliente (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE cliente (
  cliente_id INT NOT NULL AUTO_INCREMENT,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  numero_documento VARCHAR(30) NOT NULL UNIQUE,
  telefono VARCHAR(25) NOT NULL,
  correo_electronico VARCHAR(120) NOT NULL UNIQUE,
  direccion VARCHAR(180) NOT NULL,
  fecha_registro DATE NOT NULL,
  id_tipo_documento INT NOT NULL,
  id_estado INT NOT NULL,
  PRIMARY KEY (cliente_id),
  CONSTRAINT fk_cli_doc FOREIGN KEY (id_tipo_documento) REFERENCES tipo_de_documento(id),
  CONSTRAINT fk_cli_est FOREIGN KEY (id_estado) REFERENCES estado_cliente(id)
) ENGINE=InnoDB;

CREATE TABLE cargos (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  salario_base DECIMAL(12,2) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE empleado (
  empleado_id INT NOT NULL AUTO_INCREMENT,
  nombres VARCHAR(100) NOT NULL,
  apellidos VARCHAR(100) NOT NULL,
  telefono VARCHAR(25) NOT NULL,
  correo_electronico VARCHAR(120) NOT NULL UNIQUE,
  fecha_contratacion DATE NOT NULL,
  activo TINYINT(1) NOT NULL DEFAULT 1,
  restaurante_id INT NOT NULL,
  id_cargo INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (empleado_id),
  CONSTRAINT fk_emp_res FOREIGN KEY (restaurante_id) REFERENCES restaurante(restaurante_id),
  CONSTRAINT fk_emp_car FOREIGN KEY (id_cargo) REFERENCES cargos(id)
) ENGINE=InnoDB;

CREATE TABLE horario_empleados (
  id INT NOT NULL AUTO_INCREMENT,
  dia_de_semana VARCHAR(255) NOT NULL,
  horario_inicio TIME NOT NULL,
  horario_fin TIME NOT NULL,
  id_empleado INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_hor_emp FOREIGN KEY (id_empleado) REFERENCES empleado(empleado_id)
) ENGINE=InnoDB;

CREATE TABLE categoria_plato (
  categoria_plato_id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(220) NOT NULL,
  PRIMARY KEY (categoria_plato_id)
) ENGINE=InnoDB;

CREATE TABLE estado_plato (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE plato (
  plato_id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(140) NOT NULL,
  descripcion VARCHAR(250) NOT NULL,
  costo DECIMAL(10,2) NOT NULL,
  tiempo_preparacion_min INT NOT NULL,
  codigo_interno VARCHAR(40) NOT NULL UNIQUE,
  imagen_url VARCHAR(255) NOT NULL,
  disponible TINYINT(1) NOT NULL DEFAULT 1,
  orden_visual INT NOT NULL,
  categoria_plato_id INT NOT NULL,
  estado_id INT NOT NULL,
  PRIMARY KEY (plato_id),
  CONSTRAINT fk_pla_cat FOREIGN KEY (categoria_plato_id) REFERENCES categoria_plato(categoria_plato_id),
  CONSTRAINT fk_pla_est FOREIGN KEY (estado_id) REFERENCES estado_plato(id)
) ENGINE=InnoDB;

CREATE TABLE tipo_de_ingrediente (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE ingredientes (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  id_tipo_ingrediente INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_ing_tipo FOREIGN KEY (id_tipo_ingrediente) REFERENCES tipo_de_ingrediente(id)
) ENGINE=InnoDB;

CREATE TABLE ingredientes_requeridos (
  id INT NOT NULL AUTO_INCREMENT,
  id_plato INT NOT NULL,
  id_ingrediente INT NOT NULL,
  cantidad_requerida INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_req_pla FOREIGN KEY (id_plato) REFERENCES plato(plato_id),
  CONSTRAINT fk_req_ing FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id)
) ENGINE=InnoDB;

CREATE TABLE existencias_de_ingredientes_en_restaurantes (
  id INT NOT NULL AUTO_INCREMENT,
  id_ingrediente INT NOT NULL,
  id_restaurante INT NOT NULL,
  cantidad_en_existencia INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_inv_ing FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id),
  CONSTRAINT fk_inv_res FOREIGN KEY (id_restaurante) REFERENCES restaurante(restaurante_id)
) ENGINE=InnoDB;

CREATE TABLE tipo_entrega (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE estado_pedidos (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE metodos_de_pago (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE pedido (
  pedido_id INT NOT NULL AUTO_INCREMENT,
  fecha_pedido DATETIME NOT NULL,
  direccion_entrega VARCHAR(180) NOT NULL,
  impuesto DECIMAL(12,2) NOT NULL DEFAULT 0,
  costo_envio DECIMAL(12,2) NOT NULL DEFAULT 0,
  descuento DECIMAL(12,2) NOT NULL DEFAULT 0,
  observaciones VARCHAR(250),
  cliente_id INT NOT NULL,
  restaurante_id INT NOT NULL,
  id_tipo_entrega INT NOT NULL,
  id_estado INT NOT NULL,
  id_metodo_pago INT NOT NULL,
  PRIMARY KEY (pedido_id),
  CONSTRAINT fk_ped_cli FOREIGN KEY (cliente_id) REFERENCES cliente(cliente_id),
  CONSTRAINT fk_ped_res FOREIGN KEY (restaurante_id) REFERENCES restaurante(restaurante_id),
  CONSTRAINT fk_ped_ent FOREIGN KEY (id_tipo_entrega) REFERENCES tipo_entrega(id),
  CONSTRAINT fk_ped_est FOREIGN KEY (id_estado) REFERENCES estado_pedidos(id),
  CONSTRAINT fk_ped_pag FOREIGN KEY (id_metodo_pago) REFERENCES metodos_de_pago(id)
) ENGINE=InnoDB;

CREATE TABLE detalle_pedido (
  detalle_pedido_id INT NOT NULL AUTO_INCREMENT,
  cantidad_unitario INT NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  indicaciones VARCHAR(200),
  pedido_id INT NOT NULL,
  plato_id INT NOT NULL,
  PRIMARY KEY (detalle_pedido_id),
  CONSTRAINT fk_det_ped FOREIGN KEY (pedido_id) REFERENCES pedido(pedido_id),
  CONSTRAINT fk_det_pla FOREIGN KEY (plato_id) REFERENCES plato(plato_id)
) ENGINE=InnoDB;