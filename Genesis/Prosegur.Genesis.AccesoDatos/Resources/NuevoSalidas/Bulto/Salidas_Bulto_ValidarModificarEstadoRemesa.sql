SELECT COUNT(BUL.OID_BULTO) QTD_BULTOS
  FROM GEPR_TREMESA REM 
  LEFT JOIN GEPR_TBULTO BULTO ON REM.OID_REMESA = BULTO.OID_REMESA 
AND BULTO.COD_ESTADO_BULTO IN ('PR', 'SA', 'EN')
  WHERE OID_REMESA = []OID_REMESA