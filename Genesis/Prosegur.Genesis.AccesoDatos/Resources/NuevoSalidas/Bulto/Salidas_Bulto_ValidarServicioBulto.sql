SELECT
  B.OID_BULTO,
  B.COD_ESTADO_BULTO,
  B.FYH_ACTUALIZACION,
  B.COD_USUARIO_BLOQUEO
FROM
  GEPR_TBULTO B
  INNER JOIN GEPR_TREMESA R ON B.OID_REMESA = R.OID_REMESA
WHERE
  R.COD_DELEGACION = []COD_DELEGACION