﻿SELECT C.OID_CALIDAD, 
       C.COD_CALIDAD,
       C.DES_CALIDAD
FROM GEPR_TCALIDAD C
WHERE 1 = 1 {0}
ORDER BY DES_CALIDAD