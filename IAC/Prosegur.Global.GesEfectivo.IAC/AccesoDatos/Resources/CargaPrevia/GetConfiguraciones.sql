﻿SELECT OID_CONFIGURACION,
            COD_CONFIGURACION,
            DES_CONFIGURACION,
           	COD_CLIENTE,
            COD_SUBCLIENTE, 
            COD_PTO_SERVICIO, 
            COD_CANAL,
            COD_SUBCANAL,
            COD_DELEGACION,
            NEC_FORMATO_ARCHIVO,
            NEC_TIPO_ARCHIVO,
            COD_USUARIO,
            FYH_ACTUALIZACION,
            BOL_VIGENTE
FROM GEPR_TCONFIGURACION_CP 
WHERE COD_DELEGACION = :COD_DELEGACION  AND 
      COD_CLIENTE = :COD_CLIENTE  AND 
      COD_SUBCLIENTE IS NULL  AND 
      COD_PTO_SERVICIO IS NULL
	  {0}
UNION 
SELECT OID_CONFIGURACION,
            COD_CONFIGURACION,
            DES_CONFIGURACION,
           	COD_CLIENTE,
            COD_SUBCLIENTE, 
            COD_PTO_SERVICIO, 
            COD_CANAL,
            COD_SUBCANAL,
            COD_DELEGACION,
            NEC_FORMATO_ARCHIVO,
            NEC_TIPO_ARCHIVO,
            COD_USUARIO,
            FYH_ACTUALIZACION,
            BOL_VIGENTE
FROM GEPR_TCONFIGURACION_CP 
WHERE COD_DELEGACION = :COD_DELEGACION  AND 
      COD_CLIENTE = :COD_CLIENTE  AND 
      COD_SUBCLIENTE = :COD_SUBCLIENTE  AND 
      COD_PTO_SERVICIO IS NULL  
	  {0}
UNION
SELECT OID_CONFIGURACION,
            COD_CONFIGURACION,
            DES_CONFIGURACION,
           	COD_CLIENTE,
            COD_SUBCLIENTE, 
            COD_PTO_SERVICIO, 
            COD_CANAL,
            COD_SUBCANAL,
            COD_DELEGACION,
            NEC_FORMATO_ARCHIVO,
            NEC_TIPO_ARCHIVO,
            COD_USUARIO,
            FYH_ACTUALIZACION,
            BOL_VIGENTE
FROM GEPR_TCONFIGURACION_CP 
WHERE COD_DELEGACION = :COD_DELEGACION  AND 
      COD_CLIENTE = :COD_CLIENTE  AND 
      COD_SUBCLIENTE = :COD_SUBCLIENTE  AND 
      COD_PTO_SERVICIO = :COD_PTO_SERVICIO
	  {0} 