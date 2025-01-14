SELECT
      TERMP.COD_TERMINO,
      TERMP.DES_TERMINO,
      TERMP.OBS_TERMINO,
      TERMP.DES_VALOR_INICIAL,
      TERMP.NEC_LONGITUD,
      TERMP.BOL_MOSTRAR_CODIGO,
      TERMP.NEC_ORDEN,
      TMPPRO.BOL_ES_OBLIGATORIO, 
      FMT.COD_FORMATO,
      FMT.DES_FORMATO,
      MASC.COD_MASCARA,
      MASC.DES_MASCARA,
      MASC.DES_EXP_REGULAR, 
      ALG.COD_ALGORITMO_VALIDACION,
      ALG.DES_ALGORITMO_VALIDACION ,
      TERMP.OID_TERMINO
FROM 
      GEPR_TTERMINO_MEDIO_PAGO TERMP
      LEFT OUTER JOIN GEPR_TMASCARA MASC ON TERMP.OID_MASCARA = MASC.OID_MASCARA
      LEFT OUTER JOIN GEPR_TFORMATO FMT ON TERMP.OID_FORMATO = FMT.OID_FORMATO
      LEFT OUTER JOIN GEPR_TALGORITMO_VALIDACION ALG ON TERMP.OID_ALGORITMO_VALIDACION = ALG.OID_ALGORITMO_VALIDACION
      INNER JOIN GEPR_TTERMINO_MED_PAGO_POR_PRO TMPPRO ON TERMP.OID_TERMINO = TMPPRO.OID_TERMINO
WHERE TERMP.BOL_VIGENTE = 1 AND 
      TMPPRO.OID_PROCESO_SUBCANAL = []OID_PROCESO_SUBCANAL AND
      TERMP.OID_MEDIO_PAGO = []OID_MEDIO_PAGO
