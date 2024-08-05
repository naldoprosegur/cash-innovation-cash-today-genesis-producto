﻿INSERT INTO SAPR_TCERTIFICADOXSUBCANAL
(OID_CERTIFICADOXSUBCANAL,
OID_CERTIFICADO,
OID_SUBCANAL,
GMT_CREACION,
DES_USUARIO_CREACION,
GMT_MODIFICACION,
DES_USUARIO_MODIFICACION)
SELECT DISTINCT SYS_GUID() OID_CERTIFICADOXSUBCANAL,
                []OID_CERTIFICADO OID_CERTIFICADO,
                OID_SUBCANAL,
                FN_GMT_ZERO_###VERSION### GMT_CREACION,
                []DES_USUARIO_CREACION DES_USUARIO_CREACION,
                FN_GMT_ZERO_###VERSION###,
                []DES_USUARIO_MODIFICACION DES_USUARIO_MODIFICACION
FROM GEPR_TSUBCANAL