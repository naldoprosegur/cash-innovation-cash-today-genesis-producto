﻿SELECT TS.BOL_ACTIVO,
       TS.COD_MIGRACION,
       TS.COD_TIPO_SECTOR,
       TS.DES_TIPO_SECTOR,
       TS.DES_USUARIO_CREACION,
       TS.DES_USUARIO_MODIFICACION,
       TS.GMT_CREACION,
       TS.GMT_MODIFICACION,
       TS.OID_TIPO_SECTOR
FROM GEPR_TTIPO_SECTOR TS
INNER JOIN GEPR_TTIPO_SECTORXPLANTA TSP ON TSP.OID_TIPO_SECTOR = TS.OID_TIPO_SECTOR
WHERE TSP.OID_PLANTA = []OID_PLANTA