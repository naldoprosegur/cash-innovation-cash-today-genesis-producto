﻿INSERT INTO SAPR_TCONFIG_NIVEL_MOVIMIENTO
(
	OID_CONFIG_NIVEL_MOVIMIENTO,
	OID_CONFIG_NIVEL_SALDO,
	OID_CLIENTE,
	OID_SUBCLIENTE,
	OID_PTO_SERVICIO,
	OID_SUBCANAL,
	FYH_VIGENCIA,
	BOL_ACTIVO,
	GMT_CREACION,
	DES_USUARIO_CREACION,
	GMT_MODIFICACION,
	DES_USUARIO_MODIFICACION,
	BOL_DEFECTO
)
VALUES
(
	[]OID_CONFIG_NIVEL_MOVIMIENTO,
	[]OID_CONFIG_NIVEL_SALDO,
	[]OID_CLIENTE,
	[]OID_SUBCLIENTE,
	[]OID_PTO_SERVICIO,
	[]OID_SUBCANAL,
	SYSDATE,
	[]BOL_ACTIVO,
	FN_GMT_ZERO_###VERSION###,
	[]DES_USUARIO_CREACION,
	FN_GMT_ZERO_###VERSION###,
	[]DES_USUARIO_MODIFICACION,
	[]BOL_DEFECTO
)