

INSERT INTO LOCALIDAD (nombre, codigoPostal, provincia) VALUES
    ('Esquel','9200', 'Chubut'),
    ('Puerto Madryn','9120', 'Chubut'),
    ('Comodoro Rivadavia','9000', 'Chubut'),
    ('Guamini','9001', 'Chubut'),
    ('Trevelin','9002', 'Chubut'),
    ('Gualjaina','9201', 'Chubut'),
    ('Tecka','9203', 'Chubut'),
    ('El Bolsón','8430', 'Rio Negro');

INSERT INTO CATEGORIA (nombre) VALUES
    ('provincial'),
    ('nacional'),
    ('autopista'),
    ('regional'),
    ('comercial'),
    ('servidumbre');

INSERT INTO RUTA (nombre, idCategoria) VALUES
    ('Ruta Nacional 1', 2),
    ('Ruta Nacional 2', 2),
    ('Ruta Nacional 3', 2),
    ('Ruta Provincial 1', 1),
    ('Ruta Provincial 2', 1),
    ('Autopista 1', 3); 

INSERT INTO TRAMO (idRuta, idLocalidadInicio, idLocalidadFin, kmInicio, kmFin) VALUES
/*     -- Tramos para Ruta Nacional 1 VIALSUR */
    (1, 1, 2, '0', '50'),
    (1, 2, 3, '50', '100'),
    (1, 3, 4, '100', '150'),
    (1, 4, 5, '150', '200'),
    (1, 5, 6, '200', '250'), /* --5 */

 /*    -- Tramos para Ruta Nacional 2 VIALSUR */
    (2, 6, 3, '0', '75'), /* --6 */
    (2, 3, 5, '75', '150'),
    (2, 5, 2, '150', '225'),
    (2, 2, 4, '225', '300'),
    (2, 4, 1, '300', '375'),/*  --10 */

/*     -- Tramos para Ruta Nacional 3 AUSTRAL */
    (3, 4, 3, '0', '40'), /* --11 */
    (3, 3, 2, '40', '80'),
    (3, 2, 1, '80', '120'),
    (3, 1, 5, '120', '160'),
    (3, 5, 6, '160', '200'), /* --15 */

 /*    -- Tramos para Ruta Provincial 1 AUSTRAL */
    (4, 2, 3, '0', '60'), /* --16 */
    (4, 3, 4, '60', '120'),
    (4, 4, 5, '120', '180'),
    (4, 5, 1, '180', '240'),
    (4, 1, 4, '240', '300'), /* --20 */

/*     -- Tramos para Ruta Provincial 2 AUTOVIAS */
    (5, 3, 1, '0', '50'),
    (5, 1, 4, '50', '100'),
    (5, 4, 2, '100', '150'),
    (5, 2, 5, '150', '200'),
    (5, 5, 3, '200', '250'),

/*     -- Tramos para Autopista 1 AUTOVIAS */
    (6, 1, 2, '0', '80'),
    (6, 2, 3, '80', '160'),
    (6, 3, 4, '160', '240'),
    (6, 4, 5, '240', '320'),
    (6, 5, 1, '320', '400');


INSERT INTO CONFLUENCIA (idTramoInicio, idTramoFin, tipo, kmDeConfluencia) VALUES
    (1, 10, 'Inicio y Fin', '0-375'),
    (6, 15, 'Inicio y Fin', '0-200'),
    (11, 20, 'Inicio y Fin', '0-300');


INSERT INTO EMPRESA (nombre, domicilio, telefono, cuit, codigoPostal, nombreRepresentante, apellidoRepresentante) VALUES
    ('Vial Sur', 'Domicilio 1', '111-111-111', 'CUIT111', 'CP111', 'León', 'Ferrari'),
    ('Austral Construcciones', 'Domicilio 2', '222-222-222', 'CUIT222', 'CP222', 'Vicente', 'Ortiz'),
    ('Autovias del Oeste', 'Domicilio 3', '333-333-333', 'CUIT333', 'CP333', 'Nicolás', 'Sánchez');

-- Insertar concesiones para cada concesionario
INSERT INTO CONCESION (fechaInicio, fechaFinalizacion, idEmpresa) VALUES
    ('2020-01-01', '2022-01-01', 1),
    ('2019-02-01', '2020-04-01', 2),
    ('2018-06-01', '2022-01-01', 3),
    ('2023-01-01', '2026-01-01', 1),/*  --4 Vial sur */
    ('2023-02-01', '2026-01-01', 2), /* --5 Austral */
    ('2023-03-01', '2026-01-01', 3); /* --6 Autovias */
    


