﻿SELECT DISTINCT A.OID_ABONO,
A.OID_BANCO,
C.COD_CLIENTE,
C.DES_CLIENTE,
A.OID_DELEGACION,
A.FYH_ABONO,
A.COD_TIPO_ABONO,
A.COD_ESTADO,
A.COD_ABONO,
A.GMT_CREACION,
A.DES_USUARIO_CREACION,
A.GMT_MODIFICACION,
A.DES_USUARIO_MODIFICACION,
A.COD_TIPO_VALORES,
DEL.OID_DELEGACION,
DEL.COD_DELEGACION,
DEL.DES_DELEGACION,
A.OID_GRUPO_DOCUMENTO
FROM SAPR_TABONO A
INNER JOIN GEPR_TDELEGACION DEL ON DEL.OID_DELEGACION = A.OID_DELEGACION
INNER JOIN GEPR_TCLIENTE C ON C.OID_CLIENTE = A.OID_BANCO
LEFT JOIN SAPR_TABONO_VALOR AV ON AV.OID_ABONO = A.OID_ABONO
LEFT JOIN SAPR_TABONO_ELEMENTO AE ON AE.OID_ABONO_VALOR = AV.OID_ABONO_VALOR
LEFT JOIN SAPR_TREMESA R ON R.OID_REMESA = AE.OID_REMESA
WHERE 0 = 0 
