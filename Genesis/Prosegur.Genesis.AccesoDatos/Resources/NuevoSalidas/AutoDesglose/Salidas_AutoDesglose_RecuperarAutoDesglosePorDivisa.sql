SELECT DIV.COD_ISO_DIVISA, AUD.COD_CONFIGURACION, DEN.COD_DENOMINACION, AUD.NUM_PORCENTAJE, DEN.NUM_VALOR_FACIAL
FROM GEPR_TAUTODESGLOSE AUD
INNER JOIN GEPR_TDENOMINACION DEN ON AUD.OID_DENOMINACION = DEN.OID_DENOMINACION
INNER JOIN GEPR_TDIVISA DIV ON DEN.OID_DIVISA = DIV.OID_DIVISA
WHERE DIV.COD_ISO_DIVISA = []COD_ISO_DIVISA
AND AUD.COD_CONFIGURACION = []COD_CONFIGURACION