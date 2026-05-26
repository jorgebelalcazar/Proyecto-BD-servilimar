INSERT INTO Ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali', '760001'),
('Bogotá', '110111'),
('Medellín', '050001'),
('Barranquilla', '080001'),
('Cartagena', '130001'),
('Pasto', '520001'),
('Bucaramanga', '680001'),
('Manizales', '170001'),
('Pereira', '660001'),
('Santa Marta', '470001');

INSERT INTO Tipo_Usuario (nombre_tipo) VALUES
('Cliente'),
('Empleado'),
('Proveedor'),
('Administrador'),
('Visitante'),
('Consultor'),
('Supervisor'),
('Mensajero'),
('Técnico'),
('Invitado');

INSERT INTO Usuario (nombre, apellido, tipo_usuario_id, condiciones, ciudad_id) VALUES
('Jorge', 'Ramírez', 1, 'Ninguna', 1),
('Ana', 'Martínez', 2, 'Embarazo', 2),
('Luis', 'Gómez', 3, 'Silla de ruedas', 3),
('Carla', 'Fernández', 1, 'Adulto mayor', 4),
('Miguel', 'Torres', 2, 'Ninguna', 5),
('Laura', 'Díaz', 4, 'Ninguna', 6),
('Pedro', 'Castro', 5, 'Discapacidad visual', 7),
('Sofía', 'Morales', 6, 'Ninguna', 8),
('Andrés', 'Vargas', 7, 'Ninguna', 9),
('Valentina', 'Rojas', 1, 'Ninguna', 10);

INSERT INTO Empleado (usuario_id, cargos, departamentos) VALUES
(2, 'Asesor', 'Atención al Cliente'),
(5, 'Supervisor', 'Operaciones'),
(6, 'Administrador', 'Gerencia'),
(8, 'Consultor', 'Consultoría'),
(9, 'Coordinador', 'Logística'),
(2, 'Capacitador', 'Talento Humano'),
(5, 'Auditor', 'Control Interno'),
(6, 'Analista', 'Tecnología'),
(8, 'Especialista', 'Innovación'),
(9, 'Jefe', 'Operaciones');

INSERT INTO Servicio (nombre, descripcion, estado) VALUES
('Atención al Cliente', 'Soporte general al usuario', 'Activo'),
('Consultoría', 'Asesoría especializada', 'Activo'),
('Recepción de Artículos', 'Recepción de paquetes', 'Activo'),
('Despacho', 'Entrega de artículos', 'Activo'),
('Mesa de Ayuda', 'Soporte técnico', 'Activo'),
('Facturación', 'Gestión de pagos', 'Activo'),
('Radicación', 'Recepción documental', 'Activo'),
('Logística', 'Coordinación de envíos', 'Activo'),
('Inventario', 'Control de existencias', 'Activo'),
('Soporte VIP', 'Atención prioritaria', 'Activo');

INSERT INTO Medio_Notificacion (nombre_medio) VALUES
('Correo'),
('SMS'),
('WhatsApp'),
('Llamada'),
('Telegram'),
('Push'),
('Facebook'),
('Instagram'),
('Correo Corporativo'),
('Notificación Web');

INSERT INTO Turno (usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, '2026-05-20', '08:00', '08:30', 'Finalizado'),
(2, 2, 2, '2026-05-20', '09:00', '09:30', 'En Proceso'),
(3, 3, 3, '2026-05-20', '10:00', '10:30', 'Pendiente'),
(4, 4, 4, '2026-05-21', '11:00', '11:30', 'Finalizado'),
(5, 5, 5, '2026-05-21', '12:00', '12:30', 'Cancelado'),
(6, 6, 6, '2026-05-21', '13:00', '13:30', 'Pendiente'),
(7, 7, 7, '2026-05-22', '14:00', '14:30', 'En Proceso'),
(8, 8, 8, '2026-05-22', '15:00', '15:30', 'Finalizado'),
(9, 9, 9, '2026-05-22', '16:00', '16:30', 'Pendiente'),
(10, 10, 10, '2026-05-23', '17:00', '17:30', 'Asignado');

INSERT INTO Notificacion (usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 'Su turno ha sido confirmado', NOW(), 'Enviado'),
(2, 2, 'Su turno está en proceso', NOW(), 'Enviado'),
(3, 3, 'Su turno fue reprogramado', NOW(), 'Pendiente'),
(4, 4, 'Atención finalizada', NOW(), 'Enviado'),
(5, 5, 'Recordatorio de turno', NOW(), 'Enviado'),
(6, 6, 'Nuevo turno asignado', NOW(), 'Pendiente'),
(7, 7, 'Servicio disponible', NOW(), 'Enviado'),
(8, 8, 'Encuesta de satisfacción', NOW(), 'Enviado'),
(9, 9, 'Turno cancelado', NOW(), 'Fallido'),
(10, 10, 'Turno completado', NOW(), 'Enviado');
