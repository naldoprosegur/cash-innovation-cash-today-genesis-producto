﻿SELECT TIAC.COD_TERMINO AS COD_TERMINO_IAC,
       IACB.DES_VALOR_IAC
FROM SAPR_TVALOR_IACXBULTO IACB
INNER JOIN GEPR_TTERMINO TIAC ON TIAC.OID_TERMINO = IACB.OID_TERMINO
WHERE IACB.OID_BULTO = []OID_ELEMENTO