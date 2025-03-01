SELECT 
  DISTINCT
  FRM.DES_FORMULARIO FORMULARIO,
  SECORI.DES_SECTOR SECTOR_ORIGEN,       
  SECDEST.DES_SECTOR SECTOR_DESTINO,
  FN_GMT_DELEGACION_###VERSION###(PLADEST.OID_DELEGACION, DOC.GMT_CREACION) GMT_CREACION,
  DOC.OID_DOCUMENTO
FROM SAPR_TBULTO BUL
  INNER JOIN SAPR_TREMESA REM ON BUL.OID_REMESA = BUL.OID_REMESA
  INNER JOIN SAPR_TDOCUMENTOXELEMENTO DOCELE ON DOCELE.OID_REMESA = REM.OID_REMESA AND DOCELE.OID_BULTO = BUL.OID_BULTO
  INNER JOIN SAPR_TDOCUMENTO DOC ON DOCELE.OID_DOCUMENTO = DOC.OID_DOCUMENTO
  INNER JOIN SAPR_TFORMULARIO FRM ON DOC.OID_FORMULARIO = FRM.OID_FORMULARIO
  INNER JOIN GEPR_TSECTOR SECORI ON DOC.OID_SECTOR_ORIGEN = SECORI.OID_SECTOR
  INNER JOIN GEPR_TSECTOR SECDEST ON DOC.OID_SECTOR_DESTINO = SECDEST.OID_SECTOR
  INNER JOIN GEPR_TPLANTA PLADEST ON SECDEST.OID_PLANTA = PLADEST.OID_PLANTA
WHERE DOCELE.OID_REMESA IS NOT NULL {0}  
ORDER BY FN_GMT_DELEGACION_###VERSION###(PLADEST.OID_DELEGACION, DOC.GMT_CREACION) ASC
