﻿	SELECT 
		OID_ITEM_PROCESO, 
		COD_PROCESO, 
		OBS_PARAMETROS, 
		COD_ESTADO, 
		NEL_INTENTOS_ENVIO, 
		COD_USUARIO, 
		FYH_CREACION, 
		FYH_ACTUALIZACION, 
		COD_DELEGACION,
		DES_ERROR
	FROM GEPR_TITEM_PROCESO
	WHERE 
		COD_DELEGACION = []COD_DELEGACION
		AND COD_PROCESO = []COD_PROCESO
		AND FYH_CREACION >= []FYH_CREACION
	ORDER BY FYH_CREACION DESC