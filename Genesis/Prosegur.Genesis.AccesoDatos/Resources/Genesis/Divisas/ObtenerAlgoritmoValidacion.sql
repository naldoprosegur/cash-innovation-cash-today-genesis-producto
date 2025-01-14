﻿SELECT a.OID_ALGORITMO_VALIDACION,
       a.COD_ALGORITMO_VALIDACION,
       a.DES_ALGORITMO_VALIDACION,
       a.OBS_ALGORITMO_VALIDACION,
       a.BOL_APLICA_TERM_MEDIO_PAGO,
       a.BOL_APLICA_TERM_IAC,
       a.COD_USUARIO,
       a.FYH_ACTUALIZACION
FROM GEPR_TALGORITMO_VALIDACION a
WHERE a.OID_ALGORITMO_VALIDACION = []OID_ALGORITMO_VALIDACION
ORDER BY a.DES_ALGORITMO_VALIDACION