SELECT 
	OID_REMESA
	,REM.OID_REMESA_LEGADO
	,REM.COD_DELEGACION
	,REM.COD_USUARIO_BLOQUEO
	,REM.COD_ESTADO_REMESA
 FROM GEPR_TREMESA REM
 WHERE COD_USUARIO_BLOQUEO <>[]COD_USUARIO_BLOQUEO {0}
