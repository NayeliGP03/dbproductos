CREATE DATABASE productosBD;

/*  Crear Tabla Proveedor  */
CREATE TABLE proveedor (
    NIF VARCHAR(100) PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL, 
    direccion VARCHAR(100) NOT NULL    
);

/*  Crear Tabla Clientes  */
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellidos VARCHAR(100),
    direccion VARCHAR(200),
    fecha_nacimiento DATE    
);

/*  Crear Tabla Productos  */
CREATE TABLE productos (
    codigo SERIAL PRIMARY KEY,
    precio_unitario INT,
    nombre VARCHAR(100),
    NIF_proveedor VARCHAR(100),
    FOREIGN KEY (NIF_proveedor) REFERENCES proveedor (NIF)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

/*  Crear Tabla adquiere  */
CREATE TABLE adquiere (
    codigo_producto INT,
    id_cliente INT,
    FOREIGN KEY (codigo_producto) REFERENCES productos (codigo),
    FOREIGN KEY (id_cliente) REFERENCES clientes (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);



/* Alteraciones */

ALTER TABLE adquiere ADD COLUMN fecha_compra DATE;

