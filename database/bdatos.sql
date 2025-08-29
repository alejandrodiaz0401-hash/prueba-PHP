CREATE DATABASE IF NOT EXISTS ferrarii;
USE ferrarii;

CREATE TABLE IF NOT EXISTS t_usuarios (
    id_usuario INT(11) AUTO_INCREMENT NOT NULL,
    nombre     VARCHAR(100)           NOT NULL,
    apellido   VARCHAR(100)           NOT NULL,
    email      VARCHAR(200)           NOT NULL,
    PASSWORD   VARCHAR(200)           NOT NULL,
    rol        VARCHAR(20)            NOT NULL,
    imagen     VARCHAR(200),
    CONSTRAINT pk_usuario PRIMARY KEY (id_usuario),
    CONSTRAINT uq_email UNIQUE (email)
) ENGINE=InnoDB;

INSERT INTO t_usuarios VALUES (NULL, 'Alejandro', 'Diaz', 'alejandrodiaz0401@gmail.com', '123456', 'admin', 'imagen');
