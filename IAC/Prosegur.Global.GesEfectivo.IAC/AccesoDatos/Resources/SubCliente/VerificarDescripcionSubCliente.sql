﻿SELECT
    COUNT(0) as QUANTIDADE                
FROM
    GEPR_TSUBCLIENTE SC
    INNER JOIN GEPR_TCLIENTE C ON C.OID_CLIENTE = SC.OID_CLIENTE
WHERE 1 = 1
  AND C.COD_CLIENTE = []COD_CLIENTE
  AND SC.DES_SUBCLIENTE  = []DES_SUBCLIENTE