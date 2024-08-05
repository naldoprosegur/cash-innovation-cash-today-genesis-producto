﻿SELECT * FROM (
    SELECT
        CLIE.OID_CLIENTE,
        CLIE.COD_CLIENTE, 
        CLIE.DES_CLIENTE, 
        SUM(
           CASE WHEN S_EFE.BOL_DISPONIBLE = 1 THEN
             S_EFE.NUM_IMPORTE
           ELSE
             0
           END
        ) EFE_DIS,
        SUM(
           CASE WHEN S_EFE.BOL_DISPONIBLE = 0 THEN
             S_EFE.NUM_IMPORTE
           ELSE
             0
           END
        ) EFE_NDI,
        SUM(S_EFE.NUM_IMPORTE) SUM_EFE_DIS
    FROM
        SAPR_TSALDO_EFECTIVO S_EFE
        INNER JOIN SAPR_TCUENTA CUEN ON S_EFE.OID_CUENTA_SALDO = CUEN.OID_CUENTA
        INNER JOIN GEPR_TCLIENTE CLIE ON CUEN.OID_CLIENTE = CLIE.OID_CLIENTE
        INNER JOIN GEPR_TSECTOR SECT ON CUEN.OID_SECTOR = SECT.OID_SECTOR
        INNER JOIN GEPR_TPLANTA PLANT ON SECT.OID_PLANTA = PLANT.OID_PLANTA
		INNER JOIN GEPR_TDELEGACION DELE ON PLANT.OID_DELEGACION = DELE.OID_DELEGACION    
    WHERE 1 = 1
	{0}
    GROUP BY
        CLIE.OID_CLIENTE,
        CLIE.COD_CLIENTE, 
        CLIE.DES_CLIENTE
    ORDER BY SUM_EFE_DIS DESC) 
WHERE ROWNUM <= 10