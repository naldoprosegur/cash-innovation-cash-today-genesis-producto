SELECT FORMU.OID_FORMULARIO, FORMU.COD_FORMULARIO, FORMU.DES_FORMULARIO FROM SAPR_TPLANXMOVIMIENTO PXM
            INNER JOIN SAPR_TFORMULARIO FORMU ON FORMU.OID_FORMULARIO = PXM.OID_FORMULARIO
            WHERE
              PXM.BOL_ACTIVO = 1 AND PXM.OID_PLANIFICACION = []OID_PLANIFICACION