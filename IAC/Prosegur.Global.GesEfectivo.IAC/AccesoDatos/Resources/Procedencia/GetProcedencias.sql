SELECT 
  TPRO.OID_PROCEDENCIA,
  TSUBCLI.COD_TIPO_SUBCLIENTE, 
  TSUBCLI.DES_TIPO_SUBCLIENTE, 
  TPTOSER.COD_TIPO_PUNTO_SERVICIO, 
  TPTOSER.DES_TIPO_PUNTO_SERVICIO, 
  TPROC.COD_TIPO_PROCEDENCIA, 
  TPROC.DES_TIPO_PROCEDENCIA,
  TPRO.BOL_ACTIVO,
  TPRO.GMT_CREACION,
  TPRO.DES_USUARIO_CREACION,
  TPRO.DES_USUARIO_MODIFICACION, 
  TPRO.GMT_MODIFICACION
FROM 
  GEPR_TPROCEDENCIA TPRO
  INNER JOIN GEPR_TTIPO_SUBCLIENTE TSUBCLI ON TPRO.OID_TIPO_SUBCLIENTE = TSUBCLI.OID_TIPO_SUBCLIENTE
  INNER JOIN GEPR_TTIPO_PUNTO_SERVICIO TPTOSER ON TPRO.OID_TIPO_PUNTO_SERVICIO = TPTOSER.OID_TIPO_PUNTO_SERVICIO 
  INNER JOIN GEPR_TTIPO_PROCEDENCIA TPROC ON TPRO.OID_TIPO_PROCEDENCIA = TPROC.OID_TIPO_PROCEDENCIA