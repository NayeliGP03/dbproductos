/* Insertar en proveedor */
INSERT INTO proveedor (NIF, nombre, direccion) VALUES ('QWEFGTYG', 'Cavasos', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG2', 'Cavasos', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG3', 'Corona', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG4', 'Radioshack', 'Algun lugar');

select * from proveedor;

/* Insertar en clientes */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('José', 'Perez Soto', 'Algun lugar 30784', '1997-09-26'); /* 1 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Jorge', 'Sanchez', 'Algun lugar 30784', '1997-09-26');   /* 2 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Ignacio', 'Rivero', 'Algun lugar 30784', '1997-09-26');  /* 3 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Carlos', 'Rodriguez', 'Algun lugar 30784', '1997-09-26');/* 4 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Carlos', 'Rodriguez', 'Algun lugar 30784', '1997-09-26');/* 5 */

/* Insertar en productos */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 7999, 'Monitor 55inch', 'QWEFGTYG4');       /* 1 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 250, 'casillero 30 huevos', 'QWEFGTYG2');   /* 2 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 250, 'sixpack corona', 'QWEFGTYG3');        /* 3 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 1500, 'Mouse Logitech', 'QWEFGTYG4');        /* 4 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 899, 'Tarjeta de red TPLink', 'QWEFGTYG4');        /* 5 */

select * from productos

/* Insertar en adquiere */
INSERT INTO adquiere VALUES (1, 1);
INSERT INTO adquiere VALUES (2, 1);
INSERT INTO adquiere VALUES (4, 3);
INSERT INTO adquiere VALUES (5, 2);
INSERT INTO adquiere VALUES (3, 5);

alter table adquiere add column fecha_compra DATE;

SELECT * FROM adquiere;

/*Ejercicios Insertar */
INSERT INTO proveedor (NIF, nombre, direccion) VALUES ('QWEFGTYG5', 'Bimbo', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG6', 'Wonder', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG7', 'Modelo', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG8', 'Sanbritas', 'Algun lugar');
INSERT INTO proveedor VALUES ('QWEFGTYG9', 'Bonafont', 'Algun lugar');

INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Ema', 'Delgado', 'Algun lugar 30785', '1990-09-26'); /* 6 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Ben', 'Sosa', 'Algun lugar 30786', '1991-09-26');   /* 7 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Nay', 'Palmerin', 'Algun lugar 30787', '1992-09-26');  /* 8 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Josefa', 'Ortiz', 'Algun lugar 30788', '1993-09-26');/* 9 */
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento) VALUES ('Lorenza', 'Dominguez', 'Algun lugar 30789', '1994-09-26');/* 10 */

INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 578, 'donitas', 'QWEFGTYG5');       /* 6 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 945, 'pan blanco', 'QWEFGTYG6');   /* 7 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 878, 'sixpack modelo', 'QWEFGTYG7');        /* 8 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 897, 'papas', 'QWEFGTYG8');        /* 9 */
INSERT INTO productos (precio_unitario, nombre, NIF_proveedor) VALUES ( 879, 'reja agua', 'QWEFGTYG9');        /* 10 */

INSERT INTO adquiere VALUES (6, 6);
INSERT INTO adquiere VALUES (7, 7);
INSERT INTO adquiere VALUES (8, 8);
INSERT INTO adquiere VALUES (9, 9);
INSERT INTO adquiere VALUES (10, 10);

DELETE
DELETE FROM clientes WHERE id=1

