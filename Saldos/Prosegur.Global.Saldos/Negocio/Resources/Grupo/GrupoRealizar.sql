﻿SELECT
      G.ID_GRUPO,
      G.COD_GRUPO,
      G.DES_GRUPO,
      G.BOL_GRUPO_VIGENTE,
      GF.ID_FOMULARIO,
      CASE WHEN F.IDFORMULARIO IS NOT NULL THEN 1 ELSE 0 END FORMULARIO_VALIDO
FROM
      PD_GRUPO G
      INNER JOIN PD_GRUPOFORMULARIO GF ON G.ID_GRUPO = GF.ID_GRUPO
      LEFT OUTER JOIN PD_FORMULARIO F ON GF.ID_FOMULARIO = F.IDFORMULARIO
WHERE
	  G.COD_GRUPO = :COD_GRUPO