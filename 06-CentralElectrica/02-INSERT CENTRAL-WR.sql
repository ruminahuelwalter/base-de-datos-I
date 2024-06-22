

/*-- 5 productores, cada productor produce electricidad de 
-- al menos dos categorías diferentes*/
INSERT INTO PRODUCTOR (nombre) VALUES
    ('CONSTRUCCIONES  ELECTROMECÁNICAS DEL OESTE S.A'),
    ('ARAUCO S.A.P.E.M'),
    ('JEMSE'),
    ('PETROQUIMICA COMODORO RIVADAVIA S.A'),
    ('LATINOAMERICANA DE ENERGÍA S.A');

INSERT INTO CENTRAL (idProductor, nombre, prodMedia, prodMax, fechaConstruccion) VALUES
    (1, 'Central-001', 100, 150, '2002-01-01'),
    (1, 'Central-002', 120, 180, '2006-02-10'),
    (2, 'Central-003', 120, 130, '2007-01-01'), /*--3*/
    (2, 'Central-004', 90, 130, '2008-05-02'),
    (3, 'Central-005', 80, 130, '2009-10-11'),
    (3, 'Central-006', 70, 130, '2010-07-01'), /*--6*/
    (4, 'Central-007', 85, 130, '2011-09-01'),
    (4, 'Central-008', 95, 130, '2012-04-01'), /*--8*/
    (5, 'Central-009', 65, 130, '2013-01-01'),
    (5, 'Central-010', 100, 130, '2021-01-01'); /*--10*/


INSERT INTO NUCLEAR (idCentral, volPlutonioConsumido, prodResiduos, cantidadReactores) VALUES
    (1,2200,200,10), -- CENTRAL--001 CONSTRUCCIONES  ELECTROMECÁNICAS DEL OESTE S.A
    (3,2200,220,15); -- CENTRAL--003 ARAUCO S.A.P.E.M
    
INSERT INTO TIPO_PANELES (descripcion) VALUES
    ('Placa solar fotovoltaica'),
    ('Placa solar térmica'),
    ('Placa solar bifacial'),
    ('Placa solar monocristalina'),
    ('Placa solar policristalina'),
    ('Placa solar de película delgada'),
    ('Panel solar de célula partida'),
    ('Panel solar de célula PERC');

INSERT INTO SOLAR (idCentral, idTipoPaneles, superficiePaneles, mediaHorasSolares) VALUES
    (2,1,2000, 256), /*--CENTRAL 002 CONSTRUCCIONES  ELECTROMECÁNICAS DEL OESTE S.A*/
    (4,1,2000, 128);  /*-- CENTRAL--004 ARAUCO S.A.P.E.M*/
INSERT INTO TERMICA (idCentral, volCarbonProducido, volEmisiones, cantidadHornos) VALUES
    (5,500,600,200), /*-- JEMSE*/
    (7,800,700,250); /*-- PETROQUIMICA COMODORO RIVADAVIA S.A*/
INSERT INTO HIDROELECTRICA (idCentral, capacidadVolMax, cantidadTurbinas) VALUES
    (6,40000,50), /*-- JEMSE*/
    (8,40000,50); /*-- PETROQUIMICA COMODORO RIVADAVIA S.A*/

INSERT INTO SUMINISTRADOR (pais, nombre) VALUES
    ('Argentina', 'Plutonio SH'),
    ('Alemania', 'DISTRIPARK GMBH'),
    ('Alemania', 'BOSS CHEMIE AG'),
    ('Alemania', 'W&T WATERLINE GMBH'),
    ('Alemania', 'DR. K. HOLLBORN & SÖHNE GMBH & CO. KG'),
    ('Turquia', 'APSANBIJON');


INSERT INTO TRANSPORTISTA (Nombre, matricula) VALUES
    ('Transporte Cruz Del Sur', 'ABC123VB'),
    ('Transporte Jacobsen', 'XYZ456SD'),
    ('Transporte Szilak', 'RTY153ABC'),
    ('Transporte Esquel', 'DEF153ACT');
    
