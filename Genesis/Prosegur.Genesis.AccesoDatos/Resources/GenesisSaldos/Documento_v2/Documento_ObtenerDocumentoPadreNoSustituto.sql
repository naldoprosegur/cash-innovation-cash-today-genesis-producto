﻿ SELECT D.OID_DOCUMENTO,
       (SELECT COUNT(*) FROM SAPR_TCARACTFORMXFORMULARIO CF
                  INNER JOIN SAPR_TCARACT_FORMULARIO C ON C.OID_CARACT_FORMULARIO = CF.OID_CARACT_FORMULARIO
                  WHERE C.cod_caract_formulario = 'ACCION_SUSTITUCION' AND CF.OID_FORMULARIO = D.OID_FORMULARIO) ESSUSTITUTO
   FROM SAPR_TDOCUMENTO D START
   WITH D.OID_DOCUMENTO = []OID_DOCUMENTO
CONNECT BY NOCYCLE PRIOR D.OID_DOCUMENTO = D.OID_DOCUMENTO_SUSTITUTO