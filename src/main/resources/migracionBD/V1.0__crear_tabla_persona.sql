
CREATE SEQUENCE id_persona_seq;
create table persona(
	id_persona int8  NOT NULL DEFAULT nextval('id_persona_seq'),
	correo varchar(250) unique not null,
	nombre varchar(100) not null,
	apellido_paterno  varchar(100) not null,
	apellido_materno  varchar(100) not null,
	fecha_nacimiento  varchar(100) not null,
	contrasena varchar(255) not null,
	alias varchar(255)  unique not null,
	registro_activo boolean default true not null,
	fecha_alta  timestamp default CURRENT_TIMESTAMP not null,
	fecha_modificacion timestamp default CURRENT_TIMESTAMP not null,
	id_persona_alta int8,
	id_persona_modificacion int8,
	primary key(id_persona)
);
ALTER SEQUENCE id_persona_seq OWNED BY persona.id_persona;


select * from persona;
INSERT INTO persona
(correo, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, contrasena, alias, registro_activo, 
fecha_alta, fecha_modificacion, id_persona_alta, id_persona_modificacion)
VALUES('adrian.garciliano@elektra.com.mx', 'adrian', 'garciliano', 'jimenez', '20-03-1991 00:00:00', 'adrian', 'garciliano', true, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);


