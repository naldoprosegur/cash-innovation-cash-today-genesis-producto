﻿ SELECT 
	VALOR 
FROM 
	GEPR_TDICCIONARIO D       
WHERE 
	D.COD_IDIOMA = []COD_IDIOMA
	AND D.COD_FUNCIONALIDAD = []COD_FUNCIONALIDAD
	AND D.COD_EXPRESION = []COD_EXPRESION
UNION ALL
 SELECT 
	VALOR 
FROM 
	GEPR_TDICCIONARIO D       
WHERE 
	D.COD_IDIOMA = []COD_IDIOMA
	AND D.COD_FUNCIONALIDAD = 'GENERICO'
	AND D.COD_EXPRESION = []COD_EXPRESION