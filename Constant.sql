SET SERVEROUTPUT ON
DECLARE
    vPi             CONSTANT NUMBER(38,15) := 3.141592653589793;
    vChar           CONSTANT CHAR(2) := 'AB';
    vString         CONSTANT VARCHAR(32) := 'Hello World!';
    vDate           CONSTANT DATE := '17/06/2024';
    vDate2          CONSTANT DATE := '17/06/24';
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('Numero = ' || vPi);
    DBMS_OUTPUT.PUT_LINE('CHAR = ' || vChar);
    DBMS_OUTPUT.PUT_LINE('String = ' || vString);
    DBMS_OUTPUT.PUT_LINE('DATA = ' || vDate);
    DBMS_OUTPUT.PUT_LINE('DATA = ' || vDate2);
END;



