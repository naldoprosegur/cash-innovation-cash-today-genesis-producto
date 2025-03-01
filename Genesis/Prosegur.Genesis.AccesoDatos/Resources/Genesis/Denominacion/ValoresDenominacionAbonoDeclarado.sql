﻿SELECT
'DECLARADO_EFECTIVO' AS TIPO
,EFEC.OID_REMESA
,EFEC.OID_BULTO
,EFEC.OID_PARCIAL
,D.OID_DIVISA
,EFEC.OID_DENOMINACION
,SUM(EFEC.NUM_IMPORTE) AS IMPORTE
,SUM(EFEC.NEL_CANTIDAD) AS CANTIDAD
,NULL AS OID_CALIDAD
,EFEC.OID_UNIDAD_MEDIDA     
      FROM SAPR_TDECLARADO_EFECTIVO EFEC
	  INNER JOIN SAPR_TREMESA R1 ON R1.OID_REMESA = EFEC.OID_REMESA
INNER JOIN GEPR_TDENOMINACION D ON D.OID_DENOMINACION = EFEC.OID_DENOMINACION
     WHERE EFEC.OID_DENOMINACION IS NOT NULL {0}
    AND ((R1.BOL_GESTION_BULTO = 1 AND EFEC.OID_BULTO IS NOT NULL AND EFEC.OID_PARCIAL IS NULL)
    OR (R1.BOL_GESTION_BULTO = 0 AND EFEC.OID_BULTO IS NULL AND EFEC.OID_PARCIAL IS NULL))
  GROUP BY EFEC.OID_REMESA, EFEC.OID_BULTO, EFEC.OID_PARCIAL, D.OID_DIVISA, EFEC.OID_DENOMINACION,
           EFEC.OID_UNIDAD_MEDIDA