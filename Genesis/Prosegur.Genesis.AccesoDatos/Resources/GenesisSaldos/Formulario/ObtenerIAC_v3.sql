﻿/* Nueva query para obterner GrupoTerminosIAC del Formulario ObtenerIAC_v3.sql */

SELECT 
 IAC.OID_IAC
,IAC.COD_IAC
,IAC.DES_IAC
,IAC.OBS_IAC
,IAC.BOL_VIGENTE
,IAC.BOL_INVISIBLE
,IAC.BOL_COPIA_DECLARADOS

FROM GEPR_TINFORM_ADICIONAL_CLIENTE IAC
INNER JOIN SAPR_TFORMULARIO F ON F.{0} = IAC.OID_IAC
WHERE 1 = 1 {1}