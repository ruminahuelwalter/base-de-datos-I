

INSERT INTO AEROPUERTO (nombre, localidad, provincia) VALUES
('Aeropuerto Internacional Ministro Pistarini','Ezeiza','Buenos Aires'),
('Aeroparque Jorge Newbery','Buenos Aires','Ciudad Autónoma de Buenos Aires'),
('Aeropuerto Brigadier General Antonio Parodi','Esquel','Chubut'),
('Aeropuerto Internacional Teniente Luis Candelaria','Bariloche','Río Negro'),
('Aeropuerto Internacional Teniente Benjamín Matienzo','San Miguel de Tucumán',	'Tucumán'),
('Aeropuerto El Palomar','El Palomar','Buenos Aires'),
('Aeropuerto de Azul','Azul','Buenos Aires'),
('Aeropuerto Comandante Espora','Bahía Blanca','Buenos Aires'),
('Aeródromo Gilberto Lavaque','Cafayate','Salta'),
('Aeródromo Caleta Olivia','Caleta Olivia','Santa Cruz'),
('Aeródromo de Campo Arenal','Santa María','Catamarca'),
('Aeródromo Casilda','Casilda',	'Santa Fe'),
('Aeropuerto de Caviahue','Caviahue','Neuquén'),
('Aeropuerto Gobernador Gordillo','Chamical','La Rioja'),
('Aeropuerto Clorinda','Clorinda','Formosa'),
('Aeropuerto Internacional General Enrique Mosconi'	,'Comodoro Rivadavia','Chubut'),
('Aeropuerto Internacional Ingeniero Ambrosio Taravella','Córdoba',	'Córdoba'),
('Aeropuerto Comodoro Pierrestegui'	,'Concordia','Entre Ríos'),
('Aeropuerto de Curuzú Cuatiá','Curuzú Cuatiá','Corrientes'),
('Aeropuerto de General Alvear','General Alvear','Mendoza'),
('Aeropuerto de General Pico','General Pico','La Pampa'),
('Aeropuerto Dr. Guillermo Snopek','La Quiaca','Jujuy'),
('Aeropuerto Internacional Valle del Conlara','Merlo',	'San Luis'),
('Aeropuerto Internacional Libertador General José de San Martín','Posadas','Misiones'),
('Aeropuerto de Presidencia Roque Sáenz Peña','Presidencia Roque Saenz Peña','Chaco'),
('Aeródromo de Rafaela','Rafaela','Santa Fe'),
('Aeropuerto Coronel Felipe Varela','San Fernando del Valle de Catamarca',	'Catamarca'),
('Aeropuerto Internacional Termas de Río Hondo','Termas de Río Hondo',	'Santiago del Estero'),
('Aeropuerto Internacional Malvinas Argentinas','Ushuaia',	'Tierra del Fuego'),
('Aeopuerto Rincón de los Sauces','Rincón de los Sauces','Neuquén'),
('Aeródromo Saint Exupery','San Antonio Oeste','Río Negro'),
('Aeropuerto Domingo Faustino Sarmiento','San Juan','San Juan');

INSERT INTO TIPO (nombre) VALUES
('operativo'),
('mantenimiento');

INSERT INTO AVION (codigo, idAeropuerto) VALUES
('AV001', 1),
('AV002', 2),
('AV003', 3),
('AV004', 1),
('AV005', 2);

INSERT INTO TIPOAEROPUERTO(idAeropuerto, idTipo) VALUES
(1,1),
(1,2),
(2,1),
(2,2),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1);


INSERT INTO PILOTO (nombre, apellido, horasVuelo) VALUES
('Malena', 'Iglesias', 100),
('Nina', 'Vidal', 150),
('Emilia', 'Castro', 200),
('Agostina', 'Suárez', 120),
('Olivia', 'Méndez', 180);

INSERT INTO ROL(nombre) VALUES
('Copiloto'),
('Comisario de abordo'),
('Azafata');

