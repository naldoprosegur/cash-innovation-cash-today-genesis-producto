﻿SELECT
'DECLARADO_MEDIO_PAGO' AS TIPO
,MPV.OID_REMESA
,MPV.OID_BULTO
,MPV.OID_PARCIAL
,MPV.OID_MEDIO_PAGO
,MP.OID_DIVISA
,SUM(MPV.NUM_IMPORTE) AS IMPORTE
,SUM(MPV.NEL_CANTIDAD) AS CANTIDAD
,NULL AS COD_TIPO_CONTADO
,NULL AS OID_CONTADO_MEDIO_PAGO
,MPV.OID_DECLARADO_MEDIO_PAGO
     
      FROM SAPR_TDECLARADO_MEDIO_PAGO MPV
INNER JOIN GEPR_TMEDIO_PAGO MP ON MP.OID_MEDIO_PAGO = MPV.OID_MEDIO_PAGO
     WHERE MPV.OID_MEDIO_PAGO IS NOT NULL {0}
  GROUP BY MPV.OID_REMESA, MPV.OID_BULTO, MPV.OID_PARCIAL, MPV.OID_MEDIO_PAGO, MP.OID_DIVISA,
           MPV.OID_UNIDAD_MEDIDA, MPV.OID_DECLARADO_MEDIO_PAGO