﻿SELECT 
	MP.COD_TIPO_MEDIO_PAGO,
    MP.COD_MEDIO_PAGO,
    MP.DES_MEDIO_PAGO,
    NULL AS DES_TIPO_MEDIO_PAGO
FROM 
	GEPR_TAGRUPACION AG
	INNER JOIN GEPR_TMEDIO_PAGO_POR_AGRUPACIO MPAG ON (AG.OID_AGRUPACION = MPAG.OID_AGRUPACION)
	INNER JOIN GEPR_TMEDIO_PAGO MP ON (MP.OID_MEDIO_PAGO = MPAG.OID_MEDIO_PAGO)
    INNER JOIN GEPR_TDIVISA DIV ON (MP.OID_DIVISA = DIV.OID_DIVISA)
WHERE
	AG.COD_AGRUPACION = []COD_AGRUPACION
	AND DIV.COD_ISO_DIVISA = []COD_ISO_DIVISA
ORDER BY 
	MP.COD_TIPO_MEDIO_PAGO, MP.COD_MEDIO_PAGO