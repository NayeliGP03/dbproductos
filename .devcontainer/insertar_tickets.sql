INSERT INTO clientes (nombre, tipo_cliente, telefono, email)
SELECT
    CASE floor(random() * 5)
        WHEN 0 THEN 'Carlos '
        WHEN 1 THEN 'Elena '
        WHEN 2 THEN 'Javier '
        WHEN 3 THEN 'Sofia '
        ELSE 'Miguel '
    END || 'Pérez ' || i,
    CASE floor(random() * 3)
        WHEN 0 THEN 'Premium'
        WHEN 1 THEN 'Empresarial'
        ELSE 'Estándar'
    END,
    '555-' || lpad((floor(random() * 9999) + 1000)::text, 4, '0'),
    'cliente' || i || '@dominio.com'
FROM generate_series(1, 50) AS i;

INSERT INTO agentes (nombre, email)
SELECT
    'Agente ' || chr(64 + ((i - 1) / 26) + 1) || chr(64 + ((i - 1) % 26) + 1), -- Nombres como Agente AB, Agente AC...
    'agente' || i || '@ticketsystem.com'
FROM generate_series(1, 50) AS i;

INSERT INTO tickets (categoria, descripcion, fecha_creacion, estado_actual, id_cliente, id_agente)
SELECT
    CASE floor(random() * 5)
        WHEN 0 THEN 'Fallo de Pago'
        WHEN 1 THEN 'Problema de Acceso'
        WHEN 2 THEN 'Reporte de Bug'
        WHEN 3 THEN 'Consulta General'
        ELSE 'Solicitud de Función'
    END,
    'Descripción del ticket N°' || i || '. El usuario reporta un problema.',
    (DATE '2024-01-01' + (floor(random() * 274) * interval '1 day'))::date, -- Fecha entre 2024-01-01 y 2024-09-30
    CASE floor(random() * 3)
        WHEN 0 THEN 'Abierto'
        WHEN 1 THEN 'En Progreso'
        ELSE 'Cerrado'
    END,
    (floor(random() * 50) + 1), -- id_cliente aleatorio (1-50)
    (floor(random() * 50) + 1)  -- id_agente aleatorio (1-50)
FROM generate_series(1, 50) AS i;

INSERT INTO historial (estado, fecha, comentarios, id_agente, id_ticket)
SELECT
    CASE floor(random() * 3)
        WHEN 0 THEN 'Asignado'
        WHEN 1 THEN 'Comentario Agente'
        ELSE 'Resuelto'
    END,
    (DATE '2024-01-01' + (floor(random() * 274) * interval '1 day'))::date, -- Fecha entre 2024-01-01 y 2024-09-30
    'Actualización sobre el estado del ticket ' || i,
    (floor(random() * 50) + 1), -- id_agente aleatorio (1-50)
    (floor(random() * 50) + 1)  -- id_ticket aleatorio (1-50)
FROM generate_series(1, 50) AS i;