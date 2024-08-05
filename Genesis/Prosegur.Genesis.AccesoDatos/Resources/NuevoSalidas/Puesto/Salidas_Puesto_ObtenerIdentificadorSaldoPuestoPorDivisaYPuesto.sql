 SELECT  
	SPU.OID_SALDO_PUESTO  
FROM GEPR_TSALDO_PUESTO SPU
	INNER JOIN GEPR_TPUESTO PUE ON PUE.OID_PUESTO = SPU.OID_PUESTO
    INNER JOIN GEPR_TDIVISA DIV ON DIV.OID_DIVISA = SPU.OID_DIVISA    
WHERE DIV.COD_ISO_DIVISA = :COD_ISO_DIVISA   
    AND  PUE.COD_PUESTO =:COD_PUESTO
    AND PUE.COD_DELEGACION =:COD_DELEGACION