INSERT INTO TRIPULANTE (nombre, apellido, idRol) VALUES
('Fausto', 'Blanco', 1), /* --Copiloto */
('Valentín', 'Domínguez', 1), 
('Augusto', 'Molina', 1),
('Sebastián', 'Pérez', 1),
('Facundo', 'Sánchez', 1),
('Francesca', 'Méndez', 2), /* --Comisario */
('Daniela', 'Perez', 2),
('Isabella', 'Blanco', 2),
('Francesca', 'Aguirre', 2),
('Ciro', 'Rossi', 2),
('Nora', 'Mathisen', 3), /* --Azafata 11 */
('Thea', 'Eide', 3),
('Iben', 'Hansen', 3),
('Melanie', 'Winkler', 3),
('Magdalena', 'Schuster', 3),
('Lourdes', ' Ortiz', 3),
('Pía', 'Ramos', 3),
('Jazmín', 'Giménez', 3),
('Isabella', 'Hernández', 3),
('Josefina', 'Silva', 3), /*  --20 */
('Guadalupe', 'Iglesias', 3),
('Guillermina', 'Ramírez', 3),
('Constanza', 'Ortiz', 3),
('Martina', 'Romero', 3),
('Agostina', 'Benítez', 3);


INSERT INTO RUTA (idOrigen, idDestino) VALUES
(2,3), /* -- bsasAeroparque esquel */
(3,2), /* -- esquel bsasAeroparque  */
(3,4), /* -- esquel bariloche */
(4,3), /* -- bariloche esquel */
(1,4), /* -- ezeiza bariloche */
(1,4), /* -- bariloche ezeiza */
(1,5), /* -- ezeiza tucuman --7 */
(5,1); /* -- tucuman ezeiza --8 */


INSERT INTO VUELO (idRuta, idAvion, numero, estado, hora, fecha) VALUES
(1, 1, 'Vuelo 001', 'Realizado', '12:00:00', '2023-01-01'),/*  -- TRIPULACION 1 */
(2, 2, 'Vuelo 002', 'Realizado', '14:30:00', '2023-01-02'),/*  -- TRIPULACION 1 */
(3, 3, 'Vuelo 003', 'Realizado', '16:45:00', '2023-01-03'),/*  -- TRIPULACION 1 */
(4, 4, 'Vuelo 004', 'Realizado', '18:15:00', '2023-01-04'),/*  -- TRIPULACION 1 */
(5, 5, 'Vuelo 005', 'Realizado', '20:00:00', '2023-01-05'),/*  -- TRIPULACION 1 --5 */

(1, 1, 'Vuelo 001', 'Realizado', '12:00:00', '2023-09-01'),/*  -- TRIPULACION 2 */
(2, 2, 'Vuelo 002', 'Realizado', '14:30:00', '2023-09-02'),/*  -- TRIPULACION 2 */
(3, 3, 'Vuelo 003', 'Realizado', '16:45:00', '2023-09-03'),/*  -- TRIPULACION 2 */
(4, 4, 'Vuelo 004', 'Realizado', '18:15:00', '2023-09-04'),/*  -- TRIPULACION 2 */
(5, 5, 'Vuelo 005', 'Realizado', '20:00:00', '2023-09-05'),/*  -- TRIPULACION 2--10 */

(7, 1, 'Vuelo 007', 'Realizado', '12:00:00', '2023-10-01'),/*  -- TRIPULACION 3-- ezeiza tucuman */
(8, 2, 'Vuelo 008', 'Realizado', '14:30:00', '2023-10-02'),/*  -- TRIPULACION 3 tucuman ezeiza */
(7, 1, 'Vuelo 007', 'Realizado', '12:00:00', '2023-10-10'),/*  -- TRIPULACION 3 */
(8, 2, 'Vuelo 008', 'Realizado', '14:30:00', '2023-11-01'),/*  -- TRIPULACION 3 */
(7, 2, 'Vuelo 007', 'Realizado', '12:00:00', '2023-11-02'),/*  -- TRIPULACION 3 -15 */

