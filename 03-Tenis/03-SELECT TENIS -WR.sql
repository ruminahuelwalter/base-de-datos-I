

/* i. Resultados de todas las fases, ordenado por categoría del torneo de Grand 
Slam US Open edición 2021. */
SELECT P.puntuacion AS RESULTADO, F.nombre AS FASE, M.nombre AS MODALIDAD, T.nombre AS NOMBRE_TORNEO, T.fecha AS FECHA
    FROM PARTIDO P
    INNER JOIN FASE F 
        ON P.idFase = F.idFase
    INNER JOIN MODALIDAD M 
        ON P.idModalidad = M.idModalidad
    INNER JOIN TORNEO T 
        ON P.idTorneo = T.idTorneo
    WHERE T.nombre = 'US Open Tennis Championships' AND EXTRACT(YEAR FROM T.fecha) = '2021'
    ORDER BY M.nombre, F.idFase DESC;

/*  ii. Jugadores que participaron en Roland Garros en 2016. */
SELECT DISTINCT J.nombre AS NOMBRE, J.apellido AS APELLIDO, T.nombre AS TORNEO
    FROM
        JUGADOR J
    INNER JOIN JUGADOR_PARTIDO JP
        ON J.idJugador = JP.idJugador
    INNER JOIN PARTIDO P 
        ON JP.idPartido = P.idPartido
    INNER JOIN TORNEO T 
        ON P.idTorneo = T.idTorneo
    WHERE T.nombre = 'Roland Garros' AND LEFT(T.fecha, 4) = '2016';


/*  iii. Ganadores de dobles masculinos en el US Open 2022 y premio total obtenido. */
SELECT J.nombre AS NOMBRE, J.apellido AS APELLIDO, T.premioGanador AS PREMIO
    FROM JUGADOR J
    INNER JOIN JUGADOR_PARTIDO JP 
        ON J.idJugador = JP.idJugador 
        AND JP.ganador = 'si'
    INNER JOIN PARTIDO P
        ON JP.idPartido = P.idPartido
    INNER JOIN FASE F
        ON P.idFase = F.idFase
    INNER JOIN MODALIDAD M
        ON P.idModalidad = M.idModalidad
    INNER JOIN TORNEO T 
        ON P.idTorneo = T.idTorneo
    WHERE M.idModalidad =  3
        AND F.idFase = 5
        AND T.idTorneo = 5
        AND EXTRACT(YEAR FROM T.fecha) = '2022'
    GROUP BY
        J.idJugador;


/* iv. Detalle de los jugadores entrenados por David Nalbandian entre 01/01/2021 y el 30/06/2021.  */

SELECT J.nombre, J.apellido, E.idEntrenamiento, ER.nombre, ER.apellido
    FROM ENTRENAMIENTO E
    INNER JOIN JUGADOR J
        ON E.idJugador = J.idJugador
    INNER JOIN ENTRENADOR ER
        ON E.idEntrenador = ER.idEntrenador
    WHERE ER.nombre = 'David' AND ER.apellido = 'Nalbandian'
    AND E.fecha BETWEEN '2021-01-01' AND '2021-06-30';

        /* v. Jugador que más dinero ganó en 2022. */
SELECT J.nombre AS NOMBRE, J.apellido AS APELLIDO, SUM(F.premioConsuelo) AS DineroGanado
    FROM JUGADOR J
    INNER JOIN JUGADOR_PARTIDO JP 
        ON J.idJugador = JP.idJugador AND JP.ganador = 'si'
    INNER JOIN PARTIDO P 
        ON JP.idPartido = P.idPartido
    INNER JOIN FASE F 
        ON P.idFase = F.idFase
    INNER JOIN MODALIDAD M 
        ON P.idModalidad = M.idModalidad
    INNER JOIN TORNEO T 
        ON P.idTorneo = T.idTorneo
    WHERE EXTRACT(YEAR FROM T.fecha) = 2022
    GROUP BY
        J.idJugador
    ORDER BY
        DineroGanado DESC
    LIMIT 1;


/* vi. Que fases dirigió el árbitro Abelardo Cufia en el año 2021. */
SELECT F.nombre AS FASE, A.nombre AS NOMBRE,A.apellido AS APELLIDO
    FROM PARTIDO P
    INNER JOIN TORNEO T
        ON P.idTorneo=T.idTorneo
    INNER JOIN ARBITRO A
        ON P.idArbitro = A.idArbitro
    INNER JOIN FASE F
        ON P.idFase = F.idFase
    WHERE A.nombre = 'Abelardo' AND A.apellido = 'Cufia' AND EXTRACT(YEAR FROM T.fecha) = '2021'
    GROUP BY F.idFase;


/*  vii. Que jugadora de single femenino llegó a más finales en 2022. */
SELECT JP.idJugador, COUNT(DISTINCT P.idPartido) AS CantidadFinalesJugadas, J.nombre AS NOMBRE, J.apellido AS APELLIDO
FROM
    JUGADOR_PARTIDO JP
    INNER JOIN PARTIDO P 
        ON JP.idPartido = P.idPartido
    INNER JOIN JUGADOR J
        ON J.idJugador = JP.idJugador
    INNER JOIN MODALIDAD M 
        ON P.idModalidad = M.idModalidad
    INNER JOIN FASE F 
        ON P.idFase = F.idFase
    WHERE
        F.idFase = 5 AND JP.ganador = 'si' AND M.idModalidad = 2
    GROUP BY
        JP.idJugador;

