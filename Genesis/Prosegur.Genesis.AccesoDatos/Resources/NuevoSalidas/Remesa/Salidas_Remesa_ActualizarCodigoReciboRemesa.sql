 UPDATE GEPR_TREMESA REM
    SET COD_RECIBO_REMESA = :COD_RECIBO_REMESA
       ,COD_USUARIO = :COD_USUARIO
       ,FYH_ACTUALIZACION = :FYH_ACTUAL
  WHERE	COD_DELEGACION = :COD_DELEGACION
    AND OID_REMESA_LEGADO = :OID_REMESA_LEGADO
    AND FYH_ACTUALIZACION = :FYH_ACTUALIZACION
