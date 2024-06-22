
INSERT INTO PAIS (nombre) VALUES 
    ('Alemania'),
    ('Bielorrusia'),
    ('Argentina'), 
    ('Australia'),
    ('Bélgica'),
    ('Brasil'),
    ('Bulgaria'),
    ('Canadá'),
    ('Chile'),
    ('China'), 
    ('Croacia'),
    ('Dinamarca'),
    ('España'), 
    ('Francia'), 
    ('Gran Bretaña'), 
    ('Grecia'),
    ('Holanda'),
    ('Italia'),
    ('Kazajistán'),
    ('Letonia'),
    ('Noruega'),
    ('Polonia'),
    ('República Checa'),
    ('Rumania'),
    ('Rusia'),
    ('Serbia'),
    ('Suiza'),
    ('Túnez'),
    ('Ucrania'),
    ('USA'); 

INSERT INTO JUGADOR (nombre, apellido, genero) VALUES
    ('Novak','Djokovic','Masculino'),
    ('Diego','Schwartzman','Masculino'),
    ('Carlos','Alcaraz','Masculino'),
    ('Daniil','Medvedev','Masculino'),
    ('Jannik','Sinner','Masculino'), /* --5 */
    ('Andrey','Rublev','Masculino'),
    ('Stefanos','Tsitsipas','Masculino'),
    ('Alexander','Zverev','Masculino'),
    ('Holger','Rune','Masculino'),
    ('Hubert','Hurkacz','Masculino'), /* --10 */
    ('Taylor','Fritz','Masculino'),
    ('Casper','Ruud','Masculino'),
    ('Alex','De Minaur','Masculino'),
    ('Tommy','Paul','Masculino'),
    ('Grigor','Dimitrov','Masculino'), /* --15 */
    ('Karen','Khachanov','Masculino'),
    ('Frances','Tiafoe','Masculino'),
    ('Ben',	'Shelton','Masculino'),
    ('Cameron','Norrie','Masculino'),
    ('Nicolas','Jarry','Masculino'), /* --20 */
    ('Ugo',	'Humbert','Masculino'),
    ('Francisco','Cerundolo','Masculino'),
    ('Adrian','Mannarino','Masculino'),
    ('Tallon','Griekspoor','Masculino'),
    ('Sebastian','Korda','Masculino'),
    ('Jan-Lennard','Struff','Masculino'),
    ('Alejandro','Davidovich Fokina','Masculino'),
    ('Lorenzo','Musetti','Masculino'),
    ('Sebastian','Baez','Masculino'),
    ('Felix','Auger-Aliassime','Masculino'),
    ('Tomas','Martin Etcheverry','Masculino'),/*  --31 */
    ('Alexander','Bublik','Masculino'), /* --32 */
    ('Iga',	'Swiatek','Femenino'),/*  --33 */
    ('Aryna','Sabalenka','Femenino'), /* --34 */
    ('Coco','Gauff','Femenino'), /* --35 */
    ('Elena','Rybakina','Femenino'), /* --36 */
    ('Jessica','Pegula','Femenino'), /* --37 */
    ('Ons',	'Jabeur','Femenino'), /* --38 */
    ('Marketa','Vondrousova','Femenino'), /* -39 */
    ('Karolina','Muchova','Femenino'), /* --40*/
    ('Maria','Sakkari','Femenino'), 
    ('Barbora','Krejcikova','Femenino'),
    ('Beatriz','Haddad Maia','Femenino'),
    ('Madison','Keys','Femenino'),
    ('Jelena','Ostapenko','Femenino'),
    ('Petra','Kvitova','Femenino'),
    ('Zheng','Qinwen','Femenino'),
    ('Liudmila','Samsonova','Femenino'),
    ('Belinda','Bencic','Femenino'),
    ('Daria','Kasatkina','Femenino'), /* --50 */
    ('Veronika','Kudermetova','Femenino'),
    ('Caroline','Garcia','Femenino'),
    ('Ekaterina','Alexandrova','Femenino'),
    ('Victoria','Azarenka','Femenino'),
    ('Donna','Vekic','Femenino'),
    ('Magda','Linette','Femenino'),
    ('Elina','Svitolina','Femenino'),
    ('Sorana','Cirstea','Femenino'),
    ('Anhelina','Kalinina','Femenino'),
    ('Anastasia','Potapova','Femenino'),
    ('Elise','Mertens','Femenino'),
    ('Jasmine','Paolini','Femenino'),
    ('Lesia','Tsurenko','Femenino'),
    ('Emma','Navarro','Femenino'); /* --64 */

