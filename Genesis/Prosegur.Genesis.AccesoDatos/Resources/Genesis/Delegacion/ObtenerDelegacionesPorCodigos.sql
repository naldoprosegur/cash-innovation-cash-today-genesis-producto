﻿SELECT D.OID_DELEGACION,
       D.COD_PAIS,
       D.COD_DELEGACION,
       D.DES_DELEGACION,
       D.BOL_VIGENTE,
       D.OID_PAIS,
       D.NEC_GMT_MINUTOS,
       D.FYH_VERANO_INICIO,
       D.FYH_VERANO_FIN,
       D.NEC_VERANO_AJUSTE,
       D.DES_ZONA,
       D.GMT_CREACION,
       D.DES_USUARIO_CREACION,
       D.GMT_MODIFICACION,
       D.DES_USUARIO_MODIFICACION
  FROM GEPR_TDELEGACION D
  {0}
  WHERE D.BOL_VIGENTE = 1