CREATE TABLE employees_temp AS SELECT * FROM employees;
DECLARE
   CURSOR c1 IS SELECT employee_id, salary FROM employees_temp
      WHERE salary > 2000 AND ROWNUM <= 10;  -- 10 arbitrary rows
   CURSOR c2 IS SELECT * FROM
     (SELECT employee_id, salary FROM employees_temp
       WHERE salary > 300 & salary <1000 ORDER BY salary DESC)
     WHERE ROWNUM < 5;  
BEGIN
  UPDATE employees_temp SET employee_id = ROWNUM;
END;