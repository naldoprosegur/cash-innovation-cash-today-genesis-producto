SELECT
      MP.COD_MEDIO_PAGO,
      MP.DES_MEDIO_PAGO,
      MP.OBS_MEDIO_PAGO,
	  MP.BOL_MERCANCIA,
      MP.COD_TIPO_MEDIO_PAGO,
	  MP.COD_ACCESO,
      NULL AS DES_TIPO_MEDIO_PAGO,
      DIV.COD_ISO_DIVISA,
      DIV.DES_DIVISA,
      MPPRO.NUM_TOLERANCIA_PARCIAL_MIN,
      MPPRO.NUM_TOLERANCIA_PARCIAL_MAX,
      MPPRO.NUM_TOLERANCIA_BULTO_MIN,
      MPPRO.NUM_TOLERANCIA_BULTO_MAX,
      MPPRO.NUM_TOLERANCIA_REMESA_MIN,
      MPPRO.NUM_TOLERANCIA_REMESA_MAX,
      MP.OID_MEDIO_PAGO
FROM  
      GEPR_TMEDIO_PAGO_POR_PROCESO MPPRO
      INNER JOIN GEPR_TMEDIO_PAGO MP ON MPPRO.OID_MEDIO_PAGO = MP.OID_MEDIO_PAGO
      INNER JOIN GEPR_TDIVISA DIV ON MP.OID_DIVISA = DIV.OID_DIVISA
WHERE
      MP.BOL_VIGENTE = 1 AND
      DIV.BOL_VIGENTE = 1 AND
      MPPRO.OID_PROCESO = []OID_PROCESO
