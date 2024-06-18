--Utilizando o comando INSERT no PL/SQL

SET SERVEROUTPUT ON
DECLARE
    vFirst_name      employees.first_name%type;   -- Declara que a variavel vFirstName tem o mesmo tipo da coluna first_name da tabela employees
    vLast_name      employees.last_name%type;
    vSalary      employees.last_name%type;
BEGIN
    INSERT INTO employees
    (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id,department_id)
    VALUES
    (employees_seq.nextval, 'Lucas', 'Dogo', 'lucasdogo01', '19 997715249', SYSDATE, 'IT_PROG',15000, 0.4 , 103 , 60);
    COMMIT;
END;
