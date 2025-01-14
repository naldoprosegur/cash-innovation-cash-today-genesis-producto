SELECT
       P.OID_PROCESO IDENTIFICADOR_PROCESO,
       P.DES_PROCESO DESCRIPCION_PROCESO,
       C.COD_CLIENTE CODIGO_CLIENTE,
       C.DES_CLIENTE DESCRIPCION_CLIENTE,
       SC.COD_SUBCLIENTE CODIGO_SUBCLIENTE,
       SC.DES_SUBCLIENTE DESCRIPCION_SUBCLIENTE,
       PS.COD_PTO_SERVICIO CODIGO_PUNTO_SERVICIO,
       PS.DES_PTO_SERVICIO DESCRIPCION_PUNTO_SERVICIO,
       PPPS.COD_DELEGACION CODIGO_DELEGACION,
       PSC.BOL_VIGENTE VIGENTE,
       CA.COD_CANAL CODIGO_CANAL,
       CA.DES_CANAL DESCRIPCION_CANAL,
       SCA.COD_SUBCANAL CODIGO_SUBCANAL,
       SCA.DES_SUBCANAL DESCRIPCION_SUBCANAL
FROM
       GEPR_TPROCESO_POR_PSERVICIO PPPS
	   INNER JOIN GEPR_TCLIENTE C ON PPPS.OID_CLIENTE = C.OID_CLIENTE
	   LEFT OUTER JOIN GEPR_TSUBCLIENTE SC ON PPPS.OID_SUBCLIENTE = SC.OID_SUBCLIENTE
	   LEFT OUTER JOIN GEPR_TPUNTO_SERVICIO PS ON PS.OID_PTO_SERVICIO = PPPS.OID_PTO_SERVICIO
	   INNER JOIN GEPR_TPROCESO_SUBCANAL PSC ON PPPS.OID_PROCESO_POR_PSERVICIO = PSC.OID_PROCESO_POR_PSERVICIO
	   INNER JOIN GEPR_TSUBCANAL SCA ON PSC.OID_SUBCANAL = SCA.OID_SUBCANAL
	   INNER JOIN GEPR_TPROCESO P ON PPPS.OID_PROCESO = P.OID_PROCESO
	   INNER JOIN GEPR_TCANAL CA ON SCA.OID_CANAL = CA.OID_CANAL
WHERE
       PPPS.COD_DELEGACION = []CODIGO_DELEGACION       