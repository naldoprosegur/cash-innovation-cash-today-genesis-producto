﻿/*ConteoRecuperarParcialialesBulto.sql*/
SELECT PARC.OID_BULTO
FROM GEPR_TPARCIAL PARC INNER JOIN GEPR_TBULTO BULT ON PARC.OID_BULTO = BULT.OID_BULTO
WHERE BULT.OID_REMESA = []OID_REMESA AND ROWNUM = 1