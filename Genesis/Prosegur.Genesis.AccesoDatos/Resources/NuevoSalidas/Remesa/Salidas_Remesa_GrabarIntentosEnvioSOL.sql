UPDATE GEPR_TREMESA R 
SET R.NEL_INTENTOS_SOL = NVL(R.NEL_INTENTOS_SOL, 0) + 1 
WHERE R.OID_REMESA = []OID_REMESA