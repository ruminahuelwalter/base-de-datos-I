

/* -- i. Detalle de cada ruta, informando los tramos que la componen.  */
SELECT RUTA.nombre AS RUTA, TRAMO.idTramo AS IDTRAMO, tramo.kmInicio AS KM_INICIO, tramo.kmFIn AS KM_FIN
    FROM RUTA
    INNER JOIN TRAMO
    ON tramo.idRuta = ruta.idRuta;

/* -- ii. Detalle de las rutas que inician en otra ruta. */
SELECT R1.nombre AS RUTA, R2.nombre AS RUTA_INICIA
    FROM RUTA R1
    INNER JOIN TRAMO T 
        ON R1.idRuta = T.idRuta
    INNER JOIN RUTA R2 
        ON T.idLocalidadInicio = R2.idRuta;


/* -- vi. Detalle de los peajes y sus precios de cada ruta concesionada por Vial Sur. */
SELECT R.idRuta, R.nombre AS Ruta, P.precio AS PRECIO, P.kmUbicacion AS KM_UBICACION
    FROM PEAJE P
    INNER JOIN CONCESIONRUTA CR 
        ON P.idConcesionRuta = CR.idConcesionRuta
    INNER JOIN RUTA R 
        ON CR.idRuta = R.idRuta
    INNER JOIN CONCESION C 
        ON CR.idConcesion = C.idConcesion
    INNER JOIN EMPRESA E 
        ON C.idEmpresa = E.idEmpresa
    WHERE E.nombre = 'Vial Sur';

/*     -- vii. Detalle de las obras realizadas por el concesionario Austral Construcciones. */
SELECT R.idRuta, R.nombre AS Ruta, T.idTramo AS TRAMO, O.idObra,O.idConcesion, E.nombre, O.estado, O.montoProyectado, O.montoEjecutado
FROM OBRA O
    INNER JOIN TRAMO T 
        ON O.idTramo = T.idTramo
    INNER JOIN RUTA R
        ON T.idRuta = R.idRuta
    INNER JOIN CONCESIONRUTA CR
        ON T.idRuta = CR.idRuta
    INNER JOIN CONCESION C
        ON CR.idConcesion = C.idConcesion
    INNER JOIN EMPRESA E 
        ON C.idEmpresa = E.idEmpresa
    WHERE E.nombre = 'Austral Construcciones';


/* -- viii. Detalle de la ruta que finaliza en la localidad de Guamini. */
SELECT R.idRuta, R.nombre AS Ruta, T.idTramo, T.kmInicio, T.kmFin, L1.nombre AS LocalidadInicio, L2.nombre AS LocalidadFin
    FROM RUTA R
    INNER JOIN TRAMO T 
        ON R.idRuta = T.idRuta
    INNER JOIN LOCALIDAD L1 
        ON T.idLocalidadInicio = L1.idLocalidad
    INNER JOIN LOCALIDAD L2 
        ON T.idLocalidadFin = L2.idLocalidad
    WHERE L2.nombre = 'Guamini';
