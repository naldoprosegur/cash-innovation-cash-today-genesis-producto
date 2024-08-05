﻿SELECT  M.COD_MODULO,
        M.DES_MODULO,
        DIVS.COD_ISO_DIVISA,
        DIVS.DES_DIVISA,
        DIVS.OID_DIVISA,
        ML.NEL_CANTIDAD CANTIDAD_MODULO,
        MD.NEL_UNIDADES CANTIDAD_DENOMINACION,
        DENS.OID_DENOMINACION,
        DENS.COD_DENOMINACION,
        DENS.DES_DENOMINACION,
        DENS.NUM_VALOR_FACIAL,
		DENS.BOL_BILLETE,
		ML.OID_REMESA
FROM GEPR_TMODULO_LEGADO ML 
INNER JOIN SAGE_YMODULO M ON M.COD_MODULO = ML.COD_MODULO
INNER JOIN SAGE_YMODULO_DESGLOSE MD ON MD.OID_MODULO = M.OID_MODULO
INNER JOIN SAGE_YDENOMINACION D ON D.OID_DENOMINACION  = MD.OID_DENOMINACION
INNER JOIN SAGE_YDIVISA DIV ON DIV.OID_DIVISA = D.OID_DIVISA
INNER JOIN GEPR_TDIVISA DIVS ON DIVS.COD_ISO_DIVISA = DIV.COD_ISO_DIVISA
INNER JOIN GEPR_TDENOMINACION DENS ON DENS.COD_DENOMINACION = D.COD_DENOMINACION
{0}
