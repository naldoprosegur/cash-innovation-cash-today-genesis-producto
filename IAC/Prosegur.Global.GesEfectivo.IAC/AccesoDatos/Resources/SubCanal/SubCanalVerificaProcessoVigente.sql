SELECT 
	SUBC.COD_SUBCANAL 
FROM 
	GEPR_TSUBCANAL SUBC 
	INNER JOIN GEPR_TPROCESO_SUBCANAL PROC ON PROC.OID_SUBCANAL = SUBC.OID_SUBCANAL 
WHERE 
	SUBC.COD_SUBCANAL = []COD_SUBCANAL 
	AND PROC.BOL_VIGENTE = 1