
SELECT
	
	 C.OID_CANAL AS IDENTIFICADOR
	,C.COD_CANAL AS CODIGO
	,C.DES_CANAL AS DESCRICAO	
	,C.BOL_VIGENTE AS VIGENTE
	,C.COD_USUARIO
	,C.OBS_CANAL
	,C.FYH_ACTUALIZACION
	,C.COD_MIGRACION

FROM
	GEPR_TCANAL C