﻿MERGE INTO DAPR_TELEMENTOS_PROCESADOS Q1
USING DUAL ON
(
	  Q1.FECHA_HORA = []FECHA_HORA
		 AND Q1.COD_DELEGACION = []COD_DELEGACION
		 AND Q1.COD_SECTOR = []COD_SECTOR
		 AND Q1.COD_CLIENTE = []COD_CLIENTE
		 AND Q1.COD_PRODUCTO = []COD_PRODUCTO
)
WHEN MATCHED THEN
    UPDATE SET 
		Q1.NEL_CANTIDAD_TOTAL_REMESAS = Q1.NEL_CANTIDAD_TOTAL_REMESAS + []NEL_CANTIDAD_TOTAL_REMESAS
		,Q1.NEL_CANTIDAD_TOTAL_BULTOS = Q1.NEL_CANTIDAD_TOTAL_BULTOS + []NEL_CANTIDAD_TOTAL_BULTOS
		,Q1.NEL_CANTIDAD_TOTAL_PARCIALES = Q1.NEL_CANTIDAD_TOTAL_PARCIALES + []NEL_CANTIDAD_TOTAL_PARCIALES
WHEN NOT MATCHED THEN
    INSERT (
		Q1.OID_ELEMENTOS_PROCESADOS,
		Q1.FECHA_HORA,
		Q1.COD_DELEGACION,
		Q1.DES_DELEGACION,
		Q1.COD_SECTOR,
		Q1.DES_SECTOR,
		Q1.COD_CLIENTE,
		Q1.DES_CLIENTE,
		Q1.COD_PRODUCTO,
		Q1.DES_PRODUCTO,
		Q1.COD_ESTADO,
		Q1.DES_ESTADO,
		Q1.NEL_CANTIDAD_TOTAL_REMESAS,
		Q1.NEL_CANTIDAD_TOTAL_BULTOS,
		Q1.NEL_CANTIDAD_TOTAL_PARCIALES
	)
    VALUES (
		[]OID_ELEMENTOS_PROCESADOS,
		[]FECHA_HORA,
		[]COD_DELEGACION,
		[]DES_DELEGACION,
		[]COD_SECTOR,
		[]DES_SECTOR,
		[]COD_CLIENTE,
		[]DES_CLIENTE,
		[]COD_PRODUCTO,
		[]DES_PRODUCTO,
		[]COD_ESTADO,
		[]DES_ESTADO,
		[]NEL_CANTIDAD_TOTAL_REMESAS,
		[]NEL_CANTIDAD_TOTAL_BULTOS,
		[]NEL_CANTIDAD_TOTAL_PARCIALES
	)