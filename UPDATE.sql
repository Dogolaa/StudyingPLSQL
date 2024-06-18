--Utilizando o comando UPDATE no PL/SQL

SET SERVEROUTPUT ON
DECLARE
    vEmployee_id     employees.employee_id%type := 207;   -- Declara que a variavel vFirstName tem o mesmo tipo da coluna first_name da tabela employees
    vPercentual      NUMBER(3) := 10;
BEGIN
    UPDATE employees
    SET         salary = salary * (1 + vPercentual / 100) -- Altera o valor da coluna salario com o salary vezes 1 + o percentual dividido por 100
    WHERE       employee_id = vEmployee_id;
    COMMIT;
END;
