﻿SELECT DIV.OID_DIVISA
      ,SMP.COD_TIPO_MEDIO_PAGO
      ,MP.OID_MEDIO_PAGO
      ,SMP.COD_NIVEL_DETALLE
FROM SAPR_TMEDIO_PAGO_ANTERIORXDOC SMP INNER JOIN SAPR_TDOCUMENTO DOC ON DOC.OID_DOCUMENTO = SMP.OID_DOCUMENTO
                                       INNER JOIN GEPR_TDIVISA DIV ON DIV.OID_DIVISA = SMP.OID_DIVISA
                                       LEFT OUTER JOIN GEPR_TMEDIO_PAGO MP ON MP.OID_MEDIO_PAGO = SMP.OID_MEDIO_PAGO AND MP.OID_DIVISA = SMP.OID_DIVISA
WHERE SMP.OID_DOCUMENTO = []OID_DOCUMENTO
ORDER BY 1