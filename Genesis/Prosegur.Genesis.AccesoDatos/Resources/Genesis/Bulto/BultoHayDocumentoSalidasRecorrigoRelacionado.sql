﻿/* VALIDA SE O BULTO TEM ALGUM DOCUMENTO DE SALIDAS A RECORRIDO COM O ESTADO DIFERENTE DE EM CURSO RELACIONADO A ELE */
SELECT DISTINCT B.COD_PRECINTO,D.COD_EXTERNO,D.COD_COMPROBANTE FROM SAPR_TDOCUMENTO D
INNER JOIN SAPR_TDOCUMENTOXELEMENTO DE ON DE.OID_DOCUMENTO = D.OID_DOCUMENTO
INNER JOIN SAPR_TBULTO B ON B.OID_BULTO = DE.OID_BULTO
INNER JOIN SAPR_TFORMULARIO F ON F.OID_FORMULARIO = D.OID_FORMULARIO
INNER JOIN SAPR_TCARACTFORMXFORMULARIO CCF ON CCF.OID_FORMULARIO = F.OID_FORMULARIO
INNER JOIN SAPR_TCARACT_FORMULARIO C ON C.OID_CARACT_FORMULARIO = CCF.OID_CARACT_FORMULARIO
WHERE C.COD_CARACT_FORMULARIO = 'SALIDAS_RECORRIDO' AND D.COD_ESTADO <> 'EC'
{0}