﻿SELECT * FROM GEPR_TCARACT_TIPOSECTOR S
WHERE S.OID_CARACT_TIPOSECTOR NOT IN 
(
	SELECT OID_CARACT_TIPOSECTOR FROM GEPR_TCARACTTIPOSECTORXTIPOSEC GP
	WHERE GP.OID_TIPO_SECTOR = :OID_TIPO_SECTOR
)