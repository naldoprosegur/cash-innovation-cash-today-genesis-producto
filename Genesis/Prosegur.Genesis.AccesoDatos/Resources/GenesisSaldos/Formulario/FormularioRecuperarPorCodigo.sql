﻿SELECT 
F.OID_FORMULARIO
,F.OID_ACCION_CONTABLE
,F.OID_IAC_INDIVIDUAL
,F.OID_IAC_GRUPO
,F.OID_FILTRO_FORMULARIO
,F.OID_TIPO_DOCUMENTO
,F.COD_FORMULARIO
,F.DES_FORMULARIO
,F.COD_MIGRACION
,F.COD_COLOR
,F.BIN_ICONO_FORMULARIO
,F.BOL_ACTIVO
,F.GMT_CREACION
,F.DES_USUARIO_CREACION
,F.GMT_MODIFICACION
,F.DES_USUARIO_MODIFICACION
,AC.COD_ACCION_CONTABLE
,AC.DES_ACCION_CONTABLE
,AC.BOL_ACTIVO AS AC_BOL_ACTIVO
,AC.GMT_CREACION AS AC_GMT_CREACION
,AC.DES_USUARIO_CREACION AS AC_DES_USUARIO_CREACION
,AC.GMT_MODIFICACION AS AC_GMT_MODIFICACION
,AC.DES_USUARIO_MODIFICACION AS AC_DES_USUARIO_MODIFICACION
,FF.DES_FILTRO_FORMULARIO
,FF.BOL_SOLO_DISPONIBLE
,FF.BOL_CON_VALOR
,FF.BOL_CON_BULTO AS FF_BOL_CON_BULTO
,FF.BOL_SOLO_REENVIO
,FF.BOL_SOLO_SUSTITUCION
,FF.BOL_CON_FECHA_ESPECIFICA
,FF.NEC_DIAS_BUSQUEDA_INICIO
,FF.NEC_DIAS_BUSQUEDA_FIN
,FF.BOL_ACTIVO AS FF_BOL_ACTIVO
,FF.GMT_CREACION AS FF_GMT_CREACION
,FF.DES_USUARIO_CREACION AS FF_DES_USUARIO_CREACION
,FF.GMT_MODIFICACION AS FF_GMT_MODIFICACION
,FF.DES_USUARIO_MODIFICACION AS FF_DES_USUARIO_MODIFICACION
,TD.COD_TIPO_DOCUMENTO
,TD.DES_TIPO_DOCUMENTO
,TD.NEC_ORDEN
,TD.BOL_ACTIVO AS TD_BOL_ACTIVO
,TD.BOL_CERTIFICACION
,TD.GMT_CREACION AS TD_GMT_CREACION
,TD.DES_USUARIO_CREACION AS TD_DES_USUARIO_CREACION
,TD.GMT_MODIFICACION AS TD_GMT_MODIFICACION
,TD.DES_USUARIO_MODIFICACION AS TD_DES_USUARIO_MODIFICACION
FROM SAPR_TFORMULARIO F
INNER JOIN SAPR_TACCION_CONTABLE AC ON F.OID_ACCION_CONTABLE = AC.OID_ACCION_CONTABLE
INNER JOIN SAPR_TTIPO_DOCUMENTO TD ON F.OID_TIPO_DOCUMENTO = TD.OID_TIPO_DOCUMENTO
-- PERMITE NULL POR ISSO LEFT JOIN
LEFT OUTER JOIN SAPR_TFILTRO_FORMULARIO FF ON F.OID_FILTRO_FORMULARIO = FF.OID_FILTRO_FORMULARIO
WHERE COD_FORMULARIO = []COD_FORMULARIO