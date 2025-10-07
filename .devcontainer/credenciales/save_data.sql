-- Insertar datos en la tabla usuarios
INSERT INTO usuarios (nombre, correo, telefono, fecha_nacimiento)
VALUES
('Juan Pérez', 'juan.perez1@example.com', '1234567890', '1985-01-15'),
('Ana Gómez', 'ana.gomez2@example.com', '1234567891', '1990-03-22'),
('Luis Martínez', 'luis.martinez3@example.com', '1234567892', '1988-07-10'),
('María López', 'maria.lopez4@example.com', '1234567893', '1992-11-05'),
('Carlos Ruiz', 'carlos.ruiz5@example.com', '1234567894', '1980-06-25'),
('Sofía Castro', 'sofia.castro6@example.com', '1234567895', '1995-02-18'),
('David Ramírez', 'david.ramirez7@example.com', '1234567896', '1983-09-09'),
('Elena Ortega', 'elena.ortega8@example.com', '1234567897', '1991-05-03'),
('Miguel Torres', 'miguel.torres9@example.com', '1234567898', '1993-12-14'),
('Laura Sánchez', 'laura.sanchez10@example.com', '1234567899', '1987-08-01'),
('Pedro Morales', 'pedro.morales11@example.com', '1234567800', '1986-04-17'),
('Clara Hernández', 'clara.hernandez12@example.com', '1234567801', '1994-06-30'),
('Jorge Rojas', 'jorge.rojas13@example.com', '1234567802', '1981-03-25'),
('Valeria Peña', 'valeria.pena14@example.com', '1234567803', '1992-01-09'),
('Andrés Romero', 'andres.romero15@example.com', '1234567804', '1989-10-12'),
('Camila Paredes', 'camila.paredes16@example.com', '1234567805', '1997-11-19'),
('Ricardo Vargas', 'ricardo.vargas17@example.com', '1234567806', '1984-07-23'),
('Daniela Flores', 'daniela.flores18@example.com', '1234567807', '1996-03-01'),
('Héctor Serrano', 'hector.serrano19@example.com', '1234567808', '1982-02-11'),
('Patricia Vega', 'patricia.vega20@example.com', '1234567809', '1990-09-05');

-- Insertar datos en la tabla credenciales
INSERT INTO credenciales (id_usuario, username, password_hash)
VALUES
(1, 'juan.perez1', 'hash_juan_perez'),
(2, 'ana.gomez2', 'hash_ana_gomez'),
(3, 'luis.martinez3', 'hash_luis_martinez'),
(4, 'maria.lopez4', 'hash_maria_lopez'),
(5, 'carlos.ruiz5', 'hash_carlos_ruiz'),
(6, 'sofia.castro6', 'hash_sofia_castro'),
(7, 'david.ramirez7', 'hash_david_ramirez'),
(8, 'elena.ortega8', 'hash_elena_ortega'),
(9, 'miguel.torres9', 'hash_miguel_torres'),
(10, 'laura.sanchez10', 'hash_laura_sanchez'),
(11, 'pedro.morales11', 'hash_pedro_morales'),
(12, 'clara.hernandez12', 'hash_clara_hernandez'),
(13, 'jorge.rojas13', 'hash_jorge_rojas'),
(14, 'valeria.pena14', 'hash_valeria_pena'),
(15, 'andres.romero15', 'hash_andres_romero'),
(16, 'camila.paredes16', 'hash_camila_paredes'),
(17, 'ricardo.vargas17', 'hash_ricardo_vargas'),
(18, 'daniela.flores18', 'hash_daniela_flores'),
(19, 'hector.serrano19', 'hash_hector_serrano'),
(20, 'patricia.vega20', 'hash_patricia_vega');

select * from usuarios;
select * from credenciales;

INSERT INTO puestos (id_puesto, puesto)
VALUES
(1, 'Gerente de Innovación y Estrategia Digital'),
(2, 'Analista Senior de Datos Cuantitativos'),
(3, 'Desarrollador Full Stack - Especialista en Node.js'),
(4, 'Diseñador de Experiencia de Usuario (UX) Senior'),
(5, 'Especialista en Marketing de Contenidos y SEO'),
(6, 'Coordinador de Logística y Cadena de Suministro'),
(7, 'Ingeniero de Cloud Computing (AWS/Azure)'),
(8, 'Técnico de Soporte de TI Nivel III'),
(9, 'Consultor de Ciberseguridad y Riesgos'),
(10, 'Director de Recursos Humanos y Talento'),
(11, 'Contador General Bilingüe'),
(12, 'Representante de Ventas B2B - Sector Tecnológico'),
(13, 'Jefe de Operaciones de Manufactura Liviana'),
(14, 'Asistente Ejecutivo de Alta Dirección'),
(15, 'Especialista en Inversiones y Mercados Financieros'),
(16, 'Editor de Video y Animación 3D'),
(17, 'Recepcionista Administrativo y Manejo de Agenda'),
(18, 'Investigador de Bioquímica y Desarrollo de Productos'),
(19, 'Arquitecto de Soluciones Empresariales'),
(20, 'Curador de Arte Moderno y Galería'),
(21, 'Instructor de Fitness Certificado'),
(22, 'Técnico en Reparación de Equipos Médicos');

select * from puestos;

UPDATE usuarios
SET id_puesto = T.puesto_id
FROM (VALUES
(1, 1),   
(2, 2),   
(3, 3),   
(4, 4),   
(5, 5),  
(6, 6),   
(7, 7),   
(8, 8),   
(9, 9),  
(10, 10), 
(11, 11), 
(12, 12), 
(13, 13), 
(14, 14), 
(15, 15),
(16, 16), 
(17, 17), 
(18, 18), 
(19, 19), 
(20, 20), 
(21, 21), 
(22, 22),
(23, 1),
(24, 2)  
) AS T (user_id, puesto_id)
WHERE usuarios.id_usuario = T.user_id;
