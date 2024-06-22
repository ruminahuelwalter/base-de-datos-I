/* i Cuáles son las empresas que ofrecen el servicio de autoelevador en la 
provincia de Entre Rios. */
SELECT E.nombre AS EMPRESA, S.nombre AS SERVICIO
	FROM EMPRESASERVICIOLOCALIDAD EMSERLOC
		INNER JOIN EMPRESA E 
			ON E.idEmpresa = EMSERLOC.idEmpresa
        INNER JOIN SERVICIO S 
			ON S.idServicio = EMSERLOC.idServicio
        INNER JOIN LOCALIDAD L 
			ON L.idLocalidad = EMSERLOC.idLocalidad
        WHERE L.provincia = 'Entre Rios'
		AND S.idServicio = 2;
        
/* ii Detalle de las solicitudes rechazadas por la empresa en el último mes.*/
SELECT * FROM SOLICITUD S 
	INNER JOIN EMPRESASERVICIOLOCALIDAD EMSERLOC 
		ON S.idEmpresaServicioLocalidad = EMSERLOC.idEmpresaServicioLocalidad
	INNER JOIN EMPRESA E 
		ON e.idEmpresa = EMSERLOC.idEmpresa
	WHERE S.estadoSolicitud = 'rechazada'
	AND S.fechaSolicitud > DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
    
/* iv Que solicitudes fueron aceptadas e incluyeron el servicio de embalaje*/
SELECT S.idSolicitud, S.direccionOrigen, S.direccionDestino, S.codigoSolicitud, S.estadoSolicitud, S.fechaSolicitud  FROM SOLICITUD S 
	JOIN EMPRESASERVICIOLOCALIDAD EMSERLOC ON S.idEmpresaServicioLocalidad = EMSERLOC.idEmpresaServicioLocalidad
	LEFT JOIN SERVICIO SE ON SE.idServicio = EMSERLOC.idServicio
	WHERE S.estadoSolicitud = 'aceptada'
    AND SE.nombre = 'embalaje';
    
/* v Total facturado por la empresa Sanchez Hnos en el mes de junio de 2023.  */
SELECT SUM(precioTotal) FACTURADO 
	FROM SOLICITUD SO 
		INNER JOIN EMPRESASERVICIOLOCALIDAD EMS
			ON SO.idEmpresaServicioLocalidad = EMS.idEmpresaServicioLocalidad
		INNER JOIN empresa e
			ON e.idEmpresa = EMS.idEmpresa
        WHERE E.nombre = 'Sanchez HNOS'
        AND SO.fechaSolicitud > '2023-06-01' AND SO.fechaSolicitud <= '2023-06-30';
        
/* vi. Que empresas no ofrecen el servicio de grúa en Córdoba.  */
SELECT E.nombre AS NOMBRE
	FROM EMPRESA E
	WHERE E.nombre NOT IN
		(SELECT E.nombre
			FROM EMPRESASERVICIOLOCALIDAD EMS
				INNER JOIN EMPRESA E 
					ON E.idEmpresa = EMS.idEmpresa
				INNER JOIN SERVICIO S 
					ON S.idServicio = EMS.idServicio
				INNER JOIN LOCALIDAD L 
					ON L.idLocalidad = EMS.idLocalidad
				WHERE l.provincia = 'Córdoba' AND s.nombre = 'grua');

    