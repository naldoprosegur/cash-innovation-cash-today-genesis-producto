﻿INSERT INTO	GEPR_TINTEGRACION
(
	OID_INTEGRACION, 
	OID_TABLA_INTEGRACION, 
	COD_TABLA_INTEGRACION, 
	COD_ESTADO, 
	COD_MODULO_ORIGEN, 
	COD_MODULO_DESTINO, 
	COD_PROCESO, 
	NEL_INTENTO_ENVIO, 
	GMT_CREACION, 
	DES_USUARIO_CREACION, 
	GMT_MODIFICACION, 
	DES_USUARIO_MODIFICACION
)
VALUES
(
	[]OID_INTEGRACION, 
	[]OID_TABLA_INTEGRACION, 
	[]COD_TABLA_INTEGRACION, 
	[]COD_ESTADO, 
	[]COD_MODULO_ORIGEN, 
	[]COD_MODULO_DESTINO, 
	[]COD_PROCESO, 
	1, 
	FN_GMT_ZERO_###VERSION###, 
	[]DES_USUARIO_CREACION, 
	FN_GMT_ZERO_###VERSION###, 
	[]DES_USUARIO_MODIFICACION
)