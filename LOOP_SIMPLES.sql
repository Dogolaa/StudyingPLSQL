-- Utilizando LOOP SIMPLES

SET SERVEROUTPUT ON
ACCEPT  pLimite PROMPT 'Digite o valor do limite: '
DECLARE
    vNumero NUMBER(38) := 1;
    vLimite NUMBER(38) := &pLimite;
BEGIN
    --Imprimindo numeros de 1 ate o limite
    LOOP
    DBMS_OUTPUT.PUT_LINE('Numero: ' || vNumero);
    vNumero := vNumero + 1;
    EXIT WHEN (vNumero > vLimite);
    END LOOP;
END;