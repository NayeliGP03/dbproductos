SELECT * FROM productos;

SELECT codigo, nombre, precio_unitario FROM productos;

SELECT * FROM clientes;

SELECT * FROM proveedor;

SELECT * FROM adquiere;

SELECT
    *
FROM
    clientes,productos,adquiere
WHERE
    clientes.id = adquiere.id_cliente AND productos.codigo = adquiere.codigo_producto;


SELECT
    c.nombre, p.nombre, p.precio_unitario 
FROM
    clientes c
INNER JOIN
    adquiere a ON a.id_cliente = c.id
INNER JOIN
    productos p ON p.codigo = a.codigo_producto