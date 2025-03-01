﻿SELECT
	GC.COD_GRUPO_CLIENTE,
	GC.DES_GRUPO_CLIENTE,
	GC.BOL_VIGENTE,
	GC.FYH_ACTUALIZACION,
	GC.COD_TIPO_GRUPO_CLIENTE
FROM
	GEPR_TGRUPO_CLIENTE GC
	INNER JOIN GEPR_TGRUPO_CLIENTE_DETALLE GCD
		ON GC.OID_GRUPO_CLIENTE = GCD.OID_GRUPO_CLIENTE
	LEFT JOIN GEPR_TCLIENTE C
		ON GCD.OID_CLIENTE = C.OID_CLIENTE
	LEFT JOIN GEPR_TSUBCLIENTE SC
		ON GCD.OID_SUBCLIENTE = SC.OID_SUBCLIENTE
	LEFT JOIN GEPR_TPUNTO_SERVICIO PS
		ON GCD.OID_PTO_SERVICIO = PS.OID_PTO_SERVICIO
WHERE
	GC.BOL_VIGENTE = []BOL_VIGENTE {0}
GROUP BY
	GC.COD_GRUPO_CLIENTE,
	GC.DES_GRUPO_CLIENTE,
	GC.BOL_VIGENTE,
	GC.FYH_ACTUALIZACION,
	GC.COD_TIPO_GRUPO_CLIENTE
ORDER BY
	GC.COD_GRUPO_CLIENTE