INSERT INTO CONCESIONRUTA (idRuta, idConcesion) VALUES
    (1, 4), /*  -- Ruta nacional 1  --vialsur */
    (2, 4), /* -- Ruta nacional 2 -- vialsur */
    (3, 5), /* -- Ruta nacional 3 -- austral */
    (4, 5), /* -- Ruta provincial 1 --austral */
    (5, 6), /* -- Ruta provincial 2 --autovias */
    (6, 6); /* -- autopista --autovias */



INSERT INTO PEAJE (idConcesionRuta, precio, kmUbicacion) VALUES
  /*   -- Peajes para Ruta Nacional 1 */
    (1, 5.00,'50'),
    (1, 6.00,'100'),
    (1, 4.50,'150'),
    (1, 7.50,'200'),
    (1, 6.50,'250'),

/*     -- Peajes para Ruta Nacional 2 */
    (2, 4.00,'75'),
    (2, 5.50,'150'),
    (2, 6.50,'225'),
    (2, 4.50,'300'),
    (2, 7.00,'375'),

   /*  -- Peajes para Ruta Nacional 3 */
    (3, 5.00,'40'),
    (3, 6.00,'80'),
    (3, 4.50,'120'),
    (3, 7.50,'180'),
    (3, 6.50,'240'),

  /*   -- Peajes para Ruta Provincial 1 */
    (4, 3.50,'60'),
    (4, 4.00,'120'),
    (4, 5.00,'180'),
    (4, 3.00,'240'),
    (4, 4.50,'300'),

  /*   -- Peajes para Ruta Provincial 2 */
    (5, 4.00,'50'),
    (5, 5.50,'100'),
    (5, 6.50,'150'),
    (5, 4.50,'200'),
    (5, 7.00,'250'),

    /* -- Peajes para Autopista 1 */
    (6, 6.00,'80'),
    (6, 7.00,'160'),
    (6, 8.00,'240'),
    (6, 5.50,'320'),
    (6, 9.00,'400');

/* -- Insertar obras para cada ruta (3 obras en curso y 1 finalizada por ruta) */
INSERT INTO OBRA (idTramo, idConcesion, estado, montoProyectado, montoEjecutado) VALUES
  /*   -- Obras para Ruta Nacional 1 VialSur idConcesion:4 */
    (1, 4, 'En Curso', 50000.00, 30000.00),
    (5, 4, 'En Curso', 60000.00, 35000.00),
    (10, 4, 'En Curso', 45000.00, 28000.00),
    (3, 4, 'Finalizada', 70000.00, 70000.00),

    /* -- Obras para Ruta Nacional 2 VialSur idConcesion:4 */
    (2, 4, 'En Curso', 55000.00, 32000.00),
    (7, 4, 'En Curso', 50000.00, 30000.00),
    (6, 4, 'En Curso', 60000.00, 35000.00),
    (4, 4, 'Finalizada', 75000.00, 75000.00),

   /*  -- Obras para Ruta Nacional 3 Austral idConcesion: 5 */
    (11, 5, 'En Curso', 50000.00, 30000.00),
    (12, 5, 'En Curso', 55000.00, 32000.00),
    (13, 5, 'En Curso', 60000.00, 35000.00),
    (18, 5, 'Finalizada', 70000.00, 70000.00),

    /* -- Obras para Ruta Provincial 1 Austral idConcesion: 5 */
    (15, 5, 'En Curso', 45000.00, 28000.00),
    (16, 5, 'En Curso', 50000.00, 30000.00),
    (14, 5, 'En Curso', 55000.00, 32000.00),
    (19, 5, 'Finalizada', 80000.00, 80000.00),

  /*   -- Obras para Ruta Provincial 2 Autovias idConcesion: 6 */
    (21, 6, 'En Curso', 60000.00, 35000.00),
    (22, 6, 'En Curso', 45000.00, 28000.00),
    (23, 6, 'En Curso', 50000.00, 30000.00),
    (24, 6, 'Finalizada', 75000.00, 75000.00),

    /* -- Obras para Autopista 1 Autovias idConcesion: 6 */
    (25, 6, 'En Curso', 70000.00, 40000.00),
    (26, 6, 'En Curso', 75000.00, 45000.00),
    (27, 6, 'En Curso', 80000.00, 50000.00),
    (30, 6, 'Finalizada', 90000.00, 90000.00);
