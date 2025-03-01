﻿SELECT GEPR_TNIVEL_PARAMETRO.COD_NIVEL_PARAMETRO,
GEPR_TNIVEL_PARAMETRO.DES_NIVEL_PARAMETRO,
GEPR_TNIVEL_PARAMETRO.COD_PERMISO,
GEPR_TGRUPO_PARAMETRO.DES_DESCRIPCION_CORTO,
GEPR_TGRUPO_PARAMETRO.DES_DESCRIPCION_LARGA,
GEPR_TGRUPO_PARAMETRO.NEC_ORDEN,
GEPR_TGRUPO_PARAMETRO.COD_PERMISO AS COD_PERMISO_GRUPO,
GEPR_TPARAMETRO.COD_PARAMETRO,
GEPR_TPARAMETRO.DES_DESCRIPCION_CORTO AS DES_DESCRIPCION_CORTO_PARAM,
GEPR_TPARAMETRO.DES_DESCRIPCION_LARGA AS DES_DESCRIPCION_LARGA_PARAM,
GEPR_TPARAMETRO.NEC_ORDEN AS NEC_ORDEN_PARAMETRO,
GEPR_TPARAMETRO.BOL_OBLIGATORIO,
GEPR_TPARAMETRO.NEC_TIPO_COMPONENTE,
GEPR_TPARAMETRO.NEC_TIPO_DATO,
GEPR_TPARAMETRO_VALOR.DES_VALOR_PARAMETRO,
GEPR_TPARAMETRO_OPCION.COD_OPCION,
GEPR_TPARAMETRO_OPCION.DES_OPCION
FROM GEPR_TPARAMETRO 
INNER JOIN GEPR_TNIVEL_PARAMETRO ON
  GEPR_TNIVEL_PARAMETRO.OID_NIVEL_PARAMETRO = GEPR_TPARAMETRO.OID_NIVEL_PARAMETRO
INNER JOIN GEPR_TAPLICACION ON
  GEPR_TAPLICACION.OID_APLICACION = GEPR_TPARAMETRO.OID_APLICACION
LEFT JOIN GEPR_TPARAMETRO_OPCION ON 
  GEPR_TPARAMETRO_OPCION.OID_PARAMETRO = GEPR_TPARAMETRO.OID_PARAMETRO AND GEPR_TPARAMETRO_OPCION.BOL_VIGENTE = 1
LEFT JOIN GEPR_TPARAMETRO_VALOR ON
  GEPR_TPARAMETRO_VALOR.OID_PARAMETRO = GEPR_TPARAMETRO.OID_PARAMETRO AND GEPR_TPARAMETRO_VALOR.COD_IDENTIFICADOR_NIVEL =  []COD_IDENTIFICADOR_NIVEL
INNER JOIN GEPR_TGRUPO_PARAMETRO ON
  GEPR_TGRUPO_PARAMETRO.OID_GRUPO_PARAMETRO = GEPR_TPARAMETRO.OID_GRUPO_PARAMETRO
WHERE GEPR_TAPLICACION.COD_APLICACION = []COD_APLICACION 
  AND GEPR_TNIVEL_PARAMETRO.COD_NIVEL_PARAMETRO = []COD_NIVEL_PARAMETRO
ORDER BY GEPR_TGRUPO_PARAMETRO.NEC_ORDEN, GEPR_TPARAMETRO.NEC_ORDEN
