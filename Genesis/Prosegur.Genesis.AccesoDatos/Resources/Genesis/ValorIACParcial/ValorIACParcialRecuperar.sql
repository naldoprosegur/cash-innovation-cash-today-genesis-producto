﻿SELECT TIAC.COD_TERMINO AS COD_TERMINO_IAC,
       IACP.DES_VALOR_IAC
FROM SAPR_TVALOR_IACXPARCIAL IACP
INNER JOIN GEPR_TTERMINO TIAC ON TIAC.OID_TERMINO = IACP.OID_TERMINO
WHERE IACP.OID_PARCIAL = []OID_ELEMENTO