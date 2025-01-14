SELECT 
	TPROC.OID_TIPO_PROCESADO 
FROM 
	GEPR_TTIPO_PROCESADO TPROC 
	INNER JOIN GEPR_TPROCESO PRC ON TPROC.OID_TIPO_PROCESADO = PRC.OID_TIPO_PROCESADO 
	INNER JOIN GEPR_TPROCESO_POR_PSERVICIO PPS ON PRC.OID_PROCESO = PPS.OID_PROCESO
WHERE 
	TPROC.COD_TIPO_PROCESADO = []COD_TIPO_PROCESADO 
	AND PPS.BOL_VIGENTE = 1