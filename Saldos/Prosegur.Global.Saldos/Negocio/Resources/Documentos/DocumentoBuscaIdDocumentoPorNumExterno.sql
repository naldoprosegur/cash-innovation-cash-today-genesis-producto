SELECT 
	NVL(DC.IDDOCUMENTO, 0)
FROM
	PD_DOCUMENTOCABECERA DC
WHERE
	DC.NUMEXTERNO = :NUMEXTERNO