(8, 2, 'Vuelo 008', 'Realizado', '14:30:00', '2023-11-03'),/*  -- TRIPULACION 4 */
(1, 1, 'Vuelo 001', 'Realizado', '12:00:00', '2023-11-04'),/*  -- TRIPULACION 4 */
(2, 2, 'Vuelo 002', 'Realizado', '14:30:00', '2023-11-05'),/*  -- TRIPULACION 4 */
(3, 3, 'Vuelo 003', 'Realizado', '16:45:00', '2023-11-06'),/*  -- TRIPULACION 4 */
(4, 4, 'Vuelo 004', 'Realizado', '18:15:00', '2023-11-07'),/*  -- TRIPULACION 4 --20 */

(5, 5, 'Vuelo 005', 'Realizado', '20:00:00', '2023-11-08'),/*  -- TRIPULACION 5 */
(1, 1, 'Vuelo 001', 'Realizado', '12:00:00', '2023-11-10'),/*  -- TRIPULACION 5 */
(2, 2, 'Vuelo 002', 'Realizado', '14:30:00', '2023-11-15'),/*  -- TRIPULACION 5 */
(3, 3, 'Vuelo 003', 'Realizado', '16:45:00', '2023-11-16'),/*  -- TRIPULACION 5 */
(4, 4, 'Vuelo 004', 'Realizado', '18:15:00', '2023-11-20'),/*  -- TRIPULACION 5 --25 */
/* -- VUELOS A REALIZAR */
(1, 1, 'Vuelo 001', 'No Realizado', '12:00:00', '2023-11-27'), /* -- TRIPULACION 1 */
(2, 2, 'Vuelo 002', 'No Realizado', '14:30:00', '2023-11-28'), /* -- TRIPULACION 1 */
(3, 3, 'Vuelo 003', 'No Realizado', '16:45:00', '2023-11-29'), /* -- TRIPULACION 1 */
(4, 4, 'Vuelo 004', 'No Realizado', '18:15:00', '2023-11-30'), /* -- TRIPULACION 1 */
(5, 5, 'Vuelo 005', 'No Realizado', '20:00:00', '2023-12-01'), /* -- TRIPULACION 1 --30 */

(1, 1, 'Vuelo 001', 'No Realizado', '12:00:00', '2023-12-02'), /* -- TRIPULACION 2 */
(2, 2, 'Vuelo 002', 'No Realizado', '14:30:00', '2023-12-07'), /* -- TRIPULACION 2 */
(3, 3, 'Vuelo 003', 'No Realizado', '16:45:00', '2023-12-08'), /* -- TRIPULACION 2 */
(4, 4, 'Vuelo 004', 'No Realizado', '18:15:00', '2023-12-09'), /* -- TRIPULACION 2 */
(5, 5, 'Vuelo 005', 'No Realizado', '20:00:00', '2023-12-10'), /* -- TRIPULACION 2 --35 */

(7, 1, 'Vuelo 007', 'No Realizado', '12:00:00', '2023-12-13'), /* -- TRIPULACION 3-- ezeiza tucuman */
(8, 2, 'Vuelo 008', 'No Realizado', '14:30:00', '2023-12-14'), /* -- TRIPULACION 3 tucuman ezeiza */
(7, 1, 'Vuelo 007', 'No Realizado', '12:00:00', '2023-12-15'), /* -- TRIPULACION 3 */
(8, 2, 'Vuelo 008', 'No Realizado', '14:30:00', '2023-12-16'), /* -- TRIPULACION 3 */
(7, 2, 'Vuelo 007', 'No Realizado', '12:00:00', '2023-12-17'), /* -- TRIPULACION 3 --40 */