-- 3 COMPRAS DE PLUTONIO
INSERT INTO PORTE (idTransportista, idSuministrador, idNuclear, cantPlutonio, fecha) VALUES
    (1, 1, 1, 50,'2023-11-01'),
    (2, 2, 1, 200, '2023-11-04'),
    (3, 3, 1, 350, '2023-11-05'),
    (4, 4, 1, 450, '2023-11-12'),
    (1, 3, 2, 130, '2023-11-13'),
    (2, 4, 2, 230, '2023-11-14'),
    (3, 5, 2, 330, '2023-11-15'),
    (4, 6, 2, 430, '2023-11-16');
 


-- 5 ESTACIONES
INSERT INTO ESTACION_PRIMARIA (nombre, cantTransformadoresAltaTension, cantTransformadoresBajaTension) VALUES
    ('Estacion-001', 2, 3),
    ('Estacion-002', 1, 2),
    ('Estacion-003', 3, 4),
    ('Estacion-004', 2, 1),
    ('Estacion-005', 4, 3); 

-- 10 ENTREGAS DE ENERGIA  
INSERT INTO ENTREGA_ENERGIA (idCentral, idEstacion, cantidadEnergia) VALUES
    (1, 1, 100),
    (2, 2, 120),
    (3, 3, 190), 
    (4, 4, 290), 
    (5, 5, 390), 
    (6, 1, 120), 
    (7, 2, 330), 
    (8, 3, 320), 
    (9, 4, 450), 
    (10, 5, 490);

/*-- 5 REDES*/
INSERT INTO RED_DISTRIBUCION (idEstacion, numeroRed) VALUES
    (1, 'Red 1'),
    (2, 'Red 2'),
    (3, 'Red 3'),
    (4, 'Red 4'),
    (5, 'Red 5');


INSERT INTO PROPIETARIO (nombre) VALUES
    ('Tesla Energia SA'),
    ('Panamerican Energy SA'),
    ('William Gilbert SRL'),
    ('James Watt Energy SA'),
    ('Charles Augustin Coulomb SA'),
    ('Luigi Galvani SRL'),
    ('Alejandro Volta Compania Electrica'),
    ('André Marie Ampère SA'),
    ('Georg Simon Ohm Energy'), 
    ('Michael Faraday SRL');

/*-- cada red tiene al menos dos compañías propietarias*/
INSERT INTO PROPIEDAD (idPropietario, idRed) VALUES
    (1, 1),
    (2, 1),
    (2, 2),
    (3, 2),
    (3, 3),
    (4, 3),
    (4, 4),
    (5, 4),
    (5, 5),
    (6, 5); 
    
-- intercambios de energía entre redes
INSERT INTO INTERCAMBIO (idRedEnvio, idRedRecibida, cantEnergia) VALUES
    (1, 2, 500),
    (2, 3, 300),
    (3, 4, 100),
    (4, 5, 200),
    (2, 4, 220),
    (2, 1, 210),
    (3, 2, 320),
    (4, 3, 610),
    (5, 4, 440),
    (4, 5, 245),
    (3, 4, 290);


INSERT INTO LINEA (idRed,nombre, longitud) VALUES
    (1,'Linea 1', 50),
    (1,'Linea 2', 60),
    (1,'Linea 3', 70),
    (2,'Linea 4', 80),
    (2,'Linea 5', 90),
    (2,'Linea 6', 40),
    (3,'Linea 7', 45),
    (3,'Linea 8', 40),
    (3,'Linea 9', 90),
    (4,'Linea 10', 60),
    (4,'Linea 11', 70),
    (4,'Linea 12', 60),
    (5,'Linea 13', 80),
    (5,'Linea 14', 50),
    (5,'Linea 15', 80);

/*--18 subestaciones*/
INSERT INTO SUBESTACION (idLinea, nombre) VALUES
    (1, 'Subestacion-001'),
    (2, 'Subestacion-002'),
    (3, 'Subestacion-003'),
    (4, 'Subestacion-004'),
    (5, 'Subestacion-005'),
    (5, 'Subestacion-006'),
    (6, 'Subestacion-007'),
    (7, 'Subestacion-008'),
    (7, 'Subestacion-009'),
    (8, 'Subestacion-010'),
    (8, 'Subestacion-011'),
    (9, 'Subestacion-012'),
    (10, 'Subestacion-013'),
    (11, 'Subestacion-014'),
    (12, 'Subestacion-015'),
    (13, 'Subestacion-016'),
    (14, 'Subestacion-017'),
    (15, 'Subestacion-018');

