

INSERT INTO RECARGO (recargo500a750, recargoMasDe750) VALUES
    (1.10,1.15),
    (1.10,1.15),
    (1.10,1.15),
    (1.10,1.15);

INSERT INTO EMPRESA (nombre,direccion, telefono, idRecargo) VALUES
    ('Allen SA','Río Negro 114', 5412557963,1),
    ('Candelaria HNOS','Río Negro 789',5412502431,3),
    ('Colonia Catriel SA','Catriel Río Negro 200',5412501512,1), 
    ('De Azul SRL','Buenos Aires 1024',5412557432,2),
    ('Río de la Plata SRL','Buenos Aires',5412502012,1),
    ('Espora SA','Bahía Blanca 547',5412557432,2),
    ('Caleta Olivia SRL','Santa Cruz 900',5412501983,1), 
    ('Casilda SRL','Santa Fe',5412502001,4),
    ('Cosquín SA','Córdoba 703',5412501983,1),
    ('Paraná Autoelevadores SRL','Entre Ríos 478',5412501415,4), 
    ('Pierrestegui SRL'	,'Concordia Entre Ríos 4671',5412500987,4),
    ('Sanchez HNOS','Concordia Entre Ríos 4671',5415200891,1); /*12*/


INSERT INTO SERVICIO (nombre, rangoPeso) VALUES
    ('mudanza', '200-500'),
    ('autoelevador', '500-1000'),
    ('carga y descarga', '200-500'),
    ('embalaje', '200-500'),
    ('grua', '1000-3000');


INSERT INTO EMPLEADO (nombre, apellido, nif, telefono, telefonoEmpresa, tipo) VALUES 
    ('Juan', 'Perez', '7655537', '15341775967', '1571651342', 'jefe mudanza'),
    ('Antonio', 'Fernández', '7655500', '15341775961', '1571651456', 'mudanza'),
    ('José', 'Díaz', '7655501', '15341775917', '1571651141', 'mudanza'),
    ('Manuel', 'Alonso', '7655502', '15341775978', '1571654582', 'conductor'),
    ('Antonio', 'López', '7655503', '15341775912', '1571656398', 'conductor'),
    ('Francisco', 'Pirz', '7655504', '15341775901', '1571652001', 'jefe mudanza'),
    ('David', 'Ferrari', '7655505', '15341775902', '1571651432', 'mudanza'),
    ('Juan', 'Moreno', '765515', '15341775903', '1571678958', 'mudanza'),
    ('Daniel', 'Ruiz', '7655516', '15341775945', '1571657845', 'mudanza'),
    ('Alejandro', 'Arias', '7655520', '15341770967', '1571651993', 'jefe mudanza'),
    ('Rafael', 'Pereyra', '7655521', '15341775911', '1571651994', 'conductor');


INSERT INTO LOCALIDAD (nombre, codigoPostal, provincia) VALUES
    ('La Plata','B1900','Buenos Aires'),
    ('San Fernando del Valle de Catamarca','K4700','Catamarca'),
    ('Resistencia','A3500','Chaco'),
    ('Rawson','U9103','Chubut'),
    ('Córdoba','B5000','Córdoba'),
    ('Corrientes','W3400','Corrientes'),
    ('Paraná','E3100','Entre Ríos'),
    ('Formosa','P3600','Formosa'),
    ('San Salvador de Jujuy','Y4600','Jujuy'),
    ('Santa Rosa','L6300','La Pampa'),
    ('La Rioja','F5300','La Rioja'),
    ('Mendoza','M5500','Mendoza'),
    ('Posadas','N3300','Misiones'),
    ('Neuquén','N8300','Neuquén'),
    ('Viedma','R8500','Río Negro'),
    ('Salta','A4400','Salta'),
    ('San Juan','J5400','San Juan'),
    ('San Luis','D5700','San Luis'),
    ('Río Gallegos','Z9400','Santa Cruz'),
    ('Santa Fe','S3000','Santa Fe'),
    ('Santiago del Estero','G4200','Santiago del Estero'),
    ('Ushuaia','V9410','Tierra del Fuego'),
    ('San Miguel de Tucumán','T4000','Tucumán');
    

INSERT INTO CLIENTE (nombre, apellido, nif, codigoCliente, direccion, telefono) VALUES
    ('Antonia','Ramos','31632980',6916,'Hipólito Yrigoyen 647','0553785269'),
    ('Mar', 'Santos','42311327',4580,'Mitre 31','0881612362'),
    ('Jose','Ortega','30806476',9255,'Herminio Malvino 3319','0519388865'),
    ('Elena', 'Gómez','28286516',8420,'Fragata Sarmiento 416','0109821034'),
    ('Andrea', 'Torres','46176242',3245,'Av del Libertador 750','0678369583'),
    ('Alba', 'Ruiz','1962531',8774,'Entre Ríos 244','0052024387'),
    ('Patricia', 'García','2862347',7704,'Av Colón 1254','0508237268'),
    ('Patricia', 'Núñez','30612965',9909,'Urquiza 427','0416104528'),
    ('Ángeles', 'Iglesias','39843922',8432,'Viamonte 430','0170716135'),
    ('Antonia', 'Moreno','30197218',3786,'Brandsen 805','0643719928');


