﻿SELECT 
      MEDIO_PAGO,
      DIVISA_ORDENAR, 
	  COD_COLOR,
      DES_DIVISA,
      SUM((CASE BOL_DISPONIBLE WHEN 1 THEN NUM_IMPORTE END))NUM_IMPORTE_DISP,
      SUM((CASE BOL_DISPONIBLE WHEN 0 THEN NUM_IMPORTE END))NUM_IMPORTE_NODISP,    
      SUM(NUM_IMPORTE) NUM_IMPORTE     
FROM (
SELECT 
     0 MEDIO_PAGO,
     DIV.DES_DIVISA AS DIVISA_ORDENAR,
	 DIV.COD_COLOR,
     DIV.DES_DIVISA as DES_DIVISA,
     SE.NUM_IMPORTE NUM_IMPORTE,
     SE.BOL_DISPONIBLE
FROM SAPR_TSALDO_EFECTIVO SE
INNER JOIN SAPR_TCUENTA CU ON CU.OID_CUENTA = SE.OID_CUENTA_SALDO
INNER JOIN GEPR_TDIVISA DIV ON DIV.OID_DIVISA = SE.OID_DIVISA
LEFT JOIN GEPR_TDENOMINACION DENO ON DENO.OID_DENOMINACION = SE.OID_DENOMINACION
INNER JOIN (
            SELECT *
              FROM GEPR_TSECTOR SECT
              START WITH 1 = 1 {0}
              CONNECT BY NOCYCLE PRIOR SECT.OID_SECTOR = SECT.OID_SECTOR_PADRE
            ) SEC ON SEC.OID_SECTOR = CU.OID_SECTOR
INNER JOIN GEPR_TCLIENTE CL ON CL.OID_CLIENTE = CU.OID_CLIENTE
LEFT JOIN GEPR_TSUBCLIENTE SUBCL ON SUBCL.OID_SUBCLIENTE = CU.OID_SUBCLIENTE
LEFT JOIN GEPR_TPUNTO_SERVICIO PTO ON PTO.OID_PTO_SERVICIO = CU.OID_PTO_SERVICIO
INNER JOIN GEPR_TSUBCANAL SUBCN ON SUBCN.OID_SUBCANAL = CU.OID_SUBCANAL
INNER JOIN GEPR_TCANAL CN ON CN.OID_CANAL = SUBCN.OID_CANAL
WHERE 0 = 0
	{1}

UNION ALL

SELECT 
     1 MEDIO_PAGO,
     DIV.DES_DIVISA AS DIVISA_ORDENAR,
	 DIV.COD_COLOR,
     DECODE(SM.COD_TIPO_MEDIO_PAGO,
        'codtipoa',
        'Tickets',
        'codtipob',
        'Cheque',
        'codtipoc',
        'Tarjetas',
        'codtipo',
        'Otros Valores') || ' ' || DIV.DES_DIVISA,
     SM.NUM_IMPORTE NUM_IMPORTE,
     SM.BOL_DISPONIBLE
FROM SAPR_TSALDO_MEDIO_PAGO SM
INNER JOIN SAPR_TCUENTA CU ON CU.OID_CUENTA = SM.OID_CUENTA_SALDO
INNER JOIN GEPR_TDIVISA DIV ON DIV.OID_DIVISA = SM.OID_DIVISA
LEFT JOIN GEPR_TMEDIO_PAGO MP ON MP.OID_MEDIO_PAGO = SM.OID_MEDIO_PAGO
INNER JOIN (
            SELECT *
              FROM GEPR_TSECTOR SECT
              START WITH 1 = 1 {0}
              CONNECT BY NOCYCLE PRIOR SECT.OID_SECTOR = SECT.OID_SECTOR_PADRE
            ) SEC ON SEC.OID_SECTOR = CU.OID_SECTOR
INNER JOIN GEPR_TCLIENTE CL ON CL.OID_CLIENTE = CU.OID_CLIENTE
LEFT JOIN GEPR_TSUBCLIENTE SUBCL ON SUBCL.OID_SUBCLIENTE = CU.OID_SUBCLIENTE
LEFT JOIN GEPR_TPUNTO_SERVICIO PTO ON PTO.OID_PTO_SERVICIO = CU.OID_PTO_SERVICIO
INNER JOIN GEPR_TSUBCANAL SUBCN ON SUBCN.OID_SUBCANAL = CU.OID_SUBCANAL
INNER JOIN GEPR_TCANAL CN ON CN.OID_CANAL = SUBCN.OID_CANAL
WHERE 0 = 0
	{1}

)
GROUP BY DIVISA_ORDENAR,MEDIO_PAGO,DES_DIVISA,COD_COLOR
HAVING(SUM((CASE BOL_DISPONIBLE WHEN 1 THEN NUM_IMPORTE END))<>0 OR SUM((CASE BOL_DISPONIBLE WHEN 0 THEN NUM_IMPORTE END))<>0)
ORDER BY DIVISA_ORDENAR,MEDIO_PAGO,DES_DIVISA