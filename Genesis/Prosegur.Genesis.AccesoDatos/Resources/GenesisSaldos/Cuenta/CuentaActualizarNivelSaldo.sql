﻿UPDATE
	SAPR_TNIVEL_SALDO
SET
	OID_CUENTA_MOVIMIENTO = []OID_CUENTA_MOVIMIENTO,
	OID_CUENTA_SALDO = []OID_CUENTA_SALDO,
	GMT_MODIFICACION = FN_GMT_ZERO_###VERSION###,
	DES_USUARIO_MODIFICACION = []DES_USUARIO_MODIFICACION
WHERE
	OID_NIVEL_SALDO = []OID_NIVEL_SALDO