﻿INSERT INTO GEPR_TLOG_ERROR (OID_LOG_ERROR, 
							 DES_ERROR,
							 FYH_ERROR, 
							 COD_USUARIO, 
							 COD_DELEGACION) 
VALUES (:OID_LOG_ERROR, 
		:DES_ERROR, 
		SYSDATE, 
		:COD_USUARIO, 
		:COD_DELEGACION)