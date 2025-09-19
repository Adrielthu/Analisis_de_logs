CREATE TABLE d_tiempo (
id_tiempo INT PRIMARY KEY,
dia INT,
mes INT
);

CREATE TABLE d_ubicacion(
  id_ubicacion INT PRIMARY KEY,
  continente varchar(100),
  pais varchar(100),
  ciudad varchar(100),
  latitud NUMERIC(9,6),
longitud NUMERIC(9,6)
  );


CREATE TABLE d_navegador(
  id_navegador INT PRIMARY key,
  nombre varchar(100)
  );

CREATE TABLE d_dispositivo(
  id_dispositivo INT PRIMARY key,
  marca varchar(100),
  modelo varchar (100),
  so varchar(100)
  );

CREATE TABLE d_estadoserver(
  id_estadoserver int PRIMARY key,
  descripcion varchar(100),
  tipo varchar(100));

CREATE TABLE factable(
  id_hecho int PRIMARY key,
  id_tiempo int not null,
  id_ubicacion int not null,
  id_dispositivo int not null,
  id_navegador int not null,
  id_estadoserver int not null,
  cant_pais_dia int,
  cant_navegador_dia int,
  cant_dispositivo_dia int,
  cant_bytes_dispositivo int,
  cant_estadoserver_dia int,
  foreign key (id_tiempo) references d_tiempo(id_tiempo),
  foreign key (id_ubicacion) references d_ubicacion(id_ubicacion),
  foreign key (id_dispositivo) references d_dispositivo(id_dispositivo),
  foreign key (id_navegador) references d_navegador(id_navegador),
  foreign key (id_estadoserver) references d_estadoserver(id_estadoserver));