(8, 2, 'Vuelo 008', 'No Realizado', '14:30:00', '2023-11-18'), /* -- TRIPULACION 4 */
(1, 1, 'Vuelo 001', 'No Realizado', '12:00:00', '2023-12-19'), /* -- TRIPULACION 4 */
(2, 2, 'Vuelo 002', 'No Realizado', '14:30:00', '2023-12-20'), /* -- TRIPULACION 4 */
(3, 3, 'Vuelo 003', 'No Realizado', '16:45:00', '2023-12-21'), /* -- TRIPULACION 4 */
(4, 4, 'Vuelo 004', 'No Realizado', '18:15:00', '2023-12-22'), /* -- TRIPULACION 4 --45 */

(5, 5, 'Vuelo 005', 'No Realizado', '20:00:00', '2023-12-26'), /* -- TRIPULACION 5 */
(1, 1, 'Vuelo 001', 'No Realizado', '12:00:00', '2023-12-27'), /* -- TRIPULACION 5 */
(2, 2, 'Vuelo 002', 'No Realizado', '14:30:00', '2023-12-28'), /* -- TRIPULACION 5 */
(3, 3, 'Vuelo 003', 'No Realizado', '16:45:00', '2023-12-29'), /* -- TRIPULACION 5 */
(4, 4, 'Vuelo 004', 'No Realizado', '18:15:00', '2023-12-30'); /* -- TRIPULACION 5 --50 */


INSERT INTO TRIPULACION (idTripulante, idPiloto, idVuelo, idAeropuerto) VALUES
/* -- VUELOS REALIZADOS TRIPULACION 1 */
(1, 1, 1, 1),/* --vuelo 1 */
(6, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),

(1, 1, 2, 1),/* --vuelo 2 */
(6, 1, 2, 1),
(11, 1, 2, 1),
(12, 1, 2, 1),
(13, 1, 2, 1),

(1, 1, 3, 1),/* --vuelo 3 */
(6, 1, 3, 1),
(11, 1, 3, 1),
(12, 1, 3, 1),
(13, 1, 3, 1),

(1, 1, 4, 1),/* --vuelo 4 */
(6, 1, 4, 1),
(11, 1, 4, 1),
(12, 1, 4, 1),
(13, 1, 4, 1),

(1, 1, 5, 1),/* --vuelo 5 */
(6, 1, 5, 1),
(11, 1, 5, 1),
(12, 1, 5, 1),
(13, 1, 5, 1),

/* -- VUELOS REALIZADOS TRIPULACION 2 */

(2, 2, 6, 2),/* --vuelo 6 */
(7, 2, 6, 2),
(14, 2, 6, 2),
(15, 2, 6, 2),
(16, 2, 6, 2),

(2, 2, 7, 2),/* --vuelo 7 */
(7, 2, 7, 2),
(14, 2, 7, 2),
(15, 2, 7, 2),
(16, 2, 7, 2),

(2, 2, 8, 2),/* -vuelo 8 */
(7, 2, 8, 2),
(14, 2, 8, 2),
(15, 2, 8, 2),
(16, 2, 8, 2),

(2, 2, 9, 2),/* --vuelo 9 */
(7, 2, 9, 2),
(14, 2, 9, 2),
(15, 2, 9, 2),
(16, 2, 9, 2),

(2, 2, 10, 2),/* --vuelo 10 */
(7, 2, 10, 2),
(14, 2, 10, 2),
(15, 2, 10, 2),
(16, 2, 10, 2),

/* -- VUELOS REALIZADOS TRIPULACION 3 */

(3, 3, 11, 3),/* --vuelo 11 */
(8, 3, 11, 3),
(17, 3, 11, 3),
(18, 3, 11, 3),
(19, 3, 11, 3),

(3, 3, 12, 3),/* --vuelo 12 */
(8, 3, 12, 3),
(17, 3, 12, 3),
(18, 3, 12, 3),
(19, 3, 12, 3),

(3, 3, 13, 3),/* --vuelo 13 */
(8, 3, 13, 3),
(17, 3, 13, 3),
(18, 3, 13, 3),
(19, 3, 13, 3),

