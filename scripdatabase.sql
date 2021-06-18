create database base_ciudades;
use base_ciudades;

CREATE TABLE perfiles(
	id_perfil int NOT NULL AUTO_INCREMENT,
	nombre_perfil VARCHAR(50),
	PRIMARY KEY (id_perfil)
);

INSERT INTO perfiles (id_perfil,nombre_perfil) values(1,'ADMINISTRADOR');
INSERT INTO perfiles (id_perfil,nombre_perfil) values(2,'CLIENTE');


CREATE TABLE usuarios ( 
	id_usuario INT NULL AUTO_INCREMENT,
	 nombre_usuario VARCHAR(50) NOT NULL,
	 alias VARCHAR(12),
	 id_perfil INT,
	 PRIMARY KEY(id_usuario),
	 FOREIGN KEY (id_perfil) REFERENCES perfiles(id_perfil)
 );

INSERT INTO usuarios(id_usuario, nombre_usuario,alias,id_perfil) VALUES (1,'Oscar Cano Administrador','oscacaacadm',1);
INSERT INTO usuarios(id_usuario, nombre_usuario,alias,id_perfil) VALUES (2,'Oscar Acosta Cliente','oscacaaccli',2);

CREATE TABLE paises (
	id_pais INT NOT NULL AUTO_INCREMENT,
	pais varchar(50),
	cod_alfa2 int,
	PRIMARY KEY (id_pais);
)




