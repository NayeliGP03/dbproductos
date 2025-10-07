SELECT * FROM tickets;

SELECT * FROM agentes;

SELECT
    a.nombre, t.id, t.estado_actual
FROM
    agentes a
INNER JOIN
    tickets t ON t.id_agente = a.id

select * from historial where id_ticket=1;