/*registros IA*/
INSERT INTO proveedor (NIF, nombre, direccion)
VALUES
('A12345678', 'Distribuidora Alfa', 'Calle Mayor 10, Madrid'),
('B23456789', 'Suministros Beta', 'Avenida Central 25, Barcelona'),
('C34567890', 'Mayorista Gamma', 'Plaza del Sol 3, Valencia'),
('D45678901', 'Logistica Delta', 'Rua da Prata 50, Sevilla'),
('E56789012', 'Insumos Epsilon', 'Paseo de Gracia 100, Bilbao'),
('F67890123', 'Comercial Zeta', 'Calle de Toledo 8, Zaragoza'),
('G78901234', 'Provedor Eta', 'Gran Vía 1, Málaga'),
('H89012345', 'Tienda Theta', 'Alameda Principal 45, Murcia'),
('I90123456', 'Almacen Iota', 'Via Laietana 7, Palma'),
('J01234567', 'Factor Kapa', 'Calle Larga 15, Las Palmas'),
('K12300001', 'Proveedor K-1', 'Calle Falsa 123, Ciudad A'),
('L23400002', 'Luminarias L', 'Avenida Siempreviva 42, Pueblo B'),
('M34500003', 'Materiales M', 'Boulevard del Rio 99, Villa C'),
('N45600004', 'Net Solutions', 'Calle 13, N° 4-20, Ciudad D'),
('O56700005', 'Oficina Total', 'Carrera 7, N° 10-50, Pueblo E'),
('P67800006', 'Plasticos P', 'Avenida Libertador, Sector X'),
('Q78900007', 'Quimicos Q', 'Diagonal 68, Ciudad F'),
('R89000008', 'Refrigeracion R', 'Calle del Olvido, N° 1-1, Villa G'),
('S90100009', 'Sistemas S', 'Plaza Central, Local 5, Ciudad H'),
('T01200010', 'Telas T', 'Vereda del Lago, Finca 1, Pueblo I'),
('U12300011', 'Uniformes U', 'Calle 45, Edificio Z, Ciudad J'),
('V23400012', 'Vidrios V', 'Avenida de la Montaña, 1000, Villa K'),
('W34500013', 'Webworks W', 'Paseo Maritimo, Local 33, Ciudad L'),
('X45600014', 'Xilografias X', 'Carretera Vieja, Km 5, Pueblo M'),
('Y56700015', 'Yogures Y', 'Callejón del Gato, 8, Villa N'),
('Z67800016', 'Zapatos Z', 'Ruta 33, Parcela 15, Ciudad O'),
('A00100017', 'Agropecuaria A', 'Avenida del Campo, 20, Pueblo P'),
('B00200018', 'Bicicletas B', 'Calle de la Bici, 1, Villa Q'),
('C00300019', 'Construcciones C', 'Obra Blanca, N° 100, Ciudad R'),
('D00400020', 'Dulces D', 'Panaderia Central, 5, Pueblo S'),
('E00500021', 'Electricos E', 'Zona Industrial, Nave 2, Villa T'),
('F00600022', 'Ferretaria F', 'Av. del Clavo, 77, Ciudad U'),
('G00700023', 'Gasolineras G', 'Estacion de Servicio, Km 10, Pueblo V'),
('H00800024', 'Herramientas H', 'Taller Mecanico, 3, Villa W'),
('I00900025', 'Impresoras I', 'Centro de Copiado, 9, Ciudad X'),
('J01000026', 'Joyeria J', 'Centro Comercial, Local 50, Pueblo Y'),
('K01100027', 'Kioscos K', 'Esquina Feliz, 1, Villa Z'),
('L01200028', 'Libreria L', 'Calle de los Libros, 1, Ciudad AA'),
('M01300029', 'Muebles M', 'Fabrica de Muebles, 2, Pueblo BB'),
('N01400030', 'Neumaticos N', 'Tienda de Ruedas, 4, Villa CC'),
('O01500031', 'Opticas O', 'Centro Visual, 6, Ciudad DD'),
('P01600032', 'Peluqueria P', 'Salon de Belleza, 8, Pueblo EE'),
('Q01700033', 'Quesos Q', 'Lacteos de la Granja, 10, Villa FF'),
('R01800034', 'Repuestos R', 'Tienda de Partes, 12, Ciudad GG'),
('S01900035', 'Supermercados S', 'Mercado Grande, 14, Pueblo HH'),
('T02000036', 'Tejidos T', 'Almacen de Telas, 16, Villa II'),
('U02100037', 'Utiles U', 'Papeleria Escolar, 18, Ciudad JJ'),
('V02200038', 'Veterinaria V', 'Clinica Animal, 20, Pueblo KK'),
('W02300039', 'Vinos W', 'Bodega Fina, 22, Villa LL'),
('X02400040', 'Xerox X', 'Fotocopiadora Rapida, 24, Ciudad MM');

-- Registros adicionales (para llegar a 50)
INSERT INTO proveedor (NIF, nombre, direccion)
SELECT
    'NIF' || lpad(i::text, 5, '0'),
    'Proveedor Genérico ' || i,
    'Direccion Ficticia ' || i
