﻿SELECT  C.COD_REPORTE,
        C.DES_REPORTES,
		C.NEC_FORMATO_ARCHIVO,
		C.DES_NOMBRE_ARCHIVO,
		C.DES_EXTENSION_ARCHIVO,
		C.COD_SEPARADOR
FROM IAPR_TCONFIG_GENERAL_REPORTES C 
WHERE C.OID_CONFIGURACION_GENERAL 
IN (SELECT OID_CONFIGURACION_GENERAL FROM IAPR_TREPORTES_CONFIGURACION WHERE OID_CONFIGURACION = []OID_CONFIGURACION)