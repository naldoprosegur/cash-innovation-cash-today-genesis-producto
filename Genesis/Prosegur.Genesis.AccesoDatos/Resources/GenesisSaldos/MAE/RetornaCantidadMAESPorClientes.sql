/*DASHBOARD MAE QUADRANTE2*/ 
SELECT
  COUNT(DISTINCT SECT.OID_SECTOR) TOTAL_MAES,
  CLIE.DES_CLIENTE
FROM
  GEPR_TSECTOR SECT
  INNER JOIN GEPR_TTIPO_SECTOR TISE ON SECT.OID_TIPO_SECTOR = TISE.OID_TIPO_SECTOR
  INNER JOIN SAPR_TCUENTA CUEN ON SECT.OID_SECTOR = CUEN.OID_SECTOR
  INNER JOIN GEPR_TCLIENTE CLIE ON CUEN.OID_CLIENTE = CLIE.OID_CLIENTE
  INNER JOIN GEPR_TPLANTA PLANT ON SECT.OID_PLANTA = PLANT.OID_PLANTA
  INNER JOIN GEPR_TDELEGACION DELE ON PLANT.OID_DELEGACION = DELE.OID_DELEGACION
WHERE 1 = 1
   {0}
GROUP BY
  CLIE.DES_CLIENTE