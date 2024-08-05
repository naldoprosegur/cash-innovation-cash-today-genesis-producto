﻿SELECT C.OID_CODIGO_AJENO, 
	   C.OID_TABLA_GENESIS, 
	   C.COD_TIPO_TABLA_GENESIS, 
	   C.COD_IDENTIFICADOR, 
	   C.COD_AJENO, 
	   C.DES_AJENO, 
	   C.BOL_DEFECTO, 
	   C.BOL_ACTIVO, 
	   C.BOL_MIGRADO, 
	   C.GMT_CREACION, 
	   C.DES_USUARIO_CREACION, 
	   C.GMT_MODIFICACION, 
	   C.DES_USUARIO_MODIFICACION 
FROM GEPR_TCODIGO_AJENO C
WHERE C.BOL_ACTIVO = 1