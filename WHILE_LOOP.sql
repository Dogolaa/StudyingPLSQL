-- Utilizando WHILE LOOP

SET SERVEROUTPUT ON
ACCEPT  pLimite PROMPT 'Digite o valor do limite: '
DECLARE
    vNumero NUMBER(38) := 1;
    vLimite NUMBER(38) := &pLimite;
BEGIN
    --Imprimindo numeros de 1 ate o limite
    WHILE vNumero <= vLimite LOOP
    DBMS_OUTPUT.PUT_LINE('Numero: ' || TO_CHAR(vNumero));
    vNumero := vNumero + 1;
    END LOOP;
END;
