﻿DELETE FROM
	GEPR_TCARACTTIPOSECTORXTIPOSEC SATP
WHERE
	SATP.OID_TIPO_SECTOR = (SELECT TP.OID_TIPO_SECTOR FROM GEPR_TTIPO_SECTOR TP WHERE TP.COD_TIPO_SECTOR = []COD_TIPO_SECTOR)