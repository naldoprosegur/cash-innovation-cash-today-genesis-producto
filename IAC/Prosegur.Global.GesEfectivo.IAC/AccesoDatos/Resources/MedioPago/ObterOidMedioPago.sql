﻿SELECT 
	MP.OID_MEDIO_PAGO
FROM 
	GEPR_TMEDIO_PAGO MP
	INNER JOIN GEPR_TDIVISA DIV ON (MP.OID_DIVISA = DIV.OID_DIVISA)
WHERE 
	MP.COD_MEDIO_PAGO = []COD_MEDIO_PAGO
	AND MP.COD_TIPO_MEDIO_PAGO = []COD_TIPO_MEDIO_PAGO
	AND DIV.COD_ISO_DIVISA = []COD_ISO_DIVISA