UPDATE GEPR_TSALDO_PUESTO 
     SET NUM_SALDO_DIVISA = NVL(NUM_SALDO_DIVISA,0) + :NUM_SALDO_DIVISA
WHERE OID_SALDO_PUESTO = :OID_SALDO_PUESTO