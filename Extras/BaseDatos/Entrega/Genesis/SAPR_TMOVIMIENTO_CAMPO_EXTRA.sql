DECLARE
   OWNER_OBJECTS VARCHAR2(30) := '';
   EXISTE NUMBER;
BEGIN
  -- PGP-1908
  SELECT sys_context( 'userenv', 'current_schema' ) INTO OWNER_OBJECTS FROM DUAL;
  
  SELECT COUNT(1) INTO EXISTE FROM ALL_TABLES A WHERE UPPER(A.OWNER) = UPPER(OWNER_OBJECTS) AND UPPER(A.TABLE_NAME) = 'SAPR_TMOVIMIENTO_CAMPO_EXTRA';

  IF EXISTE = 1 THEN
    /* DES_VALOR_CAMPO_EXTRA */
    SELECT COUNT(1) INTO EXISTE FROM ALL_TAB_COLUMNS WHERE OWNER = OWNER_OBJECTS AND TABLE_NAME = 'SAPR_TMOVIMIENTO_CAMPO_EXTRA' AND COLUMN_NAME = 'DES_VALOR_CAMPO_EXTRA' AND DATA_LENGTH < 4000;        
    IF EXISTE = 1 THEN     
          EXECUTE IMMEDIATE 'ALTER TABLE SAPR_TMOVIMIENTO_CAMPO_EXTRA MODIFY DES_VALOR_CAMPO_EXTRA VARCHAR2(4000)';     
    END IF;     
  END IF;
    
  EXCEPTION
    WHEN OTHERS THEN raise_application_error( -20001, 'Arquivo: Genesis.sql Script: SAPR_TMOVIMIENTO_CAMPO_EXTRA - ' || sqlerrm);
    RAISE;
END;  
/