SET SERVEROUTPUT ON
DECLARE
    vNumero         NUMBER(11,2) := 1200.50;
    vChar           CHAR(2) := 'AB';
    vString         VARCHAR(32) := 'Hello World!';
    vDate           DATE := '17/06/2024';
    vDate2           DATE := '17/06/24';
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vNumero);
    DBMS_OUTPUT.PUT_LINE('CHAR = ' || vChar);
    DBMS_OUTPUT.PUT_LINE('String = ' || vString);
    DBMS_OUTPUT.PUT_LINE('DATA = ' || vDate);
    DBMS_OUTPUT.PUT_LINE('DATA = ' || vDate2);
END;



