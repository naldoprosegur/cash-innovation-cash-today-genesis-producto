﻿SELECT
       PUE.COD_PUESTO,
       PUE.COD_HOST_PUESTO,
       DEL.COD_PAIS,       
       DEL.COD_DELEGACION,
      DEL.DES_DELEGACION,
       PAR.COD_PARAMETRO,
       PAR.BOL_OBLIGATORIO,
       PAR.DES_DESCRIPCION_CORTO,
       PAR.DES_DESCRIPCION_LARGA,
       PVA.DES_VALOR_PARAMETRO,
     PAR.BOL_LISTA_VALORES,
       POP.COD_OPCION,
       POP.DES_OPCION,
     NPA.COD_NIVEL_PARAMETRO
FROM
       GEPR_TPARAMETRO PAR
       INNER JOIN GEPR_TNIVEL_PARAMETRO NPA ON PAR.OID_NIVEL_PARAMETRO = NPA.OID_NIVEL_PARAMETRO AND NPA.COD_NIVEL_PARAMETRO = 3 -- POSTO
       INNER JOIN GEPR_TAPLICACION APL ON PAR.OID_APLICACION = APL.OID_APLICACION
       INNER JOIN GEPR_TPUESTO PUE ON APL.OID_APLICACION = PUE.OID_APLICACION AND PUE.BOL_VIGENTE = 1
       INNER JOIN GEPR_TDELEGACION DEL ON PUE.OID_DELEGACION = DEL.OID_DELEGACION
       LEFT OUTER JOIN GEPR_TPARAMETRO_VALOR PVA ON PAR.OID_PARAMETRO = PVA.OID_PARAMETRO AND PVA.COD_IDENTIFICADOR_NIVEL = PUE.OID_PUESTO -- POSTO
       LEFT OUTER JOIN GEPR_TPARAMETRO_OPCION POP ON PAR.OID_PARAMETRO = POP.OID_PARAMETRO AND POP.BOL_VIGENTE = 1 AND (POP.COD_DELEGACION = DEL.COD_DELEGACION OR POP.COD_DELEGACION IS NULL)
WHERE
       APL.COD_APLICACION = :COD_APLICACION -- CÓDIGO APLICAÇÃO
       AND PUE.COD_PUESTO = UPPER(:COD_PUESTO) -- CÓDIGO POSTO
       AND UPPER(PUE.COD_HOST_PUESTO) = UPPER(:COD_HOST_PUESTO) -- HOST POSTO
UNION 
SELECT
       null as COD_PUESTO,
       null as COD_HOST_PUESTO,
       DEL.COD_PAIS,       
       DEL.COD_DELEGACION,
     DEL.DES_DELEGACION,
       PAR.COD_PARAMETRO,
       PAR.BOL_OBLIGATORIO,
       PAR.DES_DESCRIPCION_CORTO,
       PAR.DES_DESCRIPCION_LARGA,
       PVA.DES_VALOR_PARAMETRO,
     PAR.BOL_LISTA_VALORES,
       POP.COD_OPCION,
       POP.DES_OPCION,
     NPA.COD_NIVEL_PARAMETRO
FROM
       GEPR_TPARAMETRO PAR
       INNER JOIN GEPR_TNIVEL_PARAMETRO NPA ON PAR.OID_NIVEL_PARAMETRO = NPA.OID_NIVEL_PARAMETRO AND NPA.COD_NIVEL_PARAMETRO = 2 -- DELEGAÇÃO
       INNER JOIN GEPR_TAPLICACION APL ON PAR.OID_APLICACION = APL.OID_APLICACION
