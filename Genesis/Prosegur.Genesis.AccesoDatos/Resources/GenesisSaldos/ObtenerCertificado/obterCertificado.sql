﻿SELECT CERT.OID_CERTIFICADO, CERT.COD_CERTIFICADO, CERT.COD_ESTADO, CERT.FYH_CERTIFICADO, CLI.COD_CLIENTE
 FROM SAPR_TCERTIFICADO CERT
INNER JOIN SAPR_TCONFIG_NIVEL_SALDO CONF ON CERT.OID_CONFIG_NIVEL_SALDO = CONF.OID_CONFIG_NIVEL_SALDO
INNER JOIN GEPR_TCLIENTE CLI ON CONF.OID_CLIENTE = CLI.OID_CLIENTE
WHERE CLI.COD_CLIENTE = []COD_CLIENTE
