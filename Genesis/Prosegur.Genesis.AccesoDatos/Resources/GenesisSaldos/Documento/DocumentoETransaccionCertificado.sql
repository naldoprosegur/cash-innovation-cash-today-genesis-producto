﻿SELECT COUNT(1)AS EXISTE
FROM
       SAPR_TDOCUMENTO DOC
       LEFT JOIN SAPR_TTRANSACCION_EFECTIVO TF ON TF.OID_DOCUMENTO = DOC.OID_DOCUMENTO 
       LEFT JOIN SAPR_TTRANSACCION_MEDIO_PAGO TMP ON TMP.OID_DOCUMENTO = DOC.OID_DOCUMENTO
       INNER JOIN SAPR_TCERTIFICADO CER ON CER.OID_CERTIFICADO IN(TF.OID_CERTIFICADO,TMP.OID_CERTIFICADO) 
WHERE CER.COD_ESTADO IN('DE','PC') 
AND DOC.OID_DOCUMENTO = []OID_DOCUMENTO