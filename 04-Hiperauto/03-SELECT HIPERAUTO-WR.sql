

/* --i Detalle de la cantidad mínima requerida de cada sucursal para el repuesto 
-- Parrilla de Suspensión Derecha.  */
SELECT P.NOMBRE, S.cantMinima AS CANT_REQU, SU.nombre
FROM STOCK S
INNER JOIN PIEZA P
ON P.idPieza = S.idPieza
INNER JOIN SUCURSAL SU
ON S.idSucursal = SU.idSucursal
WHERE P.nombre = 'Parrilla de Suspensión Derecha';

/* ii Detalle de todas las concesionarias informando las sucursales que la 
 abastecen  
 */
SELECT C.nombre AS NOMBRE_CONCESIONARIO, S.nombre AS NOMBRE_SUCURSAL
FROM CONCESIONARIO C
INNER JOIN SUCURSAL S
ON C.idSucursal = S.idSucursal;

/* iii Detalle de los pedidos realizados la última semana. */
SELECT DP.CantPiezas, P.Codigo, DP.FechaPedido, DP.IdPieza 
FROM DETALLE_PEDIDO DP
JOIN PEDIDO P ON DP.IdPedido = P.IdPedido
WHERE DP.FechaPedido >= DATE_SUB(CURDATE(), INTERVAL 1 WEEK);

/* iv Detalle del stock de repuesto de cada sucursal.   */
SELECT SU.nombre AS NOMBRE, su.direccion AS DIRECION, S.cantidad AS CANTIDAD, S.idStock,S.idPieza, SU.ciudad AS CIUDAD FROM STOCK S
JOIN SUCURSAL SU ON S.IdSucursal = SU.IdSucursal;

/* v Que sucursal tiene la mayor cantidad de volantes de Fiat Uno S.   */
SELECT STOCK.cantidad, SUCURSAL.nombre, PIEZA.nombre
FROM STOCK
INNER JOIN PIEZA
ON STOCK.idPieza = PIEZA.idPieza
INNER JOIN SUCURSAL
ON STOCK.idSucursal = SUCURSAL.idSucursal
WHERE PIEZA.nombre = 'Volantes de Fiat Uno S'
ORDER BY STOCK.cantidad DESC
LIMIT 1;