(3, 3, 14, 3),/* --vuelo 14 */
(8, 3, 14, 3),
(17, 3, 14, 3),
(18, 3, 14, 3),
(19, 3, 14, 3),

(3, 3, 15, 3),/* --vuelo 15 */
(8, 3, 15, 3),
(17, 3, 15, 3),
(18, 3, 15, 3),
(19, 3, 15, 3),

/* -- VUELOS REALIZADOS TRIPULACION 4 */

(4, 4, 16, 2),/* --piloto unico vuelo 16 */
(9, 4, 16, 2),
(20, 4, 16, 2),
(21, 4, 16, 2),
(22, 4, 16, 2),

(4, 4, 17, 2),/* --piloto unico vuelo 17 */
(9, 4, 17, 2),
(20, 4, 17, 2),
(21, 4, 17, 2),
(22, 4, 17, 2),

(4, 4, 18, 2),/* -piloto unico vuelo 18 */
(9, 4, 18, 2),
(20, 4, 18, 2),
(21, 4, 18, 2),
(22, 4, 18, 2),

(4, 4, 19, 2),/* --piloto unico vuelo 19 */
(9, 4, 19, 2),
(20, 4, 19, 2),
(21, 4, 19, 2),
(22, 4, 19, 2),

(4, 4, 20, 2),/* --piloto unico vuelo 20*/
(9, 4, 20, 2), 
(20, 4, 20, 2),
(21, 4, 20, 2),
(22, 4, 20, 2),

/* -- VUELOS REALIZADOS TRIPULACION 5 */

(5, 5, 21, 1), /* --piloto unico vuelo 21 */
(10, 5, 21, 1),
(23, 5, 21, 1),
(24, 5, 21, 1),
(25, 5, 21, 1),

(5, 5, 22, 1), /* --piloto unico vuelo 22 */
(10, 5, 22, 1),
(23, 5, 22, 1),
(24, 5, 22, 1),
(25, 5, 22, 1),

(5, 5, 23, 1), /* --piloto unico vuelo 23 */
(10, 5, 23, 1),
(23, 5, 23, 1),
(24, 5, 23, 1),
(25, 5, 23, 1),

(5, 5, 24, 1), /* --piloto unico vuelo 24 */
(10, 5, 24, 1),
(23, 5, 24, 1),
(24, 5, 24, 1),
(25, 5, 24, 1),

(5, 5, 25, 1), /* --piloto unico vuelo 25 */
(10, 5, 25, 1),
(23, 5, 25, 1),
(24, 5, 25, 1),
(25, 5, 25, 1),

/* -- VUELOS A REALIZAR TRIPULACION 1 */
(1, 1, 26, 1),/* --vuelo 26 */
(6, 1, 26, 1),
(11, 1, 26, 1),
(12, 1, 26, 1),
(13, 1, 26, 1),

(1, 1, 27, 1),/* --vuelo 27 */
(6, 1, 27, 1),
(11, 1, 27, 1),
(12, 1, 27, 1),
(13, 1, 27, 1),

(1, 1, 28, 1),/* --vuelo 28 */
(6, 1, 28, 1),
(11, 1, 28, 1),
(12, 1, 28, 1),
(13, 1, 28, 1),

(1, 1, 29, 1),/* --vuelo 29 */
(6, 1, 29, 1),
(11, 1, 29, 1),
(12, 1, 29, 1),
(13, 1, 29, 1),

(1, 1, 30, 1),/* --vuelo 30 */
(6, 1, 30, 1),
(11, 1, 30, 1),
(12, 1, 30, 1),
(13, 1, 30, 1),

/* -- VUELOS A REALIZAR TRIPULACION 2 */

(2, 2, 31, 2),/* --vuelo 31 */
(7, 2, 31, 2),
(14, 2, 31, 2),
(15, 2, 31, 2),
(16, 2, 31, 2),