INSERT INTO EMPRESASERVICIOLOCALIDAD (idEmpresa, idLocalidad, idServicio, precioHora) VALUES
    (1,1,1,1200),
    (1,2,1,1200),
    (1,3,1,1200),
    (12,4,1,1200),
    (1,5,1,1200),
    (1,6,1,1200),
    (1,7,1,1200),
    (1,8,1,1200),
    (1,1,4,1200),
    (1,2,4,1200),
    (1,3,4,1200),
    (1,4,4,1200),
    (1,5,4,1200),
    (1,6,4,1200),
    (1,7,4,1200),
    (1,8,4,1200),
    (2,1,1,1300),
    (2,2,1,1300),
    (2,3,1,1300),
    (2,4,1,1300),
    (2,5,1,1300),
    (2,6,1,1300),
    (2,7,1,1300),
    (2,8,1,1300),
    (2,1,2,1300),
    (2,2,2,1300),
    (2,3,2,1300),
    (2,4,2,1300),
    (2,5,2,1300),
    (2,6,2,1300),
    (2,7,2,1300),
    (2,8,2,1300),
    (3,1,1,1400),
    (3,2,1,1400),
    (3,3,1,1400),
    (3,4,1,1400),
    (3,5,1,1400),
    (3,6,1,1400),
    (3,7,1,1400),
    (3,8,1,1400),
    (4,7,2,2000),
    (4,8,2,2000),
    (4,9,2,2000),
    (4,10,2,2000),
    (4,11,2,2000),
    (4,12,2,2000),
    (4,13,2,2000),
    (4,14,2,2000),
    (4,14,5,2000),
    (5,15,5,4000),
    (5,16,5,4000),
    (5,17,5,4000),
    (5,18,5,4000),
    (5,19,5,4000),
    (5,20,5,4000),
    (5,21,5,4000),
    (5,22,5,4000),
    (5,23,5,4000),
    (12,6,3,2000);



INSERT INTO SOLICITUD (idCliente, idEmpresaServicioLocalidad, idLocalidadOrigen, idLocalidadDestino, direccionOrigen, direccionDestino, codigoSolicitud, estadoSolicitud, fechaSolicitud,fechaResolucion, precioTotal) VALUES
    (1,1,1,1,'Hipólito Yrigoyen 647','Río Carapachay Y Arroyo Gallo Fiambre', 'AAA000', 'pendiente', '2023-11-10', '2023-11-22',4562), /* -- empresa Allen SA servicio mudanza */
    (1,9,1,1,'Hipólito Yrigoyen 647','Río Carapachay Y Arroyo Gallo Fiambre', 'AAA000', 'pendiente', '2023-11-10', '2023-11-22',8953), /* -- empresa Allen SA servicio mudanza */
    (2,1,1,1,'Brandsen 805','Mitre 987', 'PAA001', 'rechazada', '2023-11-11', '2023-11-11',5253), /* -- empresa Allen SA servicio mudanza */
    (2,9,1,1,'Brandsen 805','Mitre 987', 'AAQ001', 'rechazada', '2023-11-11', '2023-11-11',6000),
    (2,9,1,1,'Brandsen 805','Mitre 987', 'ADA001', 'rechazada', '2023-11-11', '2023-11-11',5489),
    (3,9,1,1,'Belgrano 330','Alberdi 705', 'ASA001', 'aceptada', '2023-11-11', '2023-11-11',7955),
    (3,9,1,1,'Belgrano 330','Alberdi 705', 'AAV001', 'aceptada', '2023-11-11', '2023-11-11',1354),
    (4,4,1,1,'Fontana 600','Andrew', 'ALA012', 'aceptada', '2023-06-11', '2023-06-11',5354);

INSERT INTO DETALLEMUDANZA (idDetalleMudanza, fechaMudanza, estadoMudanza, duracion) VALUES
    (1,'2023-11-20','En curso',NULL),
    (2,'2023-11-20','En curso',NULL),
    (3,'2023-11-20','En curso',NULL),
    (4,'2023-11-20','En curso',NULL),
    (5,'2023-11-20','En curso',NULL);

INSERT INTO FACTURA (idEmpresa, idCliente, numero, montoPagado,estado,fecha) VALUES
    (12,4,'457781A',213546,'aprobada', '2023-06-11');
