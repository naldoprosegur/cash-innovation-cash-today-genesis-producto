﻿SELECT LV.COD_VALOR
FROM SAPR_TLISTA_VALORXELEMENTO LVB
INNER JOIN GEPR_TLISTA_TIPO LT ON LT.OID_LISTA_TIPO = LVB.OID_LISTA_TIPO AND LT.COD_TIPO = []COD_TIPO
INNER JOIN GEPR_TLISTA_VALOR LV ON LV.OID_LISTA_VALOR = LVB.OID_LISTA_VALOR
WHERE 0=0