INSERT INTO ARBITRO (nombre, apellido) VALUES
    ('Abelardo', 'Cufia'),
    ('Bart', 'Cools'),
    ('Robert', 'Leroy'),
    ('Jozef', 'Wauters'),
    ('Wim', 'Diallo'),
    ('Thierry', 'van den Broeck'),
    ('Vincent ', 'Peeters'); /* --7  */

INSERT INTO ENTRENADOR (nombre, apellido) VALUES
    ('David', 'Nalbandian'),
    ('Roger', 'Federer'),
    ('Gabriela', 'Sabatini'),
    ('Gaston', 'Gaudio'),
    ('Guillermo', 'Vilas'),
    ('Julian', 'Schmitz'),
    ('Anton','Klein'),
    ('Rayan','Hahn'),
    ('Hamza','Müller'),
    ('Hamza','Richter'),
    ('Rayan','Peters'),
    ('Liam','Peters'),
    ('Louis','Becker'),
    ('Noah','Fischer'),
    ('Adam','Neumann');

INSERT INTO MODALIDAD (nombre) VALUES 
    ('Single Masculino'),
    ('Single Femenino'),
    ('Dobles Masculino'), 
    ('Dobles Femenino'), 
    ('Dobles Mixto');

INSERT INTO FASE (nombre, premioConsuelo) VALUES 
    ('1° ronda', 1200000),
    ('2° ronda', 1400000),
    ('Cuartos de final', 2400000),
    ('Semifinal', 3400000),
    ('Final', 4400000);

INSERT INTO TORNEO (idPais, nombre, ciudad, premioGanador, fecha) VALUES
    (14, 'Roland Garros', 'París', 10000000, '2016-01-01'),
    (30, 'US Open Tennis Championships', 'Nueva York', 10000000, '2021-01-01'),
    (4, 'Australian Open', 'Melbourne', 10000000, '2022-01-01'),
    (15, 'The Championships - Wimbledon', 'Londres', 10000000, '2023-01-01'),
    (30, 'US Open Tennis Championships', 'Nueva York', 10000000, '2022-01-01');
    

INSERT INTO ESTADIO (nombre, ubicacion) VALUES
    ('USTA Billie Jean King National Tennis Center', 'Flushing Meadows-Corona Park'),
    ('All England Lawn Tennis and Croquet Club','Wimbledon'),
    ('Stade Roland Garros','París'),
    ('Melbourne Park','Melbourne Victoria');

