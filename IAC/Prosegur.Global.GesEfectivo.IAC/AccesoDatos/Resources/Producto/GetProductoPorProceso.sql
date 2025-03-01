﻿SELECT 
	PROD.COD_PRODUCTO, 
	PROD.DES_PRODUCTO, 
	PROD.DES_CLASE_BILLETE, 
	PROD.NUM_FACTOR_CORRECCION, 
	PROD.BOL_MANUAL, 
	MPROD.DES_MAQUINA 
FROM 
	GEPR_TPROCESO PROC 
	INNER JOIN GEPR_TPRODUCTO PROD ON PROC.OID_PRODUCTO = PROD.OID_PRODUCTO 
	LEFT OUTER JOIN GEPR_TMAQUINA_POR_PRODUCTO MPROD ON PROC.OID_PRODUCTO = MPROD.OID_PRODUCTO 
WHERE 
	PROC.OID_PROCESO = []OID_PROCESO