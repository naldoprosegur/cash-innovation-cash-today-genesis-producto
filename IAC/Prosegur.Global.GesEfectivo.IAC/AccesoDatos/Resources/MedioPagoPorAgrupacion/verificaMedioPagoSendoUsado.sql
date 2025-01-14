﻿SELECT MPAGRUP.OID_MEDIO_PAGO_AGRUPACION
FROM GEPR_TMEDIO_PAGO MP
INNER JOIN GEPR_TMEDIO_PAGO_POR_AGRUPACIO MPAGRUP ON MPAGRUP.OID_MEDIO_PAGO = MP.OID_MEDIO_PAGO
INNER JOIN GEPR_TAGRUPACION AGRUP ON AGRUP.OID_AGRUPACION = MPAGRUP.OID_AGRUPACION
INNER JOIN GEPR_TDIVISA DIV ON DIV.OID_DIVISA = MP.OID_DIVISA
WHERE DIV.COD_ISO_DIVISA = []COD_ISO_DIVISA AND MP.COD_TIPO_MEDIO_PAGO = []COD_TIPO_MEDIO_PAGO
AND MP.COD_MEDIO_PAGO = []COD_MEDIO_PAGO AND AGRUP.COD_AGRUPACION = []COD_AGRUPACION