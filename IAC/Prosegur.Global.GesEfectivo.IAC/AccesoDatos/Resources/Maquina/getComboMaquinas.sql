SELECT 
	DISTINCT MAQ.DES_MAQUINA
FROM 
	GEPR_TMAQUINA_POR_PRODUCTO MAQ 
	INNER JOIN GEPR_TPRODUCTO PRO ON (MAQ.OID_PRODUCTO = PRO.OID_PRODUCTO)
WHERE 
	PRO.BOL_VIGENTE = 1