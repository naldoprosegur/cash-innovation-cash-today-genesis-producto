﻿/* Nueva query para obterner Documento Documento_ObtenerDocumento_Base.sql */
SELECT
	 D.OID_DOCUMENTO
	,D.OID_FORMULARIO
	,D.OID_CUENTA_ORIGEN
	,D.OID_CUENTA_DESTINO
	,D.OID_CUENTA_SALDO_ORIGEN
	,D.OID_CUENTA_SALDO_DESTINO
	,D.OID_DOCUMENTO_PADRE
	,D.OID_DOCUMENTO_SUSTITUTO
	,D.OID_TIPO_DOCUMENTO
	,D.OID_SECTOR_ORIGEN
	,D.OID_SECTOR_DESTINO
	,D.OID_MOVIMENTACION_FONDO
	,D.OID_GRUPO_DOCUMENTO
	,FN_GMT_DELEGACION_###VERSION###(P.OID_DELEGACION, D.FYH_PLAN_CERTIFICACION) AS FYH_PLAN_CERTIFICACION
	,D.FYH_PLAN_CERTIFICACION AS FYH_PLAN_CERTIFICACION_SINGMT
	,CASE WHEN D.FYH_GESTION IS NOT NULL THEN FN_GMT_DELEGACION_###VERSION###(P.OID_DELEGACION, D.FYH_GESTION)
		 ELSE NULL
	END AS FYH_GESTION
	,D.BOL_CERTIFICADO
	,D.COD_EXTERNO
	,D.COD_ESTADO
	,D.COD_COMPROBANTE
	,D.COD_CERTIFICACION_CUENTAS
    ,D.DES_MENSAJE_EXTERNO 
FROM SAPR_TDOCUMENTO D
  INNER JOIN GEPR_TSECTOR S ON S.OID_SECTOR = D.OID_SECTOR_DESTINO
  INNER JOIN GEPR_TPLANTA P ON P.OID_PLANTA = S.OID_PLANTA
  {0}
WHERE 1 = 1
  {1}