--       INNER JOIN GEPR_TPUESTO PUE ON APL.OID_APLICACION = PUE.OID_APLICACION AND PUE.BOL_VIGENTE = 1
       INNER JOIN GEPR_TPARAMETRO_VALOR PVA ON PAR.OID_PARAMETRO = PVA.OID_PARAMETRO       
       INNER JOIN GEPR_TDELEGACION DEL ON PVA.COD_IDENTIFICADOR_NIVEL = DEL.OID_DELEGACION -- DELEGAÇÃO       
       --LEFT OUTER JOIN GEPR_TPARAMETRO_VALOR PVA ON PAR.OID_PARAMETRO = PVA.OID_PARAMETRO AND PVA.COD_IDENTIFICADOR_NIVEL = DEL.OID_DELEGACION -- DELEGAÇÃO
       LEFT OUTER JOIN GEPR_TPARAMETRO_OPCION POP ON PAR.OID_PARAMETRO = POP.OID_PARAMETRO AND POP.BOL_VIGENTE = 1 AND (POP.COD_DELEGACION = DEL.COD_DELEGACION OR POP.COD_DELEGACION IS NULL)
WHERE
     {0}
UNION
SELECT
       null as COD_PUESTO,
       null as COD_HOST_PUESTO,
       DEL.COD_PAIS,       
       DEL.COD_DELEGACION,
     DEL.DES_DELEGACION,
       PAR.COD_PARAMETRO,
       PAR.BOL_OBLIGATORIO,
       PAR.DES_DESCRIPCION_CORTO,
       PAR.DES_DESCRIPCION_LARGA,
       PVA.DES_VALOR_PARAMETRO,
     PAR.BOL_LISTA_VALORES,
       POP.COD_OPCION,
       POP.DES_OPCION,
     NPA.COD_NIVEL_PARAMETRO
FROM
       GEPR_TPARAMETRO PAR
       INNER JOIN GEPR_TNIVEL_PARAMETRO NPA ON PAR.OID_NIVEL_PARAMETRO = NPA.OID_NIVEL_PARAMETRO AND NPA.COD_NIVEL_PARAMETRO = 1 -- PAIS
       INNER JOIN GEPR_TAPLICACION APL ON PAR.OID_APLICACION = APL.OID_APLICACION
--       INNER JOIN GEPR_TPUESTO PUE ON APL.OID_APLICACION = PUE.OID_APLICACION AND PUE.BOL_VIGENTE = 1
       INNER JOIN GEPR_TPARAMETRO_VALOR PVA ON PAR.OID_PARAMETRO = PVA.OID_PARAMETRO       
       INNER JOIN GEPR_TDELEGACION DEL ON PVA.COD_IDENTIFICADOR_NIVEL = DEL.COD_PAIS -- PAIS     
--       LEFT OUTER JOIN GEPR_TPARAMETRO_VALOR PVA ON PAR.OID_PARAMETRO = PVA.OID_PARAMETRO AND PVA.COD_IDENTIFICADOR_NIVEL = DEL.COD_PAIS -- PAIS
       LEFT OUTER JOIN GEPR_TPARAMETRO_OPCION POP ON PAR.OID_PARAMETRO = POP.OID_PARAMETRO AND POP.BOL_VIGENTE = 1 AND (POP.COD_DELEGACION = DEL.COD_DELEGACION OR POP.COD_DELEGACION IS NULL)
WHERE
       {0}
GROUP BY
    APL.COD_APLICACION,
       --COD_PUESTO,
       --COD_HOST_PUESTO,
       DEL.COD_PAIS,       
       DEL.COD_DELEGACION,
     DEL.DES_DELEGACION,
       PAR.COD_PARAMETRO,
       PAR.BOL_OBLIGATORIO,
       PAR.DES_DESCRIPCION_CORTO,
       PAR.DES_DESCRIPCION_LARGA,
       PVA.DES_VALOR_PARAMETRO,
     PAR.BOL_LISTA_VALORES,
       POP.COD_OPCION,
       POP.DES_OPCION,
     NPA.COD_NIVEL_PARAMETRO
ORDER BY
    14 desc ,1,2,3,4,5,6,7,8,9,10,11,12,13
    