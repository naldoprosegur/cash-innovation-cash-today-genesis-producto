UPDATE GEPR_TPUNTO_SERVICIO SET 
	BOL_VIGENTE = 0, 
	COD_USUARIO = []COD_USUARIO, 
	FYH_ACTUALIZACION = []FYH_ACTUALIZACION
WHERE 
	OID_SUBCLIENTE IN (SELECT OID_SUBCLIENTE FROM GEPR_TSUBCLIENTE WHERE OID_CLIENTE = []OID_CLIENTE)