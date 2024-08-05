﻿/* Consulta para recuperar documentos que seu último formulário não seja salida recorrido */

SELECT DISTINCT DOCU.COD_EXTERNO
			   ,DOCU.OID_DOCUMENTO
			   ,DOEL.GMT_CREACION

FROM SAPR_TDOCUMENTO DOCU INNER JOIN SAPR_TBULTO BULT ON BULT.OID_DOCUMENTO = DOCU.OID_DOCUMENTO
                            INNER JOIN SAPR_TREMESA REME ON REME.OID_REMESA = BULT.OID_REMESA
                            INNER JOIN SAPR_TDOCUMENTOXELEMENTO DOEL ON DOEL.OID_DOCUMENTO = DOCU.OID_DOCUMENTO

WHERE BULT.COD_ESTADO <> 'SA' AND 
      REME.COD_ESTADO <> 'PR' {0}

ORDER BY DOEL.GMT_CREACION DESC