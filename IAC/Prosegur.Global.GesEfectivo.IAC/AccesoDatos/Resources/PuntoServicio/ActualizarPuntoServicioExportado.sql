﻿UPDATE GEPR_TPUNTO_SERVICIO 
SET BOL_ENVIADO_SALDOS = []BOL_ENVIADO_SALDOS 
WHERE COD_PTO_SERVICIO = []COD_PTO_SERVICIO AND
      OID_SUBCLIENTE =(SELECT OID_SUBCLIENTE
                       FROM GEPR_TSUBCLIENTE SC
                       INNER JOIN GEPR_TCLIENTE C ON C.OID_CLIENTE = SC.OID_CLIENTE
                       WHERE SC.COD_SUBCLIENTE = []COD_SUBCLIENTE AND
                             C.COD_CLIENTE = []COD_CLIENTE)
