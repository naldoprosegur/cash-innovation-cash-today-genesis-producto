UPDATE GEPR_TPUNTO_SERVICIO
SET BOL_VIGENTE = 0, COD_USUARIO = []COD_USUARIO, FYH_ACTUALIZACION = []FYH_ACTUALIZACION
WHERE OID_SUBCLIENTE IN (SELECT SUBC.OID_SUBCLIENTE 
FROM GEPR_TSUBCLIENTE SUBC INNER JOIN GEPR_TPUNTO_SERVICIO PTSERV ON SUBC.OID_SUBCLIENTE = PTSERV.OID_SUBCLIENTE
INNER JOIN GEPR_TCLIENTE CLI ON CLI.OID_CLIENTE = SUBC.OID_CLIENTE
WHERE CLI.COD_CLIENTE = []COD_CLIENTE)