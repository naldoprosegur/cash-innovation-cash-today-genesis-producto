﻿SELECT
  PROCESO.OID_PROCESO
 ,PROCESO.COD_CLIENTE
 ,PROCESO.COD_SUBCLIENTE
 ,PROCESO.COD_PTO_SERVICIO
 ,PROCESO.COD_SUBCANAL
 ,PROCESO.COD_DELEGACION
 ,PROCESO.OID_IAC AS OID_IAC_PARCIAL
 ,IP.COD_IAC AS COD_IAC_PARCIAL
 ,PROCESO.OID_IAC_BULTO
 ,IB.COD_IAC AS COD_IAC_BULTO
 ,PROCESO.OID_IAC_REMESA
 ,IR.COD_IAC AS COD_IAC_REMESA
FROM 
  (
    --PEGA O NIVEL MAIS ALTO DA DEPENDENCIA DO PROCESSO COM O CLIENTE. 
    SELECT 
      3 AS NIVELA, 
      CASE WHEN PSERV.COD_DELEGACION = []COD_DELEGACION{0} THEN '1' WHEN PSERV.COD_DELEGACION = []DELEGACIONCENTRAL{0} THEN '2' END AS NIVELB,
      PROC.OID_PROCESO,
      []COD_CLIENTE{0} AS COD_CLIENTE,
      []COD_SUBCLIENTE{0} AS COD_SUBCLIENTE,
      []COD_PTO_SERVICIO{0} AS COD_PTO_SERVICIO,
      SUB.COD_SUBCANAL,
      PSERV.COD_DELEGACION,
      PSERV.OID_IAC,
			PSERV.OID_IAC_BULTO,
			PSERV.OID_IAC_REMESA
    FROM
      GEPR_TPROCESO_POR_PSERVICIO PSERV
      INNER JOIN GEPR_TCLIENTE CLI ON PSERV.OID_CLIENTE = CLI.OID_CLIENTE
      INNER JOIN GEPR_TPROCESO_SUBCANAL PSUB ON PSERV.OID_PROCESO_POR_PSERVICIO = PSUB.OID_PROCESO_POR_PSERVICIO
      INNER JOIN GEPR_TSUBCANAL SUB ON PSUB.OID_SUBCANAL = SUB.OID_SUBCANAL
      INNER JOIN GEPR_TPROCESO PROC ON PSERV.OID_PROCESO = PROC.OID_PROCESO
      INNER JOIN GEPR_TPRODUCTO PROD ON PROC.OID_PRODUCTO = PROD.OID_PRODUCTO
      INNER JOIN GEPR_TTIPO_PROCESADO TPPROC ON PROC.OID_TIPO_PROCESADO = TPPROC.OID_TIPO_PROCESADO
       LEFT JOIN GEPR_TCLIENTE CLIFAT ON PSERV.OID_CLIENTE_FACTURACION = CLIFAT.OID_CLIENTE
    WHERE CLI.COD_CLIENTE = []COD_CLIENTE{0}
      AND PSERV.OID_SUBCLIENTE IS NULL
      AND PSERV.OID_PTO_SERVICIO IS NULL
      AND PSERV.COD_DELEGACION IN ([]COD_DELEGACION{0}, []DELEGACIONCENTRAL{0})
      AND SUB.COD_SUBCANAL = []COD_SUBCANAL{0}
      AND PSERV.BOL_VIGENTE = 1
      AND PSUB.BOL_VIGENTE = 1

    UNION 
    --PEGA O 2 NIVEL DA DEPENDENCIA DO PROCESSO COM O CLIENTE. 
    SELECT 
      2 AS NIVELA,
      CASE WHEN PSERV.COD_DELEGACION = []COD_DELEGACION{0} THEN '1' WHEN PSERV.COD_DELEGACION = []DELEGACIONCENTRAL{0} THEN '2' END AS NIVELB,
      PROC.OID_PROCESO,
      []COD_CLIENTE{0} AS COD_CLIENTE,
      []COD_SUBCLIENTE{0} AS COD_SUBCLIENTE,
      []COD_PTO_SERVICIO{0} AS COD_PTO_SERVICIO,
      SUB.COD_SUBCANAL,
      PSERV.COD_DELEGACION,
      PSERV.OID_IAC,
			PSERV.OID_IAC_BULTO,
			PSERV.OID_IAC_REMESA
    FROM 
      GEPR_TPROCESO_POR_PSERVICIO PSERV 
      INNER JOIN GEPR_TPROCESO_SUBCANAL PSUB ON PSERV.OID_PROCESO_POR_PSERVICIO = PSUB.OID_PROCESO_POR_PSERVICIO 
      INNER JOIN GEPR_TSUBCANAL SUB ON PSUB.OID_SUBCANAL = SUB.OID_SUBCANAL 
      INNER JOIN GEPR_TCLIENTE CLI ON PSERV.OID_CLIENTE = CLI.OID_CLIENTE 
      INNER JOIN GEPR_TSUBCLIENTE SUBCLI ON PSERV.OID_SUBCLIENTE = SUBCLI.OID_SUBCLIENTE 
      INNER JOIN GEPR_TPROCESO PROC ON PSERV.OID_PROCESO = PROC.OID_PROCESO 
      INNER JOIN GEPR_TPRODUCTO PROD ON PROC.OID_PRODUCTO = PROD.OID_PRODUCTO 
      INNER JOIN GEPR_TTIPO_PROCESADO TPPROC ON PROC.OID_TIPO_PROCESADO = TPPROC.OID_TIPO_PROCESADO 
      LEFT JOIN GEPR_TCLIENTE CLIFAT ON PSERV.OID_CLIENTE_FACTURACION = CLIFAT.OID_CLIENTE 
    WHERE CLI.COD_CLIENTE = []COD_CLIENTE{0} 
      AND SUBCLI.COD_SUBCLIENTE = []COD_SUBCLIENTE{0} 
      AND PSERV.OID_PTO_SERVICIO IS NULL 
      AND PSERV.COD_DELEGACION IN ([]COD_DELEGACION{0}, []DELEGACIONCENTRAL{0}) 
      AND SUB.COD_SUBCANAL = []COD_SUBCANAL{0} 
      AND PSERV.BOL_VIGENTE = 1 
      AND PSUB.BOL_VIGENTE = 1 

    UNION 
    --PEGA O NIVEL MAIS BAIXO DA DEPENDENCIA DO PROCESSO COM O CLIENTE. 
    SELECT 
      1 AS NIVELA,
      CASE WHEN PSERV.COD_DELEGACION = []COD_DELEGACION{0} THEN '1' WHEN PSERV.COD_DELEGACION = []DELEGACIONCENTRAL{0} THEN '2' END AS NIVELB,
      PROC.OID_PROCESO,
      []COD_CLIENTE{0} AS COD_CLIENTE,
      []COD_SUBCLIENTE{0} AS COD_SUBCLIENTE,
      []COD_PTO_SERVICIO{0} AS COD_PTO_SERVICIO,
      SUB.COD_SUBCANAL,
      PSERV.COD_DELEGACION,
      PSERV.OID_IAC,
			PSERV.OID_IAC_BULTO,
			PSERV.OID_IAC_REMESA
    FROM 
      GEPR_TPROCESO_POR_PSERVICIO PSERV 
      INNER JOIN GEPR_TPROCESO_SUBCANAL PSUB ON PSERV.OID_PROCESO_POR_PSERVICIO = PSUB.OID_PROCESO_POR_PSERVICIO 
      INNER JOIN GEPR_TSUBCANAL SUB ON PSUB.OID_SUBCANAL = SUB.OID_SUBCANAL 
      INNER JOIN GEPR_TCLIENTE CLI ON PSERV.OID_CLIENTE = CLI.OID_CLIENTE 
      INNER JOIN GEPR_TSUBCLIENTE SUBCLI ON PSERV.OID_SUBCLIENTE = SUBCLI.OID_SUBCLIENTE 
      INNER JOIN GEPR_TPUNTO_SERVICIO PTO ON PSERV.OID_PTO_SERVICIO = PTO.OID_PTO_SERVICIO 
      INNER JOIN GEPR_TPROCESO PROC ON PSERV.OID_PROCESO = PROC.OID_PROCESO 
      INNER JOIN GEPR_TPRODUCTO PROD ON PROC.OID_PRODUCTO = PROD.OID_PRODUCTO 
      INNER JOIN GEPR_TTIPO_PROCESADO TPPROC ON PROC.OID_TIPO_PROCESADO = TPPROC.OID_TIPO_PROCESADO 
      LEFT JOIN GEPR_TCLIENTE CLIFAT ON PSERV.OID_CLIENTE_FACTURACION = CLIFAT.OID_CLIENTE 
    WHERE CLI.COD_CLIENTE = []COD_CLIENTE{0} 
      AND SUBCLI.COD_SUBCLIENTE = []COD_SUBCLIENTE{0} 
      AND PTO.COD_PTO_SERVICIO = []COD_PTO_SERVICIO{0} 
      AND PSERV.COD_DELEGACION IN ([]COD_DELEGACION{0}, []DELEGACIONCENTRAL{0}) 
      AND SUB.COD_SUBCANAL = []COD_SUBCANAL{0} 
      AND PSERV.BOL_VIGENTE = 1 
      AND PSUB.BOL_VIGENTE = 1 
  ) PROCESO 

  LEFT JOIN GEPR_TINFORM_ADICIONAL_CLIENTE IR ON IR.OID_IAC = PROCESO.OID_IAC_REMESA
  LEFT JOIN GEPR_TINFORM_ADICIONAL_CLIENTE IB ON IB.OID_IAC = PROCESO.OID_IAC_BULTO
  LEFT JOIN GEPR_TINFORM_ADICIONAL_CLIENTE IP ON IP.OID_IAC = PROCESO.OID_IAC
WHERE ROWNUM = 1 
ORDER BY NIVELA, NIVELB ASC