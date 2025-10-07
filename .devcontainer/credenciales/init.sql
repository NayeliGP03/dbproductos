CREATE DATABASE credenciales;

-- Crear la tabla para almacenar datos de usuarios
CREATE TABLE usuarios (
 id_usuario SERIAL PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 correo VARCHAR(255) UNIQUE,
 telefono VARCHAR(15),
 fecha_nacimiento DATE
);

-- Crear la tabla para almacenar usuarios y contraseñas
CREATE TABLE credenciales (
 id_credencial SERIAL PRIMARY KEY,
 id_usuario INT NOT NULL,
 username VARCHAR(50) UNIQUE NOT NULL,
 password_hash VARCHAR(255) NOT NULL,
 FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
);

-- Crear la tabla de puestos
CREATE TABLE puestos (
    id_puesto SERIAL PRIMARY KEY,
    puesto VARCHAR(250) NOT NULL UNIQUE
);

-- Agregar la columna id_puesto a la tabla usuarios
ALTER TABLE usuarios ADD COLUMN id_puesto INT;

-- Establecer la clave foránea
ALTER TABLE usuarios ADD CONSTRAINT fk_usuario_puesto
FOREIGN KEY (id_puesto) REFERENCES puestos (id_puesto)
ON DELETE SET NULL; -- Si un puesto se elimina, el id_puesto del usuario es NULL.