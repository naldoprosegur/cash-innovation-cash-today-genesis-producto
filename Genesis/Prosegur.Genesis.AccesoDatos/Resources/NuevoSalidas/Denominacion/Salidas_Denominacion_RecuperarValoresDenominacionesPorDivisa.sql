SELECT
DEN.COD_DENOMINACION,
DEN.NUM_VALOR_FACIAL
FROM GEPR_TDENOMINACION DEN
INNER JOIN GEPR_TDIVISA DIV ON DEN.OID_DIVISA = DIV.OID_DIVISA
WHERE DIV.COD_ISO_DIVISA = []COD_ISO_DIVISA
AND DEN.COD_DENOMINACION IN ({0})
ORDER BY DEN.COD_DENOMINACION