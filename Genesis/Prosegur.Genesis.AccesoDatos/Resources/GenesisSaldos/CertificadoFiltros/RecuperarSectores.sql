﻿SELECT SECT.OID_SECTOR, SECT.COD_SECTOR, SECT.DES_SECTOR
FROM SAPR_TCERTIFICADOXSECTOR CESE INNER JOIN GEPR_TSECTOR SECT ON CESE.OID_SECTOR = SECT.OID_SECTOR
WHERE CESE.OID_CERTIFICADO = []OID_CERTIFICADO
ORDER BY SECT.COD_SECTOR