INSERT INTO PARTIDO (idFase, idModalidad,idArbitro,idTorneo,puntuacion) VALUES
    (5,1,1,2, '6-0,6-0'), /* final*/
    (4,1,2,2, '6-2,6-3'), /*-- semi*/
    (4,1,3,2, '6-2,6-3'), /*-- semi*/
    (3,1,4,2, '6-2,6-3'), /*-- cuartos --4*/
    (3,1,5,2, '6-2,6-3'), /*-- cuartos*/
    (3,1,6,2, '6-2,6-3'), /*-- cuartos*/
    (3,1,7,2, '6-2,6-3'), /*-- cuartos --7*/
    (2,1,1,2, '6-2,6-3'), /*-- 2ºronda --8*/
    (2,1,2,2, '6-2,6-3'), /*-- 2ºronda --9*/
    (2,1,3,2, '6-2,6-3'), /*-- 2ºronda --10*/
    (2,1,4,2, '6-2,6-3'), /*-- 2ºronda --11*/
    (2,1,5,2, '6-2,6-3'), /*-- 2ºronda --12*/
    (2,1,6,2, '6-2,6-3'), /*-- 2ºronda */
    (2,1,7,2, '6-2,6-3'), /*-- 2ºronda*/
    (2,1,1,2, '6-2,6-3'), /*-- 2ºronda --15*/
    (1,1,1,2, '6-2,6-3'), /*-- 1ºronda --16*/
    (1,1,2,2, '6-2,6-3'), /*-- 1ºronda --17*/
    (1,1,3,2, '6-2,6-3'), /*-- 1ºronda --18*/
    (1,1,4,2, '6-2,6-3'), /*-- 1ºronda --19*/
    (1,1,5,2, '6-2,6-3'), /*-- 1ºronda --20*/
    (1,1,6,2, '6-2,6-3'), /*-- 1ºronda */
    (1,1,7,2, '6-2,6-3'), /*-- 1ºronda*/
    (1,1,1,2, '6-2,6-3'), /*-- 1ºronda --23*/
    (1,1,2,2, '6-2,6-3'), /*-- 1ºronda --24*/
    (1,1,3,2, '6-2,6-3'), /*-- 1ºronda --25*/
    (1,1,4,2, '6-2,6-3'), /*-- 1ºronda --26*/
    (1,1,5,2, '6-2,6-3'), /*-- 1ºronda --27*/
    (1,1,6,2, '6-2,6-3'), /*-- 1ºronda --28*/
    (1,1,7,2, '6-2,6-3'), /*-- 1ºronda --29*/
    (1,1,1,2, '6-2,6-3'), /*-- 1ºronda --30*/
    (1,1,2,2, '6-2,6-3'), /* 1ºronda --31*/

    /*  MODALIDAD SINGLE FEMENINO */
    (5,2,1,3, '6-0,6-0'), /* -- final --32 */
    (4,2,2,3, '6-2,6-3'), /* -- semi */
    (4,2,3,3, '6-2,6-3'), /* -- semi */
    (3,2,4,3, '6-2,6-3'), /* -- cuartos --35 */
    (3,2,5,3, '6-2,6-3'), /* -- cuartos */
    (3,2,6,3, '6-2,6-3'), /* -- cuartos */
    (3,2,7,3, '6-2,6-3'), /* -- cuartos --38 */
    (2,2,1,3, '6-2,6-3'), /* -- 2ºronda --39 */
    (2,2,2,3, '6-2,6-3'), /* -- 2ºronda --40 */
    (2,2,3,3, '6-2,6-3'), /* -- 2ºronda --41 */
    (2,2,4,3, '6-2,6-3'), /* -- 2ºronda --42 */
    (2,2,5,3, '6-2,6-3'), /* -- 2ºronda --43 */
    (2,2,6,3, '6-2,6-3'), /* -- 2ºronda --44 */
    (2,2,7,3, '6-2,6-3'), /* -- 2ºronda --45 */
    (2,2,1,3, '6-2,6-3'), /* -- 2ºronda --46 */
    (1,2,1,3, '6-2,6-3'), /* -- 1ºronda --47 */
    (1,2,2,3, '6-2,6-3'), /* -- 1ºronda --48 */
    (1,2,3,3, '6-2,6-3'), /* -- 1ºronda --49 */
    (1,2,4,3, '6-2,6-3'), /* -- 1ºronda --50 */
    (1,2,5,3, '6-2,6-3'), /* -- 1ºronda --51 */
    (1,2,6,3, '6-2,6-3'), /* -- 1ºronda --52 */
    (1,2,7,3, '6-2,6-3'), /* -- 1ºronda --53 */
    (1,2,1,3, '6-2,6-3'), /* -- 1ºronda --54 */
    (1,2,2,3, '6-2,6-3'), /* -- 1ºronda --55 */
    (1,2,3,3, '6-2,6-3'), /* -- 1ºronda --56 */
    (1,2,4,3, '6-2,6-3'), /* -- 1ºronda --57 */
    (1,2,5,3, '6-2,6-3'), /* -- 1ºronda --58 */
    (1,2,6,3, '6-2,6-3'), /* -- 1ºronda --59 */
    (1,2,7,3, '6-2,6-3'), /* -- 1ºronda --60 */
    (1,2,1,3, '6-2,6-3'), /* -- 1ºronda --61 */
    (1,2,2,3, '6-2,6-3'), /* -- 1ºronda --62 */

    /*ROLAND GARROS 2016 */
    (5,1,1,1, '6-0,6-0'),  /* final 63*/
    (4,1,2,1, '6-2,6-3'),  /*semi*/
    (4,1,3,1, '6-2,6-3'),  /*semi*/
    (3,1,4,1, '6-2,6-3'),  /*cuartos 66*/
    (3,1,5,1, '6-2,6-3'),  /*cuartos*/
    (3,1,6,1, '6-2,6-3'),  /*cuartos*/
    (3,1,7,1, '6-2,6-3'),  /*cuartos 69*/
    (2,1,1,1, '6-2,6-3'),  /*2ºronda 70*/
    (2,1,2,1, '6-2,6-3'),  /*2ºronda 71*/
    (2,1,3,1, '6-2,6-3'),  /*2ºronda 72*/
    (2,1,4,1, '6-2,6-3'),  /*2ºronda 73*/
    (2,1,5,1, '6-2,6-3'),  /*2ºronda 74*/
    (2,1,6,1, '6-2,6-3'),  /*2ºronda 75*/
    (2,1,7,1, '6-2,6-4'),  /*2ºronda 76*/
    (2,1,1,1, '6-3,6-3'),  /*2ºronda 77*/
    (1,1,1,1, '6-2,6-3'),  /*1ºronda 78*/
    (1,1,2,1, '6-2,6-3'),  /*1ºronda 79*/
    (1,1,3,1, '6-4,6-3'),  /*1ºronda 80*/
    (1,1,4,1, '6-2,6-4'),  /*1ºronda 81*/
    (1,1,5,1, '6-2,6-3'),  /*1ºronda 82*/
    (1,1,6,1, '6-3,6-3'),  /*1ºronda 83*/
    (1,1,7,1, '6-2,6-3'),  /*1ºronda 84*/
    (1,1,1,1, '6-2,6-3'),  /*1ºronda 85*/
    (1,1,2,1, '6-4,6-3'),  /*1ºronda 86*/
    (1,1,3,1, '6-2,6-3'),  /*1ºronda 87*/
    (1,1,4,1, '6-2,6-3'),  /*1ºronda 88*/
    (1,1,5,1, '6-2,6-3'),  /*1ºronda 89*/
    (1,1,6,1, '6-4,6-3'),  /*1ºronda 90*/
    (1,1,7,1, '6-2,6-3'),  /*1ºronda 91*/
    (1,1,1,1, '6-4,6-2'),  /*1ºronda 92*/
    (1,1,2,1, '6-0,6-0'),  /*1ºronda 93*/

    /*DOBLES MASCULINOS*/
    (5,3,1,5, '6-2,6-1'),  /* final 94*/
    (4,3,2,5, '6-3,6-3'),  /*semi 95*/
    (4,3,3,5, '6-1,6-2'),  /*semi 96*/
    (3,3,4,5, '6-0,6-3'),  /*cuartos 97*/
    (2,3,5,5, '6-1,6-4'),  /*2 ronda 98*/
    (1,3,6,5, '6-5,6-3');  /*1 ronda 99*/


