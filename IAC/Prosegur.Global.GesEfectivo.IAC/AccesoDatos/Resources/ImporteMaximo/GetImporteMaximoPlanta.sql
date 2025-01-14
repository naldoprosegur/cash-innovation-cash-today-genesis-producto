SELECT 
   IM.OID_IMPORTE_MAXIMO,
   IM.OID_CLIENTE,
   IM.OID_DIVISA,
   IM.OID_SUBCANAL,
   IM.OID_SECTOR,
   IM.OID_PLANTA,
   IM.NUM_IMPORTE_MAXIMO,
   IM.BOL_ACTIVO,
   IM.GMT_CREACION,
   IM.DES_USUARIO_CREACION,
   IM.GMT_MODIFICACION,
    SC.COD_SUBCANAL , SC.DES_SUBCANAL,
   C.COD_CLIENTE, C.DES_CLIENTE, D.COD_ISO_DIVISA, D.DES_DIVISA, CA.OID_CANAL, CA.DES_CANAL, CA.COD_CANAL
FROM GEPR_TIMPORTE_MAXIMO IM
inner JOIN GEPR_TCLIENTE C ON C.OID_CLIENTE = IM.OID_CLIENTE
LEFT JOIN GEPR_TSUBCANAL SC ON SC.OID_SUBCANAL = IM.OID_SUBCANAL
LEFT JOIN GEPR_TCANAL CA ON CA.OID_CANAL = SC.OID_CANAL
INNER JOIN GEPR_TDIVISA D ON D.OID_DIVISA = IM.OID_DIVISA
WHERE OID_PLANTA = []OID_PLANTA
ORDER BY  C.COD_CLIENTE, D.DES_DIVISA, CA.DES_CANAL, IM.NUM_IMPORTE_MAXIMO
