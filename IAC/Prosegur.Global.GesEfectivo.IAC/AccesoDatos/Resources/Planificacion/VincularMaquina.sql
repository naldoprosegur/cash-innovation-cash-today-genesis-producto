﻿INSERT INTO SAPR_TPLANXMAQUINA 
  		   (OID_PLANXMAQUINA,
			OID_MAQUINA,
			OID_PLANIFICACION,
			OID_SECTOR,
			FYH_VIGENCIA_INICIO,
			FYH_VIGENCIA_FIN,
			BOL_ACTIVO,
			GMT_CREACION,
			DES_USUARIO_CREACION,
			GMT_MODIFICACION,
			DES_USUARIO_MODIFICACION,
			OID_SUBCLIENTE_TESORERIA,
			OID_PTO_SERVICIO_TESORERIA,
			NUM_PORCENT_COMISION)
	 SELECT []OID_PLANXMAQUINA AS OID_PLANXMAQUINA,
			[]OID_MAQUINA AS OID_MAQUINA,
			[]OID_PLANIFICACION AS OID_PLANIFICACION,
			[]OID_SECTOR AS OID_SECTOR,
			FN_CALCULAR_GMT_0_###VERSION###(PLAN.OID_DELEGACION , []FYH_VIGENCIA_INICIO) AS FYH_VIGENCIA_INICIO,
			FN_CALCULAR_GMT_0_###VERSION###(PLAN.OID_DELEGACION , []FYH_VIGENCIA_FIN) AS FYH_VIGENCIA_FIN,
			1 AS BOL_ACTIVO,
			sys_extract_utc(current_timestamp) || ' +00:00' AS GMT_CREACION,
			[]DES_USUARIO AS DES_USUARIO_CREACION,
			sys_extract_utc(current_timestamp) || ' +00:00' AS GMT_MODIFICACION,
			[]DES_USUARIO AS DES_USUARIO_MODIFICACION,
			[]OID_SUBCLIENTE_TESORERIA AS OID_SUBCLIENTE_TESORERIA,
			[]OID_PTO_SERVICIO_TESORERIA AS OID_PTO_SERVICIO_TESORERIA,
			[]NUM_PORCENT_COMISION AS NUM_PORCENT_COMISION
	   FROM GEPR_TSECTOR SECT
 INNER JOIN GEPR_TPLANTA PLAN ON PLAN.OID_PLANTA = SECT.OID_PLANTA
      WHERE SECT.OID_SECTOR = []OID_SECTOR