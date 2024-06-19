-- Utilizando IF

SET SERVEROUTPUT ON
ACCEPT  pdepartment_id PROMPT 'Digite o ID do departamento'
DECLARE
   vdepartment_id  employees.department_id%type := &pdepartment_id;
   vpercentual     NUMBER(3);
BEGIN
    IF vdepartment_id = 80
    THEN
        vpercentual := 10;              --Sales
    ELSE
        IF  vdepartment_id = 20
        THEN
            vpercentual := 15;          --Marketing
        ELSE
            IF  vdepartment_id = 60
            THEN
                vpercentual := 20;          --IT
            ELSE
                vpercentual := 5;
            END IF;
        END IF;
    END IF;
    
DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);
DBMS_OUTPUT.PUT_LINE('Percentual: ' || vpercentual);

    UPDATE employees
    SET salary = salary * ( 1 + vpercentual / 100)
    WHERE department_id = vdepartment_id;
    
END;


SET SERVEROUTPUT ON
ACCEPT  pdepartment_id PROMPT 'Digite o ID do departamento'
DECLARE
   vdepartment_id  employees.department_id%type := &pdepartment_id;
   vpercentual     NUMBER(3);
BEGIN
    IF vdepartment_id = 80
    THEN
        vpercentual := 10;              --Sales
    ELSIF  vdepartment_id = 20
        THEN
            vpercentual := 15;          --Marketing
        ELSIF  vdepartment_id = 60
            THEN
                vpercentual := 20;          --IT
            ELSE
                vpercentual := 5;
    END IF;
    
DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);
DBMS_OUTPUT.PUT_LINE('Percentual: ' || vpercentual);

    UPDATE employees
    SET salary = salary * ( 1 + vpercentual / 100)
    WHERE department_id = vdepartment_id;
    --COMMIT;
    
END;