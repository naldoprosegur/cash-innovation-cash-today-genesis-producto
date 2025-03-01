﻿SELECT 
    CU.OID_CUENTA,
	CU.COD_TIPO_CUENTA,
    CU.GMT_CREACION AS GMT_CREACION_CUENTA,
    CU.DES_USUARIO_CREACION AS USUARIO_CREACION_CUENTA,
    CU.GMT_MODIFICACION AS GMT_MOD_CUENTA,
    CU.DES_USUARIO_MODIFICACION AS USUARIO_MOD_CUENTA, 
    CL.OID_CLIENTE, 
    CL.COD_CLIENTE,
    CL.DES_CLIENTE, 
    CL.BOL_ENVIADO_SALDOS AS CLIENTE_ENV_SALDOS,
    CL.BOL_TOTALIZADOR_SALDO AS CLIENTE_TOT_SALDOS,
    CL.BOL_VIGENTE AS CLIENTE_ACTIVO,
    SCL.OID_SUBCLIENTE,
    SCL.COD_SUBCLIENTE,
    SCL.DES_SUBCLIENTE,
    SCL.BOL_ENVIADO_SALDOS AS SUBCLIENTE_ENV_SALDOS,
    SCL.BOL_TOTALIZADOR_SALDO AS SUBCLIENTE_TOT_SALDOS,
    SCL.BOL_VIGENTE AS SUBCLIENTE_ACTIVO,
    PTO.OID_PTO_SERVICIO,
    PTO.COD_PTO_SERVICIO,
    PTO.DES_PTO_SERVICIO,
    PTO.BOL_ENVIADO_SALDOS AS PTO_ENV_SALDOS,
    PTO.BOL_TOTALIZADOR_SALDO AS PTO_TOT_SALDOS,
    PTO.BOL_VIGENTE AS PTO_ACTIVO,
    CAN.OID_CANAL,
    CAN.COD_CANAL,
    CAN.COD_MIGRACION AS MIGRACION_CANAL,
    CAN.COD_USUARIO AS USUARIO_CANAL,
    CAN.DES_CANAL, 
    CAN.BOL_VIGENTE AS CANAL_ACTIVO,
    CAN.FYH_ACTUALIZACION AS FYH_CANAL,
    CAN.OBS_CANAL,
    SBC.OID_SUBCANAL,
    SBC.COD_SUBCANAL,
    SBC.COD_MIGRACION AS MIGRACION_SUBCANAL,
    SBC.COD_USUARIO AS USUARIO_SUBCANAL,
    SBC.DES_SUBCANAL,
    SBC.BOL_VIGENTE AS SUBCANAL_ACTIVO, 
    SBC.FYH_ACTUALIZACION AS FYH_SUBCANAL,
    SBC.OBS_SUBCANAL,
    SE.OID_SECTOR,
    SE.COD_SECTOR,
    SE.COD_MIGRACION AS MIGRACION_SECTOR,
    SE.DES_SECTOR,
    SE.BOL_ACTIVO AS SECTOR_ACTIVO,
    SE.BOL_CENTRO_PROCESO,
    SE.BOL_CONTEO,
    SE.BOL_TESORO,
    SE.GMT_CREACION AS GMT_CREACION_SECTOR,
    SE.GMT_MODIFICACION AS GMT_MOD_SECTOR,
    SE.BOL_PERMITE_DISPONER_VALOR,
    D.OID_DELEGACION,
    D.COD_DELEGACION,
    D.DES_DELEGACION, 
    D.BOL_VIGENTE AS DELEGACION_ACTIVA,
    P.OID_PLANTA,
    P.COD_PLANTA,
    P.DES_PLANTA,
    P.BOL_ACTIVO AS PLANTA_ACTIVA   
FROM SAPR_TCUENTA CU
INNER JOIN  GEPR_TCLIENTE CL ON CL.OID_CLIENTE = CU.OID_CLIENTE
INNER JOIN GEPR_TSUBCANAL SBC ON SBC.OID_SUBCANAL = CU.OID_SUBCANAL
INNER JOIN GEPR_TCANAL CAN ON CAN.OID_CANAL = SBC.OID_CANAL
INNER JOIN GEPR_TSECTOR SE ON SE.OID_SECTOR = CU.OID_SECTOR
INNER JOIN GEPR_TTIPO_SECTOR TSE ON TSE.OID_TIPO_SECTOR = SE.OID_TIPO_SECTOR
INNER JOIN GEPR_TPLANTA P ON P.OID_PLANTA = SE.OID_PLANTA
INNER JOIN GEPR_TDELEGACION D ON D.OID_DELEGACION = P.OID_DELEGACION
LEFT JOIN GEPR_TSUBCLIENTE SCL ON SCL.OID_SUBCLIENTE = CU.OID_SUBCLIENTE
LEFT JOIN GEPR_TPUNTO_SERVICIO PTO ON PTO.OID_PTO_SERVICIO = CU.OID_PTO_SERVICIO
WHERE
	CL.COD_CLIENTE = []COD_CLIENTE
	AND SBC.COD_SUBCANAL = []COD_SUBCANAL
	AND SE.COD_SECTOR = []COD_SECTOR