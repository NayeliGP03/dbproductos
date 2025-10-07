CREATE DATABASE tickets;

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    tipo_cliente VARCHAR(100),
    telefono VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE agentes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE tickets (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR (50),
    descripcion VARCHAR(250),
    fecha_creacion DATE,
    estado_actual VARCHAR (50),
    id_cliente INT,
    id_agente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (id_agente) REFERENCES agentes (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


CREATE TABLE historial (
    id SERIAL PRIMARY KEY,
    estado VARCHAR(50),
    fecha DATE,
    comentarios VARCHAR(200),
    id_agente INT,
    id_ticket INT,
    FOREIGN KEY (id_agente) REFERENCES agentes (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (id_ticket) REFERENCES tickets (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)