(2, 2, 32, 2),/* --vuelo 32 */
(7, 2, 32, 2),
(14, 2, 32, 2),
(15, 2, 32, 2),
(16, 2, 32, 2),

(2, 2, 33, 2),/* --vuelo 33 */
(7, 2, 33, 2),
(14, 2, 33, 2),
(15, 2, 33, 2),
(16, 2, 33, 2),

(2, 2, 34, 2),/* --vuelo 34 */
(7, 2, 34, 2),
(14, 2, 34, 2),
(15, 2, 34, 2),
(16, 2, 34, 2),

(2, 2, 35, 2),/* --vuelo 35 */
(7, 2, 35, 2),
(14, 2, 35, 2),
(15, 2, 35, 2),
(16, 2, 35, 2),

/* -- VUELOS A REALIZAR TRIPULACION 3 */

(3, 3, 36, 3),/* --vuelo 36 */
(8, 3, 36, 3),
(17, 3, 36, 3),
(18, 3, 36, 3),
(19, 3, 36, 3),

(3, 3, 37, 3),/* --vuelo 37 */
(8, 3, 37, 3),
(17, 3, 37, 3),
(18, 3, 37, 3),
(19, 3, 37, 3),

(3, 3, 38, 3),/* -vuelo 38 */
(8, 3, 38, 3),
(17, 3, 38, 3),
(18, 3, 38, 3),
(19, 3, 38, 3),

(3, 3, 39, 3),/* --vuelo 39 */
(8, 3, 39, 3),
(17, 3, 39, 3),
(18, 3, 39, 3),
(19, 3, 39, 3),

(3, 3, 40, 3),/* --vuelo 40 */
(8, 3, 40, 3),
(17, 3, 40, 3),
(18, 3, 40, 3),
(19, 3, 40, 3),

/* -- VUELOS A REALIZAR TRIPULACION 4 */

(4, 4, 41, 2),/* --piloto unico vuelo 41 */
(9, 4, 41, 2),
(20, 4, 41, 2),
(21, 4, 41, 2),
(22, 4, 41, 2),

(4, 4, 42, 2),/* --piloto unico vuelo 42 */
(9, 4, 42, 2),
(20, 4, 42, 2),
(21, 4, 42, 2),
(22, 4, 42, 2),

(4, 4, 43, 2), /* --piloto unico vuelo 43 */
(9, 4, 43, 2),
(20, 4, 43, 2),
(21, 4, 43, 2),
(22, 4, 43, 2),

(4, 4, 44, 2),/* --piloto unico vuelo 44 */
(9, 4, 44, 2),
(20, 4, 44, 2),
(21, 4, 44, 2),
(22, 4, 44, 2),

(4, 4, 45, 2),/* --piloto unico vuelo 45 */
(9, 4, 45, 2),
(20, 4, 45, 2),
(21, 4, 45, 2),
(22, 4, 45, 2),

/* -- VUELOS A REALIZAR TRIPULACION 5 */

(5, 5, 46, 1), /* --piloto unico vuelo 46 */
(10, 5, 46, 1),
(23, 5, 46, 1),
(24, 5, 46, 1),
(25, 5, 46, 1),

(5, 5, 47, 1), /* --piloto unico vuelo 47 */
(10, 5, 47, 1),
(23, 5, 47, 1),
(24, 5, 47, 1),
(25, 5, 47, 1),

(5, 5, 48, 1), /* --piloto unico vuelo 48 */
(10, 5, 48, 1),
(23, 5, 48, 1),
(24, 5, 48, 1),
(25, 5, 48, 1),

(5, 5, 49, 1), /* --piloto unico vuelo 49 */
(10, 5, 49, 1),
(23, 5, 49, 1),
(24, 5, 49, 1),
(25, 5, 49, 1),

(5, 5, 50, 1), /* --piloto unico vuelo 50 */
(10, 5, 50, 1),
(23, 5, 50, 1),
(24, 5, 50, 1),
(25, 5, 50, 1);
