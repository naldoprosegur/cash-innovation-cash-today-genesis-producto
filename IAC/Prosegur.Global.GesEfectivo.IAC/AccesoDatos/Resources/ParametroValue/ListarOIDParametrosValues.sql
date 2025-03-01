﻿SELECT GEPR_TPARAMETRO.OID_PARAMETRO,
	   GEPR_TPARAMETRO_VALOR.OID_PARAMETRO_VALOR,
       GEPR_TPARAMETRO_VALOR.DES_VALOR_PARAMETRO,
	   GEPR_TNIVEL_PARAMETRO.COD_NIVEL_PARAMETRO,
	   GEPR_TPARAMETRO.COD_PARAMETRO
FROM GEPR_TPARAMETRO 
INNER JOIN GEPR_TNIVEL_PARAMETRO ON
  GEPR_TNIVEL_PARAMETRO.OID_NIVEL_PARAMETRO = GEPR_TPARAMETRO.OID_NIVEL_PARAMETRO
INNER JOIN GEPR_TAPLICACION ON 
  GEPR_TAPLICACION.OID_APLICACION = GEPR_TPARAMETRO.OID_APLICACION
LEFT JOIN GEPR_TPARAMETRO_VALOR ON
  GEPR_TPARAMETRO_VALOR.OID_PARAMETRO = GEPR_TPARAMETRO.OID_PARAMETRO AND GEPR_TPARAMETRO_VALOR.COD_IDENTIFICADOR_NIVEL =  []COD_IDENTIFICADOR_NIVEL
WHERE GEPR_TAPLICACION.COD_APLICACION = []COD_APLICACION 
AND GEPR_TNIVEL_PARAMETRO.COD_NIVEL_PARAMETRO = []COD_NIVEL_PARAMETRO
