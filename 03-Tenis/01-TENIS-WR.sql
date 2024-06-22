DROP SCHEMA IF EXISTS `TENIS`;
-- -----------------------------------------------------
-- Schema TENIS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TENIS` DEFAULT CHARACTER SET utf8mb4;

USE `TENIS`;

CREATE TABLE IF NOT EXISTS `MODALIDAD` (
    `idModalidad` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `PAIS` (
    `idPais` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `FASE` (
    `idFase` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `premioConsuelo` DECIMAL
);

CREATE TABLE IF NOT EXISTS `ESTADIO` (
    `idEstadio` INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `ubicacion` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `ENTRENADOR` (
    `idEntrenador` INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `apellido` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `ARBITRO` (
    `idArbitro` INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `apellido` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `JUGADOR` (
    `idJugador` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `apellido` VARCHAR(50) NOT NULL,
    `genero` VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS `NACIONALIDAD` (
    `idNacionalidad` INT NOT NULL PRIMARY KEY  AUTO_INCREMENT,
    `idJugador` INT NOT NULL,
    `idPais` INT NOT NULL,
    CONSTRAINT `FK_NACIONALIDAD_JUGADOR` FOREIGN KEY (`idJugador`) REFERENCES `JUGADOR` (`idJugador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_NACIONALIDAD_PAIS` FOREIGN KEY (`idPais`) REFERENCES `PAIS` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `TORNEO` (
    `idTorneo` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idPais` INT NOT NULL,
    `nombre` VARCHAR(50) NOT NULL,
    `ciudad` VARCHAR(50) NOT NULL,
    `premioGanador` DECIMAL,
    `fecha` DATE,
    CONSTRAINT `FK_TORNEO_PAIS` FOREIGN KEY (`idPais`) REFERENCES `PAIS` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE IF NOT EXISTS `PARTIDO` (
    `idPartido` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idTorneo` INT NOT NULL,
    `idArbitro` INT NOT NULL,
    `idModalidad` INT NOT NULL,
    `idFase` INT NOT NULL,
    `puntuacion` VARCHAR(50) NOT NULL,
    CONSTRAINT `FK_PARTIDO_TORNEO` FOREIGN KEY (`idTorneo`) REFERENCES `TORNEO` (`idTorneo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_PARTIDO_ARBITRO` FOREIGN KEY (`idArbitro`) REFERENCES `ARBITRO` (`idArbitro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_PARTIDO_MODALIDAD` FOREIGN KEY (`idModalidad`) REFERENCES `MODALIDAD` (`idModalidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_PARTIDO_FASE` FOREIGN KEY (`idFase`) REFERENCES `FASE` (`idFase`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `JUGADOR_PARTIDO` (
    `idJugadorPartido` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idJugador` INT NOT NULL,
    `IdPartido` INT NOT NULL,
    `ganador` VARCHAR(50),
    CONSTRAINT `FK_JUGADOR_PARTIDO_JUGADOR` FOREIGN KEY (`idJugador`) REFERENCES `JUGADOR` (`idJugador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_JUGADOR_PARTIDO_PARTIDO` FOREIGN KEY (`idPartido`) REFERENCES `PARTIDO` (`idPartido`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE IF NOT EXISTS `ENTRENAMIENTO` (
    `idEntrenamiento` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `idJugador` INT NOT NULL,
    `idEntrenador` INT NOT NULL,
    `fecha` DATE,
    CONSTRAINT `FK_ENTRENAMIENTO_JUGADOR` FOREIGN KEY (`idJugador`) REFERENCES `JUGADOR` (`idJugador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT `FK_ENTRENAMIENTO_ENTRENADOR` FOREIGN KEY (`idEntrenador`) REFERENCES `ENTRENADOR` (`idEntrenador`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
