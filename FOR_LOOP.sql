-- Utilizando FOR LOOP

SET SERVEROUTPUT ON
ACCEPT  pLimite PROMPT 'Digite o valor do limite: '
DECLARE
    vInicio NUMBER(38) := 1;
    vFim NUMBER(38) := &pLimite;
BEGIN
    --Imprimindo numeros de 1 ate o limite
    FOR i IN vInicio..vFIM LOOP
    DBMS_OUTPUT.PUT_LINE('Numero: ' || TO_CHAR(i));
    END LOOP;
END;

--Ao contrario

SET SERVEROUTPUT ON
ACCEPT  pLimite PROMPT 'Digite o valor do limite: '
DECLARE
    vInicio NUMBER(38) := 1;
    vFim NUMBER(38) := &pLimite;
BEGIN
    --Imprimindo numeros de 1 ate o limite
    FOR i IN REVERSE vInicio..vFim LOOP
    DBMS_OUTPUT.PUT_LINE('Numero: ' || TO_CHAR(i));
    END LOOP;
END;

