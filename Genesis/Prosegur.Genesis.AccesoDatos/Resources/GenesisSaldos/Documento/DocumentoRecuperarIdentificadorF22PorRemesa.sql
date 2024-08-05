﻿SELECT DOC.OID_DOCUMENTO
FROM SAPR_TDOCUMENTO DOC
INNER JOIN SAPR_TDOCUMENTOXELEMENTO DCE ON DCE.OID_DOCUMENTO = DOC.OID_DOCUMENTO
INNER JOIN (SELECT 
          CAFO.OID_FORMULARIO 
  FROM 
          SAPR_TCARACTFORMXFORMULARIO CAFO
          INNER JOIN SAPR_TCARACT_FORMULARIO CARA ON CAFO.OID_CARACT_FORMULARIO = CARA.OID_CARACT_FORMULARIO
  WHERE
          -- GESTIÓN FONDOS, MOVIMIENTO DE FONDOS, ENTRE SECTORES MISMA PLANTA E INTEGRACION SALIDAS
          CARA.COD_CARACT_FORMULARIO IN ('CARACTERISTICA_PRINCIPAL_GESTION_REMESAS','CARACTERISTICA_PRINCIPAL_GESTION_BULTOS', 'ACCION_ALTAS', 'INTEGRACION_SALIDAS')
  GROUP BY
          CAFO.OID_FORMULARIO
  HAVING
          COUNT(CAFO.OID_CARACT_FORMULARIO) = 3 -- CANTIDAD DE CARACTERISTICAS DEL FILTRO
  )GEN_F22
  ON GEN_F22.OID_FORMULARIO = DOC.OID_FORMULARIO
WHERE DOC.COD_ESTADO = 'AC'
AND DCE.OID_REMESA =[]OID_REMESA
AND ROWNUM =1