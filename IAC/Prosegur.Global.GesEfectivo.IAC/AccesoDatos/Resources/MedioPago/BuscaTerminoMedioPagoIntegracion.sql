SELECT 
             TER.OID_TERMINO,
             TER.COD_TERMINO,
             TER.DES_TERMINO,
             TER.OBS_TERMINO,
             TER.DES_VALOR_INICIAL,
             TER.NEC_LONGITUD,
             TER.BOL_MOSTRAR_CODIGO,             
             TER.NEC_ORDEN,
             TER.BOL_VIGENTE,                                    
             MAS.COD_MASCARA,
             MAS.DES_MASCARA,
             MAS.DES_EXP_REGULAR,             
             ALG.COD_ALGORITMO_VALIDACION,
             ALG.DES_ALGORITMO_VALIDACION,                        
             FRM.COD_FORMATO,
             FRM.DES_FORMATO
FROM 
             GEPR_TMEDIO_PAGO MPG
INNER JOIN   GEPR_TTERMINO_MEDIO_PAGO TER ON
             MPG.OID_MEDIO_PAGO=TER.OID_MEDIO_PAGO

LEFT JOIN   GEPR_TFORMATO FRM ON
            FRM.OID_FORMATO = TER.OID_FORMATO
             
LEFT JOIN   GEPR_TMASCARA MAS ON
            TER.OID_MASCARA=MAS.OID_MASCARA
             
LEFT JOIN   GEPR_TALGORITMO_VALIDACION ALG ON
            TER.OID_ALGORITMO_VALIDACION = ALG.OID_ALGORITMO_VALIDACION
WHERE 
            TER.OID_MEDIO_PAGO=[]OID_MEDIO_PAGO