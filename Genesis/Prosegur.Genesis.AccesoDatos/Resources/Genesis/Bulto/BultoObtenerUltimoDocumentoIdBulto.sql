﻿SELECT DE.OID_DOCUMENTO FROM SAPR_TDOCUMENTOXELEMENTO DE
WHERE DE.COD_ESTADO_DOCXELEMENTO = []COD_ESTADO_DOCXELEMENTO
  AND DE.OID_BULTO = []OID_BULTO
  AND rownum = 1
ORDER BY DE.GMT_CREACION DESC