﻿SELECT T.OID_REMESA,
       T.OID_CUENTA,
	   T.OID_BULTO
FROM (
SELECT R.OID_REMESA,
       CU.OID_CUENTA,
       NULL OID_BULTO
FROM SAPR_TREMESA R
INNER JOIN SAPR_TDOCUMENTO D ON D.OID_DOCUMENTO = R.OID_DOCUMENTO
INNER JOIN SAPR_TCUENTA CU ON CU.OID_CUENTA = R.OID_CUENTA
INNER JOIN GEPR_TCLIENTE CL ON CL.OID_CLIENTE = CU.OID_CLIENTE
INNER JOIN GEPR_TSUBCANAL SC ON SC.OID_SUBCANAL = CU.OID_SUBCANAL
INNER JOIN GEPR_TCANAL CA ON CA.OID_CANAL = SC.OID_CANAL
INNER JOIN GEPR_TSECTOR SE ON SE.OID_SECTOR = CU.OID_SECTOR
INNER JOIN GEPR_TPLANTA PL ON PL.OID_PLANTA = SE.OID_PLANTA
INNER JOIN GEPR_TDELEGACION DEL ON DEL.OID_DELEGACION = PL.OID_DELEGACION
LEFT JOIN GEPR_TSUBCLIENTE SCL ON SCL.OID_SUBCLIENTE = CU.OID_SUBCLIENTE
LEFT JOIN GEPR_TPUNTO_SERVICIO PTO ON PTO.OID_PTO_SERVICIO = CU.OID_PTO_SERVICIO
WHERE R.BOL_GESTION_BULTO = 0 AND D.COD_ESTADO = []COD_ESTADO AND R.COD_ESTADO = []COD_ESTADO_REMESA AND DEL.COD_DELEGACION = []COD_DELEGACION AND PL.COD_PLANTA = []COD_PLANTA
{0}
UNION
SELECT B.OID_REMESA,
       CU.OID_CUENTA,
       B.OID_BULTO
FROM SAPR_TBULTO B
INNER JOIN SAPR_TREMESA R ON R.OID_REMESA = B.OID_REMESA
INNER JOIN SAPR_TDOCUMENTO D ON D.OID_DOCUMENTO = B.OID_DOCUMENTO
INNER JOIN SAPR_TCUENTA CU ON CU.OID_CUENTA = B.OID_CUENTA
INNER JOIN GEPR_TCLIENTE CL ON CL.OID_CLIENTE = CU.OID_CLIENTE
INNER JOIN GEPR_TSUBCANAL SC ON SC.OID_SUBCANAL = CU.OID_SUBCANAL
INNER JOIN GEPR_TCANAL CA ON CA.OID_CANAL = SC.OID_CANAL
INNER JOIN GEPR_TSECTOR SE ON SE.OID_SECTOR = CU.OID_SECTOR
INNER JOIN GEPR_TPLANTA PL ON PL.OID_PLANTA = SE.OID_PLANTA
INNER JOIN GEPR_TDELEGACION DEL ON DEL.OID_DELEGACION = PL.OID_DELEGACION
LEFT JOIN GEPR_TSUBCLIENTE SCL ON SCL.OID_SUBCLIENTE = CU.OID_SUBCLIENTE
LEFT JOIN GEPR_TPUNTO_SERVICIO PTO ON PTO.OID_PTO_SERVICIO = CU.OID_PTO_SERVICIO
WHERE R.BOL_GESTION_BULTO = 1 AND D.COD_ESTADO = []COD_ESTADO AND B.COD_ESTADO = []COD_ESTADO_BULTO AND DEL.COD_DELEGACION = []COD_DELEGACION AND PL.COD_PLANTA = []COD_PLANTA
{0}) T
ORDER BY T.OID_REMESA