INSERT INTO JUGADOR_PARTIDO (idJugador, idPartido, ganador) VALUES
    (1,1,'no'), /*--final*/
    (2,1,'si'), /*--final Gano el peque*/
    (2,2,'si'), /*--semi1*/
    (3,2,'no'), /*--semi1*/
    (1,3,'si'), /*--semi2*/
    (4,3,'no'), /*--semi2*/
    (1,4,'si'), /*--cuartos*/
    (5,4,'no'), /*--cuartos*/
    (2,5,'si'), /*--cuartos*/
    (6,5,'no'), /*--cuartos*/
    (3,6,'si'), /*--cuartos*/
    (7,6,'no'), /*--cuartos*/
    (4,7,'si'), /*--cuartos*/
    (8,7,'no'), /*--cuartos*/
    (1,8,'si'), /*--2º ronda*/
    (9,8,'no'), /*--2º ronda*/
    (5,9,'si'), /*--2º ronda*/
    (10,9,'no'), /*--2º ronda*/
    (2,10,'si'), /*--2º ronda*/
    (11,10,'no'),/* --2º ronda*/
    (6,11,'si'), /*--2º ronda*/
    (12,11,'no'),/* --2º ronda*/
    (3,12,'si'), /*--2º ronda*/
    (13,12,'no'),/* --2º ronda*/
    (7,13,'si'), /*--2º ronda*/
    (14,13,'si'),/* --2º ronda*/
    (4,14,'si'), /*--2º ronda*/
    (15,14,'no'),/* --2º ronda*/
    (8,15,'si'), /*--2º ronda*/
    (16,15,'si'),/* --2º ronda*/
    (1,16,'si'), /*--1º ronda*/
    (17,16,'no'),/* --1º ronda*/
    (9,17,'si'), /*--1º ronda*/
    (18,17,'no'),/* --1º ronda*/
    (5,18,'si'), /*--1º ronda*/
    (19,18,'no'),/* --1º ronda*/
    (10,19,'si'),/* --1º ronda*/
    (20,19,'no'),/* --1º ronda*/
    (2,20,'si'), /*--1º ronda*/
    (21,20,'no'),/* --1º ronda*/
    (11,21,'si'),/* --1º ronda*/
    (22,21,'no'),/* --1º ronda*/
    (6,22,'si'), /*--1º ronda*/
    (23,22,'no'),/* --1º ronda*/
    (12,23,'si'),/* --1º ronda*/
    (24,23,'no'),/* --1º ronda*/
    (3,24,'si'), /*--1º ronda*/
    (25,24,'no'),/* --1º ronda*/
    (13,25,'si'),/* --1º ronda*/
    (26,25,'no'),/* --1º ronda*/
    (7,26,'si'), /*--1º ronda*/
    (27,26,'no'),/* --1º ronda*/
    (14,27,'si'),/* --1º ronda*/
    (28,27,'no'),/* --1º ronda*/
    (4,28,'si'), /*--1º ronda*/
    (29,28,'no'),/* --1º ronda*/
    (15,29,'si'),/* --1º ronda*/
    (30,29,'no'),/* --1º ronda*/
    (8,30,'si'), /*--1º ronda*/
    (31,30,'no'),/* --1º ronda*/
    (16,31,'si'),/* --1º ronda*/ 
    (32,31,'no'),/* --1º ronda*/ 
 
    /* SINGLE FEMENINO */ 
    (33,32,'si'),/* --final */
    (34,32,'no'),/* --final  */
    (34,33,'si'),/* --semi1 */
    (35,33,'no'),/* --semi1 */
    (33,34,'si'),/* --semi2 */
    (36,34,'no'),/* --semi2 */
    (33,35,'si'),/* --cuartos */
    (37,35,'no'),/* --cuartos */
    (34,36,'si'),/* --cuartos */
    (38,36,'no'),/* --cuartos */
    (35,37,'si'),/* --cuartos */
    (39,37,'no'),/* --cuartos */
    (36,38,'si'),/* --cuartos */
    (40,38,'no'),/* --cuartos */
    (33,39,'si'),/* --2º ronda */
    (41,39,'no'),/* --2º ronda */
    (37,40,'si'),/* --2º ronda */
    (42,40,'no'),/* --2º ronda */
    (34,41,'si'),/* --2º ronda */
    (11,41,'no'),/* --2º ronda */
    (38,42,'si'),/* --2º ronda */
    (44,42,'no'),/* --2º ronda */
    (35,43,'si'),/* --2º ronda */
    (45,43,'no'),/* --2º ronda */
    (39,44,'si'),/* --2º ronda */
    (46,44,'no'),/* --2º ronda */
    (36,45,'si'),/* --2º ronda */
    (47,45,'no'),/* --2º ronda */
    (40,46,'si'),/* --2º ronda */
    (48,46,'no'),/* --2º ronda */
    (33,47,'si'),/* --1º ronda */
    (49,47,'no'),/* --1º ronda */
    (41,48,'si'),/* --1º ronda */
    (50,48,'no'),/* --1º ronda */
    (37,49,'si'),/* --1º ronda */
    (51,49,'no'),/* --1º ronda */
    (42,50,'si'),/* --1º ronda */
    (52,50,'no'),/* --1º ronda */
    (34,51,'si'),/* --1º ronda */
    (23,51,'no'),/* --1º ronda */
    (43,52,'si'),/* --1º ronda */
    (54,52,'no'),/* --1º ronda */
    (38,53,'si'),/* --1º ronda */
    (55,53,'no'),/* --1º ronda */
    (44,54,'si'),/* --1º ronda */
    (56,54,'no'),/* --1º ronda */
    (35,55,'si'),/* --1º ronda */
    (57,55,'no'),/* --1º ronda */
    (45,56,'si'),/* --1º ronda */
    (58,56,'no'),/* --1º ronda */
    (39,57,'si'),/* --1º ronda */
    (59,57,'no'),/* --1º ronda */
    (46,58,'si'),/* --1º ronda */
    (60,58,'no'),/* --1º ronda */
    (36,59,'si'),/* --1º ronda */
    (61,59,'no'),/* --1º ronda */
    (47,60,'si'),/* --1º ronda */
    (62,60,'no'),/* --1º ronda */
    (40,61,'si'),/* --1º ronda */
    (63,61,'no'),/* --1º ronda */
    (48,62,'si'),/* --1º ronda */
    (64,62,'no'),/* --1º ronda */

    /* ROLAND GARROS*/
    (1,63,'si'), /*--final gano Novak*/
    (2,63,'no'), /*--final */
    (2,64,'si'), /*--semi1*/
    (3,64,'no'), /*--semi1*/
    (1,65,'si'), /*--semi2*/
    (4,65,'no'), /*--semi2*/
    (1,66,'si'), /*--cuartos*/
    (5,66,'no'), /*--cuartos*/
    (2,67,'si'), /*--cuartos*/
    (6,67,'no'), /*--cuartos*/
    (3,68,'si'), /*--cuartos*/
    (7,68,'no'), /*--cuartos*/
    (4,69,'si'), /*--cuartos*/
    (8,69,'no'), /*--cuartos*/
    (1,70,'si'), /*--2º ronda*/
    (9,70,'no'), /*--2º ronda*/
    (5,71,'si'), /*--2º ronda*/
    (10,71,'no'), /*--2º ronda*/
    (2,72,'si'), /*--2º ronda*/
    (11,72,'no'),/* --2º ronda*/
    (6,73,'si'), /*--2º ronda*/
    (12,73,'no'),/* --2º ronda*/
    (3,74,'si'), /*--2º ronda*/
    (13,74,'no'),/* --2º ronda*/
    (7,75,'si'), /*--2º ronda*/
    (14,75,'no'),/* --2º ronda*/
    (4,76,'si'), /*--2º ronda*/
    (15,76,'no'),/* --2º ronda*/
    (8,77,'no'), /*--2º ronda*/
    (16,77,'si'),/* --2º ronda*/
    (1,78,'si'), /*--1º ronda*/
    (17,78,'no'),/* --1º ronda*/
    (9,79,'si'), /*--1º ronda*/
    (18,79,'no'),/* --1º ronda*/
    (5,80,'si'), /*--1º ronda*/
    (19,80,'no'),/* --1º ronda*/
    (10,81,'si'),/* --1º ronda*/
    (20,81,'no'),/* --1º ronda*/
    (2,82,'si'), /*--1º ronda*/
    (21,82,'no'),/* --1º ronda*/
    (11,83,'si'),/* --1º ronda*/
    (22,83,'no'),/* --1º ronda*/
    (6,84,'si'), /*--1º ronda*/
    (23,84,'no'),/* --1º ronda*/
    (12,85,'si'),/* --1º ronda*/
    (24,85,'no'),/* --1º ronda*/
    (3,86,'si'), /*--1º ronda*/
    (25,86,'no'),/* --1º ronda*/
    (13,87,'si'),/* --1º ronda*/
    (26,87,'no'),/* --1º ronda*/
    (7,88,'si'), /*--1º ronda*/
    (27,88,'no'),/* --1º ronda*/
    (14,89,'si'),/* --1º ronda*/
    (28,89,'no'),/* --1º ronda*/
    (4,90,'si'), /*--1º ronda*/
    (29,90,'no'),/* --1º ronda*/
    (15,91,'si'),/* --1º ronda*/
    (30,91,'no'),/* --1º ronda*/
    (8,92,'si'), /*--1º ronda*/
    (31,92,'no'),/* --1º ronda*/
    (16,93,'si'),/* --1º ronda*/ 
    (32,93,'no'),/* --1º ronda*/ 

    /*US OPEN DOBLES MASCULINOS*/
    (1,94,'si'), /*final*/
    (2,94,'si'), /*final */
    (3,94,'no'), /*final*/
    (4,94,'no'), /*final*/
    (1,95,'si'), /*semi*/
    (2,95,'si'), /*semi*/
    (5,95,'no'), /*semi*/
    (6,95,'no'), /*semi*/
    (3,96,'si'), /*semi*/
    (4,96,'si'), /*semi*/
    (7,96,'no'), /*semi*/
    (8,96,'no'), /*semi*/
    (1,97,'si'), /*cuartos*/
    (2,97,'si'), /*cuartos*/
    (9,97,'no'), /*cuartos*/
    (10,97,'no'), /*cuartos*/
    (1,98,'si'), /*2 ronda*/
    (2,98,'si'), /*2 ronda*/
    (11,98,'no'), /*2 ronda*/
    (12,98,'no'), /*2 ronda*/
    (1,99,'si'), /*1 ronda*/
    (2,99,'si'), /*1 ronda*/
    (13,99,'no'), /*1 ronda*/
    (14,99,'no'); /*1 ronda*/


INSERT INTO ENTRENAMIENTO (idEntrenador, idJugador, fecha) VALUES 
    (1,1,'2021-03-01'),
    (1,2,'2021-03-01'),
    (1,3,'2021-03-01'),
    (1,4,'2021-04-12'),
    (1,5,'2021-04-12'),
    (1,6,'2021-04-12'),
    (1,33,'2021-05-01'),
    (1,34,'2021-05-01'),
    (1,35,'2021-05-01'),
    (1,1,'2021-07-01'),
    (1,2,'2021-07-01'),
    (1,3,'2021-07-01'),
    (1,4,'2021-07-01'),
    (1,5,'2021-07-01'),
    (1,6,'2021-07-01');
    
