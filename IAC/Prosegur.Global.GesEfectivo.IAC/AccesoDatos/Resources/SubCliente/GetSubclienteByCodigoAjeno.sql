﻿SELECT 
	S.OID_SUBCLIENTE,
	S.COD_SUBCLIENTE,
	S.DES_SUBCLIENTE,
	S.OID_CLIENTE,
	C.COD_CLIENTE,
	C.DES_CLIENTE,
	S.OID_TIPO_SUBCLIENTE,
	T.COD_TIPO_SUBCLIENTE,
	T.DES_TIPO_SUBCLIENTE,
	S.BOL_TOTALIZADOR_SALDO
FROM GEPR_TSUBCLIENTE S
	INNER JOIN GEPR_TCODIGO_AJENO CA ON CA.OID_TABLA_GENESIS = S.OID_SUBCLIENTE
	INNER JOIN GEPR_TCLIENTE C ON S.OID_CLIENTE = C.OID_CLIENTE
	LEFT JOIN GEPR_TTIPO_SUBCLIENTE T ON S.OID_TIPO_SUBCLIENTE = T.OID_TIPO_SUBCLIENTE
 WHERE 
 CA.COD_TIPO_TABLA_GENESIS = 'GEPR_TSUBCLIENTE'