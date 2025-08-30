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

CREATE TABLE IF NOT EXISTS t_categorias (
    id_categoria         INT(11) AUTO_INCREMENT NOT NULL,
    nombre_categoria     VARCHAR(100)           NOT NULL,
   CONSTRAINT pk_categoria PRIMARY KEY (id_categoria)
 
)ENGINE=InnoDB;-

INSERT INTO t_categorias VALUE (NULL,'Construccion'),(NULL,'electricos'),(NULL,'piso' ).(NULL 'pintura');

CREATE TABLE IF NOT EXISTS t_productos (
    id_producto      INT AUTO_INCREMENT NOT NULL,
    nombre_producto  VARCHAR(100)       NOT NULL,
    Descripcion      VARCHAR            NOT NULL,
    fecha            DATE               NOT NULL,
    stock            INT                NOT NULL,
    precio           DECIMAL(10,2)      NOT NULL,
    imagen           VARCHAR(200),
    oferta           VARCHAR(255)       NOT NULL,
    id_categoria     INT                NOT NULL,
    CONSTRAINT  pk_usuario             PRIMARY KEY (id_producto),
    CONSTRAINT  fk_PRODUCTO             FOREIGN KEY (id_categoria) REFERENCES t_categorias(id_categoria)
) ENGINE=InnoDB;

