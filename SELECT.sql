--Utilizando o comando SELECT no PL/SQL

SET SERVEROUTPUT ON
DECLARE
    vFirst_name      employees.first_name%type;   -- Declara que a variavel vFirstName tem o mesmo tipo da coluna first_name da tabela employees
    vLast_name      employees.last_name%type;
    vSalary      employees.last_name%type;
    vEmployee_id      employees.employee_id%type := 121;
BEGIN
    SELECT first_name, last_name, salary 
    INTO vFirst_name, vLast_name, vSalary
    FROM employees
    WHERE employee_id = vEmployee_id;
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || vEmployee_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || vFirst_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
END;

--SELECT com funções

SET SERVEROUTPUT ON
DECLARE
    vJob_id      employees.job_id%type := 'IT_PROG';   -- Declara que a variavel vFirstName tem o mesmo tipo da coluna first_name da tabela employees
    vAvg_Salary      employees.salary%type;
    vSum_Salary      employees.salary%type;
BEGIN
    SELECT ROUND(AVG(salary),2) , ROUND(SUM(salary),2) 
    INTO vAvg_Salary, vSum_Salary
    FROM employees
    WHERE job_id = vJob_id;
    DBMS_OUTPUT.PUT_LINE('Cargo: ' || vJob_id);
    DBMS_OUTPUT.PUT_LINE('Media de salario: ' || vAvg_Salary);
    DBMS_OUTPUT.PUT_LINE('Somatorio de salarios: ' || vSum_Salary);
END;