INSERT INTO PROVINCIA (nombre, codigo)  VALUES
    ('Buenos Aires', 'BAA001'),
    ('Catamarca', 'CAA001'),
    ('Chaco','CHA001'),
    ('Chubut','CHU001'),
    ('Córdoba','COR001'),
    ('Corrientes','COR002'),
    ('Entre Ríos','ENT001'),
    ('Formosa', 'FOR01'),
    ('Jujuy','JUJ001'),
    ('La Pampa','LAP001'),
    ('La Rioja','LAR001'),
    ('Mendoza','MEN001'),
    ('Misiones','MIS001'),
    ('Neuquén', 'NEU001'),
    ('Río Negro', 'RIO001'),
    ('Salta','SAL001'),
    ('San Juan','SAN001'),
    ('San Luis','SAN002'),
    ('Santa Cruz','SAN003'),
    ('Santa Fe','SAN004'),
    ('Santiago del Estero','SAN005'),
    ('Tierra del Fuego','TIER001'),
    ('Tucumán','TUC001');

/*--18 zonas de servicio*/
INSERT INTO ZONA_SERVICIO (idProvincia, nombre) VALUES
    (1, 'Zona-001'),
    (2, 'Zona-002'),
    (3, 'Zona-003'),
    (4, 'Zona-004'),
    (5, 'Zona-005'),
    (6, 'Zona-006'),
    (7, 'Zona-007'),
    (8, 'Zona-008'),
    (9, 'Zona-009'),
    (10, 'Zona-010'),
    (11, 'Zona-011'),
    (12, 'Zona-012'),
    (13, 'Zona-013'),
    (14, 'Zona-014'),
    (15, 'Zona-015'),
    (16, 'Zona-016'),
    (17, 'Zona-017'),
    (18, 'Zona-018');


INSERT INTO ABASTECIMIENTO (idSubestacion, idZona, cantidadEnergia) VALUES
    (1,1,450),
    (2,1,150),
    (3,1,350),
    (4,1,450),
    (5,1,550),
    (6,1,750),
    (7,1,850),
    (8,1,900),
    (9,1,400),
    (10,1,500),
    (11,1,200),
    (12,1,620),
    (13,1,720),
    (14,1,920),
    (15,1,430),
    (16,1,230),
    (17,1,330),
    (18,1,460),
    (1,2,450),
    (2,2,150),
    (3,2,350),
    (4,2,450),
    (5,2,550),
    (6,2,750),
    (7,2,850),
    (8,2,900),
    (9,2,400),
    (10,2,500),
    (11,2,200),
    (12,2,620),
    (13,2,720),
    (14,2,920),
    (15,2,430),
    (16,2,230),
    (17,2,330),
    (18,2,460),
    (1,3,450),
    (2,3,150),
    (3,3,350),
    (4,3,450),
    (5,3,550),
    (6,3,750),
    (7,3,850),
    (8,3,900),
    (9,3,400),
    (10,3,500),
    (11,3,200),
    (12,3,620),
    (13,3,720),
    (14,3,920),
    (15,3,430),
    (16,3,230),
    (17,3,330),
    (18,3,460),
    (1,4,450),
    (2,4,150),
    (3,4,350),
    (4,4,450),
    (5,4,550),
    (6,4,750),
    (7,4,850),
    (8,4,900),
    (9,4,400),
    (10,4,500),
    (11,4,200),
    (12,4,620),
    (13,4,720),
    (14,4,920),
    (15,4,430),
    (16,4,230),
    (17,4,330),
    (18,4,460),
    (1,5,450),
    (2,5,150),
    (3,5,350),
    (4,5,450),
    (5,5,550),
    (6,5,750),
    (7,5,850),
    (8,5,900),
    (9,5,400),
    (10,5,500),
    (11,5,200),
    (12,5,620),
    (13,5,720),
    (14,5,920),
    (15,5,430),
    (16,5,230),
    (17,5,330),
    (18,5,460);





