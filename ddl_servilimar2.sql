Instrucciones DDL
--- TABLA CIUDAD ---
CREATE TABLE Ciudad (
	ciudad_id SERIAL PRIMARY KEY,
	nombre_ciudad VARCHAR(100) NOT NULL,
	codigo_postal VARCHAR(100) NOT NULL
);

--- TABLA TIPO_USUARIO ---
CREATE TABLE Tipo_usuario (
	tipo_usuario_id SERIAL PRIMARY KEY,
	nombre_tipo VARCHAR(50) NOT NULL
);

--- TABLA USUARIO ---
CREATE TABLE Usuario (
	usuario_id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100) NOT NULL,
	tipo_usuario_id INT NOT NULL,
	condiciones TEXT,
	ciudad_id INT NOT NULL,

	CONSTRAINT fk_usuario_tipo
		FOREIGN KEY (tipo_usuario_id)
		REFERENCES Tipo_Usuario(tipo_usuario_id),

	CONSTRAINT fk_usuario_ciudad
		FOREIGN KEY (ciudad_id)
		REFERENCES Ciudad(ciudad_id)
);

-- TABLA EMPLEADO ---
CREATE TABLE Empleado (
	empleado_id SERIAL PRIMARY KEY,
	usuario_id INT NOT NULL,
	cargos VARCHAR(100) NOT NULL,
	departamentos VARCHAR(100) NOT NULL,

	CONSTRAINT fk_empleado_usuario
		FOREIGN KEY (usuario_id)
		REFERENCES Usuario(usuario_id)
);

--- TABLA SERVICIO ---
CREATE TABLE Servicio (
	servicio_id SERIAL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	descripcion TEXT,
	estado VARCHAR(50) NOT NULL
);

--- TABLA MEDIO_NOTIFICACION ---
CREATE TABLE Medio_Notificacion(
	medio_id SERIAL PRIMARY KEY,
	nombre_medio VARCHAR(50) NOT NULL
);

--- TABLA TURNO ---
CREATE TABLE Turno (
    turno_id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    servicio_id INT NOT NULL,
    empleado_id INT NOT NULL,
    fecha DATE NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    estado VARCHAR(50) NOT NULL,

    CONSTRAINT fk_turno_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES Usuario(usuario_id),

    CONSTRAINT fk_turno_servicio
        FOREIGN KEY (servicio_id)
        REFERENCES Servicio(servicio_id),

    CONSTRAINT fk_turno_empleado
        FOREIGN KEY (empleado_id)
        REFERENCES Empleado(empleado_id)
);

--- TABLA NOTIFICACION ---
CREATE TABLE Notificacion (
	notificacion_id SERIAL PRIMARY KEY,
	usuario_id INT NOT NULL,
	medio_id INT NOT NULL,
	mensaje TEXT NOT NULL,
	fecha_envio TIMESTAMP NOT NULL,
	estado VARCHAR(50) NOT NULL,

	CONSTRAINT fk_notificacion_usuario
		FOREIGN KEY (usuario_id)
		REFERENCES Usuario(usuario_id),

	CONSTRAINT fk_notificacion_medio
		FOREIGN KEY (medio_id)
		REFERENCES Medio_Notificacion(medio_id)
);
