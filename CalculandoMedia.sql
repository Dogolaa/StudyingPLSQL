SET SERVEROUTPUT ON
DECLARE
    vNotaP1 NUMBER(11,2) := 5;
    vNotaP2 NUMBER(11,2) := 10;
    vMedia NUMBER(11,2);
BEGIN
    vMedia := ((vNotaP1 + vNotaP2) / 2);
    DBMS_OUTPUT.PUT_LINE('A MEDIA DO ALUNO EH test: ' || vMedia);
END;
