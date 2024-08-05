SELECT DISTINCT PTS.OID_PLANTA_TIPO_SECTOR, PLA.COD_PLANTA, DEL.COD_DELEGACION, SEC.COD_SECTOR
FROM ADPR_TDELE_TIPO_ROLE_USR T
INNER JOIN ADPR_TPLANTA_TIPO_SECTOR PTS ON  T.OID_PLANTA_TIPO_SECTOR = PTS.OID_PLANTA_TIPO_SECTOR
INNER JOIN ADPR_TPLANTA PLA ON PTS.OID_PLANTA = PLA.OID_PLANTA
INNER JOIN ADPR_TDELEGACION DEL ON DEL.OID_DELEGACION = PLA.OID_DELEGACION
INNER JOIN ADPR_TTIPO_SECTOR ADTS ON PTS.OID_TIPO_SECTOR = ADTS.OID_TIPO_SECTOR
INNER JOIN GEPR_TTIPO_SECTOR GETS ON ADTS.COD_TIPO_SECTOR = GETS.COD_TIPO_SECTOR
INNER JOIN ADPR_TUSUARIO USU ON USU.OID_USUARIO = T.OID_USUARIO
LEFT JOIN GEPR_TSECTOR SEC ON SEC.OID_TIPO_SECTOR = GETS.OID_TIPO_SECTOR
WHERE UPPER(USU.DES_LOGIN) = []DES_LOGIN