BEGIN

	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YACREDITACION FOR {GENESIS_OWNER}.SAPR_TACREDITACION';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCALIDAD FOR {GENESIS_OWNER}.GEPR_TCALIDAD';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCANAL FOR {GENESIS_OWNER}.GEPR_TCANAL';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCERT_SALDO_EFECTIVO FOR {GENESIS_OWNER}.SAPR_TCERT_SALDO_EFECTIVO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCERTIFICADO FOR {GENESIS_OWNER}.SAPR_TCERTIFICADO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCERTIFICADOXDELEGACION FOR {GENESIS_OWNER}.SAPR_TCERTIFICADOXDELEGACION';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCERTIFICADOXSUBCANAL FOR {GENESIS_OWNER}.SAPR_TCERTIFICADOXSUBCANAL';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCLIENTE FOR {GENESIS_OWNER}.GEPR_TCLIENTE';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCODIGO_AJENO FOR {GENESIS_OWNER}.GEPR_TCODIGO_AJENO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCONFIG_NIVEL_SALDO FOR {GENESIS_OWNER}.SAPR_TCONFIG_NIVEL_SALDO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCONTENEDOR FOR {GENESIS_OWNER}.SAPR_TCONTENEDOR';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YCUENTA FOR {GENESIS_OWNER}.SAPR_TCUENTA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YDATO_BANCARIO FOR {GENESIS_OWNER}.SAPR_TDATO_BANCARIO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YDELEGACION FOR {GENESIS_OWNER}.GEPR_TDELEGACION';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YDENOMINACION FOR {GENESIS_OWNER}.GEPR_TDENOMINACION';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YDIVISA FOR {GENESIS_OWNER}.GEPR_TDIVISA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YDOCUMENTO FOR {GENESIS_OWNER}.SAPR_TDOCUMENTO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YFORMULARIO FOR {GENESIS_OWNER}.SAPR_TFORMULARIO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YMAQUINA FOR {GENESIS_OWNER}.SAPR_TMAQUINA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YMEDIO_PAGO FOR {GENESIS_OWNER}.GEPR_TMEDIO_PAGO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YMODELO FOR {GENESIS_OWNER}.SAPR_TMODELO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YNIVEL_PARAMETRO FOR {GENESIS_OWNER}.GEPR_TNIVEL_PARAMETRO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPARAMETRO FOR {GENESIS_OWNER}.GEPR_TPARAMETRO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPAIS FOR {GENESIS_OWNER}.GEPR_TPAIS';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPARAMETRO_VALOR FOR {GENESIS_OWNER}.GEPR_TPARAMETRO_VALOR';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPERIODO FOR {GENESIS_OWNER}.SAPR_TPERIODO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPERIODOXDOCUMENTO FOR {GENESIS_OWNER}.SAPR_TPERIODOXDOCUMENTO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPLANIFICACION FOR {GENESIS_OWNER}.SAPR_TPLANIFICACION';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPLANTA FOR {GENESIS_OWNER}.GEPR_TPLANTA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPLANXMAQUINA FOR {GENESIS_OWNER}.SAPR_TPLANXMAQUINA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPRECINTOXCONTENEDOR FOR {GENESIS_OWNER}.SAPR_TPRECINTOXCONTENEDOR';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YPUNTO_SERVICIO FOR {GENESIS_OWNER}.GEPR_TPUNTO_SERVICIO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSALDO_EFECTIVO FOR {GENESIS_OWNER}.SAPR_TSALDO_EFECTIVO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSALDO_EFECTIVO_HISTORICO FOR {GENESIS_OWNER}.SAPR_TSALDO_EFECTIVO_HISTORICO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSALDO_MEDIO_PAGO FOR {GENESIS_OWNER}.SAPR_TSALDO_MEDIO_PAGO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSALDO_MEDIO_PAGO_HIST FOR {GENESIS_OWNER}.SAPR_TSALDO_MEDIO_PAGO_HIST';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSECTOR FOR {GENESIS_OWNER}.GEPR_TSECTOR';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSUBCANAL FOR {GENESIS_OWNER}.GEPR_TSUBCANAL';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YSUBCLIENTE FOR {GENESIS_OWNER}.GEPR_TSUBCLIENTE';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YTIPO_CLIENTE FOR {GENESIS_OWNER}.GEPR_TTIPO_CLIENTE';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YTIPO_PUNTO_SERVICIO FOR {GENESIS_OWNER}.GEPR_TTIPO_PUNTO_SERVICIO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YTIPO_SECTOR FOR {GENESIS_OWNER}.GEPR_TTIPO_SECTOR';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YTIPO_SUBCLIENTE FOR {GENESIS_OWNER}.GEPR_TTIPO_SUBCLIENTE';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YTRANSACCION_EFECTIVO FOR {GENESIS_OWNER}.SAPR_TTRANSACCION_EFECTIVO';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YUNIDAD_MEDIDA FOR {GENESIS_OWNER}.GEPR_TUNIDAD_MEDIDA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YVCUENTA FOR {GENESIS_OWNER}.SAPR_VCUENTA';
	execute immediate 'CREATE OR REPLACE SYNONYM RPGE_YVFILTROXCERTIFICADO FOR {GENESIS_OWNER}.SAPR_VFILTROXCERTIFICADO';

EXCEPTION
  WHEN OTHERS THEN
    raise_application_error(-20001,
                            'Arquivo: Reportes_GeS.sql Script: Grants_Synonyms' ||
                            sqlerrm);
    RAISE;
END;
/

