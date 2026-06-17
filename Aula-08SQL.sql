-- Exercício 1
INSERT INTO departments VALUES
(80, 'Pesquisa', Null, Null);


-- Exercício 2
UPDATE employees 
SET salary = salary + ( salary * 0.15)
WHERE employees.department_id = 60;

-- Exercício 3
CREATE TABLE devs_backup LIKE employees;


INSERT INTO devs_backup 
SELECT * FROM employees
WHERE job_id = 'IT_PROG';

SELECT * FROM devs_backup;

-- Exercício 4
DELETE FROM departments
WHERE department_id = 80;

-- Exercício 5
START TRANSACTION;

UPDATE employees
SET salary = salary + (salary * 0.5);

ROLLBACK;

SELECT salary FROM employees;