FROM generate_series(41, 50) AS i;

INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento)
VALUES
('Juan', 'Perez Garcia', 'Calle Falsa 123, Madrid', '1985-05-15'),
('Maria', 'Lopez Fernandez', 'Av. del Sol 45, Barcelona', '1990-10-20'),
('Carlos', 'Sanchez Rodriguez', 'Paseo de las Flores 8, Valencia', '1978-03-01'),
('Ana', 'Gomez Martin', 'Rua Mayor 10, Sevilla', '1995-12-25'),
('Pedro', 'Ruiz Jimenez', 'Gran Vía 50, Bilbao', '1982-07-10'),
('Laura', 'Diaz Hernandez', 'Callejón Oscuro 3, Zaragoza', '2000-01-05'),
('Javier', 'Torres Cano', 'Plaza Nueva 1, Málaga', '1975-11-30'),
('Sara', 'Vazquez Gil', 'Av. Libertad 22, Murcia', '1988-04-12'),
('Manuel', 'Ramos Castro', 'Carrer de la Creu 6, Palma', '1993-09-18'),
('Elena', 'Marin Soto', 'Calle Larga 5, Las Palmas', '1980-02-28');

-- 40 Registros adicionales generados con datos ficticios
INSERT INTO clientes (nombre, apellidos, direccion, fecha_nacimiento)
SELECT
    CASE floor(random() * 5)
        WHEN 0 THEN 'Ricardo'
        WHEN 1 THEN 'Patricia'
        WHEN 2 THEN 'Alejandro'
        WHEN 3 THEN 'Beatriz'
        ELSE 'Roberto'
    END,
    'Apellido Generado ' || i,
    'Direccion Clte ' || i || ', Ciudad Gen',
    (DATE '1970-01-01' + (floor(random() * 10957) * interval '1 day'))::date -- Fecha aleatoria entre 1970 y 2000
FROM generate_series(11, 50) AS i;

-- Lista de 50 NIFs (ajustar si los NIFs reales son diferentes, aquí usamos los generados)
-- Se asume que los 50 NIFs de la tabla proveedor están insertados.
WITH NIF_list AS (
    SELECT NIF, ROW_NUMBER() OVER () as rn
    FROM proveedor
    LIMIT 50
)

-- Lista de 50 NIFs (ajustar si los NIFs reales son diferentes, aquí usamos los generados)
-- Se asume que los 50 NIFs de la tabla proveedor están insertados.
WITH NIF_list AS (
    SELECT NIF, ROW_NUMBER() OVER () as rn
    FROM proveedor
    LIMIT 50
)

-- 50 Registros para la Tabla productos

WITH NIF_list AS (
    -- Esta subconsulta obtiene los 50 NIFs existentes en la tabla proveedor
    -- y les asigna un número de fila (rn) para poder hacer el JOIN cíclico.
    SELECT NIF, ROW_NUMBER() OVER (ORDER BY NIF) as rn
    FROM proveedor
    LIMIT 50
)
INSERT INTO productos (nombre, precio_unitario, NIF_proveedor)
SELECT
    'Producto Fantasia ' || i,
    (50 + floor(random() * 450)) * 10, -- Precio entre 500 y 5000 (en incrementos de 10)
    NIF_list.NIF
FROM generate_series(1, 50) AS i
JOIN NIF_list ON NIF_list.rn = ((i - 1) % 50) + 1; -- Asigna NIFs cíclicamente (1, 2, ..., 50, 1, 2, ...)

-- Se asume que los IDs de clientes y códigos de productos están insertados y van de 1 a 50.
-- La columna fecha_compra se utiliza gracias al ALTER TABLE proporcionado.
INSERT INTO adquiere (codigo_producto, id_cliente, fecha_compra)
SELECT
    (floor(random() * 50) + 1), -- codigo_producto aleatorio entre 1 y 50
    (floor(random() * 50) + 1), -- id_cliente aleatorio entre 1 y 50
    (DATE '2023-01-01' + (floor(random() * 547) * interval '1 day'))::date -- Fecha de compra aleatoria entre 2023-01-01 y 2024-06-30
FROM generate_series(1, 50);