DROP SCHEMA IF EXISTS `COMPANIA_AEREA`;
-- SCHEMA COMPANIA_AEREA--

CREATE SCHEMA IF NOT EXISTS `COMPANIA_AEREA` DEFAULT CHARACTER SET utf8mb4;
USE `COMPANIA_AEREA`;

CREATE TABLE IF NOT EXISTS `AEROPUERTO`(
    `idAeropuerto` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(255),
    `provincia` VARCHAR(255)
);


CREATE TABLE IF NOT EXISTS `TIPO`(
    `idTipo` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS `TIPOAEROPUERTO`(
    `idTipoAeropuerto` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idTipo` INT NOT NULL,
    `idAeropuerto` INT NOT NULL,
    CONSTRAINT `FK_TIPOAEROPUERTO_AEROPUERTO` FOREIGN KEY (`idAeropuerto`) REFERENCES `AEROPUERTO` (`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_TIPOAEROPUERTO_TIPO` FOREIGN KEY (`idTipo`) REFERENCES `TIPO` (`idTipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE IF NOT EXISTS `ROL`(
    `idRol` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS `TRIPULANTE`(
    `idTripulante` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50),
    `apellido` VARCHAR(50),
    `idRol` INT NOT NULL,
    CONSTRAINT `FK_TRIPULANTE_ROL` FOREIGN KEY (`idRol`) REFERENCES `ROL` (`idRol`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `PILOTO`(
    `idPiloto` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50),
    `apellido` VARCHAR(50),
    `horasVuelo` FLOAT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS `AVION`(
    `idAvion` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `codigo` VARCHAR(50),
    `idAeropuerto` INT NOT NULL,
    CONSTRAINT `FK_AVION_AEROPUERTO_BASE` FOREIGN KEY (`idAeropuerto`) REFERENCES `AEROPUERTO` (`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE IF NOT EXISTS `RUTA`(
    `idRuta` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idOrigen` INT NOT NULL,
    `idDestino` INT NOT NULL,
    CONSTRAINT `FK_RUTA_AEROPUERTO_ORIGEN` FOREIGN KEY (`idOrigen`) REFERENCES `AEROPUERTO` (`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_RUTA_AEROPUERTO_DESTINO` FOREIGN KEY (`idDestino`) REFERENCES `AEROPUERTO` (`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE IF NOT EXISTS `VUELO`(
    `idVuelo` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idRuta` INT NOT NULL,
    `idAvion` INT NOT NULL,
    `numero` VARCHAR(50),
    `estado` VARCHAR(50),
    `hora` TIME,
    `fecha` DATE,
    CONSTRAINT `FK_VUELO_RUTA` FOREIGN KEY (`idRuta`) REFERENCES `RUTA` (`idRuta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_VUELO_AVION` FOREIGN KEY (`idAvion`) REFERENCES `AVION`(`idAvion`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `TRIPULACION`(
    `idTripulacion` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idTripulante` INT NOT NULL,
    `idPiloto` INT NOT NULL,
    `idVuelo` INT NOT NULL,
    `idAeropuerto` INT NOT NULL,
    CONSTRAINT `FK_TRIPULACION_TRIPULANTE` FOREIGN KEY (`idTripulante`) REFERENCES `TRIPULANTE`(`idTripulante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_TRIPULACION_PILOTO` FOREIGN KEY (`idPiloto`) REFERENCES `PILOTO`(`idPiloto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_TRIPULACION_VUELO` FOREIGN KEY (`idVuelo`) REFERENCES `VUELO`(`idVuelo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_TRIPULACION_AEROPUERTO_BASE` FOREIGN KEY (`idAeropuerto`) REFERENCES `AEROPUERTO`(`idAeropuerto`) ON DELETE NO ACTION ON UPDATE NO ACTION


);

ALTER TABLE `compania_aerea`.`aeropuerto` 
ADD COLUMN `localidad` VARCHAR(255) NULL AFTER `provincia`,
CHANGE COLUMN `nombre` `nombre` VARCHAR(255) NOT NULL ,
CHANGE COLUMN `provincia` `provincia` VARCHAR(255) NOT NULL ;
