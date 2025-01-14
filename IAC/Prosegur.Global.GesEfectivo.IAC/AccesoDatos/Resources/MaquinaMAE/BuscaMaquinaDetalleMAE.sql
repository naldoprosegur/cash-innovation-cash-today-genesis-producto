﻿SELECT
     M.BOL_MULTICLIENTE,
       M.OID_MAQUINA,       
       M.OID_TIPO_MAQUINA,
       M.COD_IDENTIFICACION,
       M.BOL_ACTIVO,
       M.GMT_CREACION,
       M.DES_USUARIO_CREACION,
       M.GMT_MODIFICACION,
       M.DES_USUARIO_MODIFICACION,
       M.BOL_CONSIDERA_RECUENTOS,
       M.OID_SECTOR,
       S.DES_SECTOR,
      
      PL.OID_PLANTA,
      PL.OID_DELEGACION,

      F.OID_FABRICANTE,
      F.COD_FABRICANTE,
      F.DES_FABRICANTE,
      M.OID_MODELO,
      MD.COD_MODELO,
      MD.DES_MODELO,
      
    TP.OID_TIPO_PLANIFICACION,
    TP.COD_TIPO_PLANIFICACION,
    TP.DES_TIPO_PLANIFICACION,
       
       CASE
         WHEN PLAMAQ.FYH_VIGENCIA_INICIO IS NULL THEN
          NULL
         ELSE
          CAST(fn_gmt_delegacion_###VERSION###(PL.OID_DELEGACION,
                                 PLAMAQ.FYH_VIGENCIA_INICIO) AS DATE)
       END AS FYH_VIGENCIA_INICIO,
       
       CASE
         WHEN PLAMAQ.FYH_VIGENCIA_FIN IS NULL THEN
          NULL
         ELSE
          CAST(fn_gmt_delegacion_###VERSION###(PL.OID_DELEGACION, PLAMAQ.FYH_VIGENCIA_FIN) AS DATE)
       END AS FYH_VIGENCIA_FIN,
       
       CASE
         WHEN PLAMAQ.FYH_VIGENCIA_FIN IS NULL THEN
          NULL
         ELSE
          CAST(fn_gmt_delegacion_###VERSION###(PL.OID_DELEGACION, PLAMAQ.FYH_VIGENCIA_FIN) AS DATE)
       END AS FYH_VIGENCIA_FIN,       
       CASE
         WHEN PLA.FYH_VIGENCIA_INICIO IS NULL THEN
          NULL
         ELSE
          CAST(fn_gmt_delegacion_###VERSION###(PL.OID_DELEGACION, PLA.FYH_VIGENCIA_INICIO) AS DATE)
       END  AS INICIO_PLAN,
       
       CASE
         WHEN PLA.FYH_VIGENCIA_FIN IS NULL THEN
          NULL
         ELSE
          CAST(fn_gmt_delegacion_###VERSION###(PL.OID_DELEGACION, PLA.FYH_VIGENCIA_FIN) AS DATE)
       END  AS FIN_PLAN,
     PLAMAQ.NUM_PORCENT_COMISION as NUM_PORCENT_COM_MAQ,

     --PUNTOS DE SERVICIO
       PTO.OID_PTO_SERVICIO,
       PTO.COD_PTO_SERVICIO,
       PTO.DES_PTO_SERVICIO,       
       SBCLI.OID_SUBCLIENTE,
       SBCLI.COD_SUBCLIENTE,
       SBCLI.DES_SUBCLIENTE,       
       CLI.OID_CLIENTE,
       CLI.COD_CLIENTE,
       CLI.DES_CLIENTE,
       CLI.NUM_PORCENT_COMISION,
       
     --PLANIFICACION
       PLA.OID_PLANIFICACION,
       PLA.DES_PLANIFICACION,
     PLA.BOL_ACTIVO as PLAN_VIGENTE,
       PLA.OID_CLIENTE OID_BANCO,
     PLA.BOL_CONTROLA_FACTURACION,
       BAN.COD_CLIENTE COD_BANCO,
       BAN.DES_CLIENTE DES_BANCO,

     --PLANXMAQUINA
       PTOTESPLAMQ.OID_PTO_SERVICIO OID_PTO_SERV_PLAMQ,
       PTOTESPLAMQ.COD_PTO_SERVICIO COD_PTO_SERV_PLAMQ,
       PTOTESPLAMQ.DES_PTO_SERVICIO DES_PTO_SERV_PLAMQ,       
       SBCLITESPLAMQ.OID_SUBCLIENTE OID_SUBCLIENTE_PLAMQ,
       SBCLITESPLAMQ.COD_SUBCLIENTE COD_SUBCLIENTE_PLAMQ,
       SBCLITESPLAMQ.DES_SUBCLIENTE DES_SUBCLIENTE_PLAMQ
     
 FROM SAPR_TMAQUINA M
 INNER JOIN GEPR_TSECTOR S ON M.OID_SECTOR = S.OID_SECTOR
 INNER JOIN GEPR_TPLANTA PL ON S.OID_PLANTA = PL.OID_PLANTA
 INNER JOIN SAPR_TMODELO MD ON M.OID_MODELO = MD.OID_MODELO
 INNER JOIN SAPR_TFABRICANTE F ON MD.OID_FABRICANTE = F.OID_FABRICANTE
 LEFT JOIN GEPR_TPUNTO_SERVICIO PTO ON M.OID_MAQUINA = PTO.OID_MAQUINA
 LEFT JOIN GEPR_TSUBCLIENTE SBCLI ON PTO.OID_SUBCLIENTE = SBCLI.OID_SUBCLIENTE
 LEFT JOIN GEPR_TCLIENTE CLI ON SBCLI.OID_CLIENTE = CLI.OID_CLIENTE
 LEFT JOIN SAPR_TPLANXMAQUINA PLAMAQ ON M.OID_MAQUINA = PLAMAQ.OID_MAQUINA AND PLAMAQ.BOL_ACTIVO = 1
 LEFT JOIN SAPR_TPLANIFICACION PLA ON PLAMAQ.OID_PLANIFICACION = PLA.OID_PLANIFICACION
 LEFT JOIN GEPR_TCLIENTE BAN ON PLA.OID_CLIENTE = BAN.OID_CLIENTE
 LEFT JOIN SAPR_TTIPO_PLANIFICACION TP ON TP.OID_TIPO_PLANIFICACION = PLA.OID_TIPO_PLANIFICACION
 LEFT JOIN GEPR_TSUBCLIENTE SBCLITESPLAMQ ON SBCLITESPLAMQ.OID_SUBCLIENTE = PLAMAQ.OID_SUBCLIENTE_TESORERIA
 LEFT JOIN GEPR_TPUNTO_SERVICIO PTOTESPLAMQ ON PTOTESPLAMQ.OID_PTO_SERVICIO = PLAMAQ.OID_PTO_SERVICIO_TESORERIA