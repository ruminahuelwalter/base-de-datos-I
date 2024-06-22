

SELECT DISTINCT P.nombre AS NOMBRE, P.apellido AS APELLIDO, A.nombre AS AEROPUERTO, A.provincia AS PROVINCIA
    FROM PILOTO P
    INNER JOIN TRIPULACION T 
        ON P.idPiloto = T.idPiloto 
    INNER JOIN VUELO V 
        ON  V.idVuelo = T.idVuelo 
    INNER JOIN RUTA R 
        ON R.idDestino = V.idRuta 
    INNER JOIN AEROPUERTO A 
        ON A.idAeropuerto = R.idDestino
    WHERE A.idAeropuerto = 5;

/* --WHERE A.provincia = 'Tucumán'; */


/* -- ii. Total de horas voladas por cada piloto en el último mes.  */
SELECT P.idPiloto AS IDPILOTO, P.nombre AS NOMBRE, P.apellido AS APELLIDO, SUM(P.horasVuelo) AS TotalHorasVuelo
    FROM PILOTO P
    INNER JOIN TRIPULACION T 
        ON P.idPiloto = T.idPiloto
    INNER JOIN VUELO V 
        ON V.idVuelo = T.idVuelo
    WHERE V.fecha >= CURDATE() - INTERVAL 1 MONTH AND V.fecha < CURDATE()
    GROUP BY P.idPiloto, P.nombre, P.apellido;


/* -- iii. Cantidad de aviones que realizan mantenimiento en el aeropuerto de Ezeiza. */

SELECT AE.nombre AS NOMBRE, COUNT(idAvion) AS CantAvMantEnEzeiza
    FROM AVION AV
    INNER JOIN AEROPUERTO AE
    ON AV.idAeropuerto = AE.idAeropuerto
    INNER JOIN TIPOAEROPUERTO TA
    ON AE.idAeropuerto = TA.idAeropuerto
    INNER JOIN TIPO T 
    ON TA.idTipo = T.idTipo
    WHERE T.idTipo = 2 AND AE.idAeropuerto =1; 

/* -- Busqueda por nombre
--WHERE T.nombre = 'mantenimiento' AND AE.nombre = 'Aeropuerto Internacional Ministro Pistarini'; 

--iv. Detalle de los vuelos programados para la semana próxima.  */
SELECT V.numero AS NUMVUELO, V.estado AS ESTADO, AE1.nombre AS ORIGEN, AE2.nombre AS DESTINO, V.hora AS HORA, V.fecha AS FECHA 
    FROM VUELO V
    INNER JOIN RUTA R
    ON V.idRuta = R.idRuta
    INNER JOIN AEROPUERTO AE1 
    ON R.idOrigen = AE1.idAeropuerto 
    INNER JOIN AEROPUERTO AE2
    ON R.idDestino = AE2.idAeropuerto
    WHERE V.fecha >= CURDATE() AND V.fecha < CURDATE() + INTERVAL 1 WEEK;


/* --v Detalle de los vuelos realizados por la comisario de abordo Daniela Perez. */
SELECT V.idVuelo, TE.nombre AS NOMBRE, TE.apellido AS APELLIDO, R.nombre AS ROL, V.fecha AS FECHA
FROM TRIPULACION TN
    INNER JOIN TRIPULANTE TE 
        ON TN.idTripulante = TE.idTripulante
    INNER JOIN VUELO V 
        ON V.idVuelo = TN.idVuelo
    INNER JOIN ROL R
       ON TE.idRol = R.idRol
        WHERE TE.Nombre = 'Daniela' AND TE.apellido = 'Perez' AND R.idRol = 2 /* --R.nombre = 'Comisario de abordo' */
        AND V.fecha <= CURDATE() /* -- No muestra los proximos */
