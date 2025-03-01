CREATE OR REPLACE TRIGGER TRG_SAPR_TPERIODO_BEFORE
BEFORE INSERT ON SAPR_TPERIODO FOR EACH ROW
DECLARE
    VAR$OID_PERIODO_AC VARCHAR2(36);
BEGIN
  IF :NEW.OID_TIPO_PERIODO IS NULL THEN 
    BEGIN
      SELECT OID_TIPO_PERIODO
        INTO VAR$OID_PERIODO_AC
      FROM SAPR_TTIPO_PERIODO
      WHERE COD_TIPO_PERIODO = 'AC';
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        VAR$OID_PERIODO_AC := NULL;
    END;
    :NEW.OID_TIPO_PERIODO := VAR$OID_PERIODO_AC;
  END IF;
END;