
/*-- Cuáles fue la central nuclear que compro menos plutonio en el último mes. */
SELECT N.idNuclear, C.nombre AS Central, P.cantPlutonio, P.fecha AS FECHA
    FROM NUCLEAR N
    INNER JOIN CENTRAL C 
        ON N.idCentral = C.idCentral
    INNER JOIN PORTE P 
        ON N.idNuclear = P.idNuclear
    INNER JOIN SUMINISTRADOR S 
        ON P.idSuministrador = S.idSuministrador
    WHERE MONTH(P.fecha) = MONTH(CURRENT_DATE)
    ORDER BY P.cantPlutonio ASC LIMIT 1;

/*-- Quien fue el transportista que realizo más transportes para el vendedor Plutonio SH.*/

SELECT T.nombre AS 'Transportista', P.idPorte, P.fecha ,COUNT(P.idPorte) AS 'CantidadTransportes'
    FROM TRANSPORTISTA T
    INNER JOIN PORTE P
        ON T.idTransportista = P.idTransportista
    INNER JOIN SUMINISTRADOR S
        ON P.idSuministrador = S.idSuministrador
    WHERE S.nombre = 'Plutonio SH'
    GROUP BY
    t.idTransportista
    ORDER BY
        COUNT(p.idPorte) DESC
    LIMIT 1;

/*--Cantidad total de energía intercambiada entre la Red 1 y la Red 2.*/

SELECT SUM(I.cantEnergia) AS 'CantidadTotalIntercambiada'
    FROM INTERCAMBIO I
    INNER JOIN RED_DISTRIBUCION RED1 
        ON I.idRedEnvio = RED1.idRed
    INNER JOIN RED_DISTRIBUCION RED2 
        ON I.idRedRecibida = RED2.idRed
    WHERE
        RED1.numeroRed = 'Red 1' 
    AND
        RED2.numeroRed = 'Red 2'; 


/*-- Quienes son los propietarios de la Red 1. */
SELECT P.idPropietario, P.Nombre AS 'Propietario'
    FROM PROPIEDAD PR
    INNER JOIN
        PROPIETARIO P 
        ON PR.idPropietario = P.idPropietario
    INNER JOIN RED_DISTRIBUCION R 
        ON PR.idRed = R.idRed
    WHERE
    R.numeroRed = 'Red 1'; 

/*-- Que subestación es abastecida por la Línea 1 y cuáles son las zonas de */
/*-- servicio asociada y toda la información inherente a cada zona. */

SELECT S.idSubestacion, S.nombre AS 'Subestacion', L.idLinea, z.idZona, z.nombre AS 'Zona', p.idProvincia, p.nombre AS 'Provincia'
    FROM SUBESTACION S
    INNER JOIN LINEA L 
        ON s.idLinea = L.idLinea
    INNER JOIN RED_DISTRIBUCION R ON 
        L.idRed = R.idRed
    INNER JOIN ZONA_SERVICIO Z 
        ON R.idEstacion = Z.idProvincia
    INNER JOIN PROVINCIA P 
        ON Z.idProvincia = p.idProvincia
    WHERE L.nombre = 'Linea 1'; 

