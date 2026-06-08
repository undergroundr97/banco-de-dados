use hr;
-- Exercício 01 --
SELECT * FROM employees;

-- Exercício 02 --
SELECT department_name, location_id FROM departments;

-- Exercicio 03 --
SELECT job_id, job_title, max_salary FROM jobs;

-- Exercicio 04 --
SELECT job_title, max_salary, job_id FROM jobs;

-- Exercicio 05 --
SELECT first_name, last_name, email, phone_number FROM employees;

-- Exercicio 06 --
SELECT last_name, salary, (salary + 500) FROM employees;

-- Exercicio 07 --
SELECT last_name, salary, (salary * 12) FROM employees;

-- Exercicio 08 --
-- a) 
SELECT last_name, salary, salary * 12 + 1000 FROM employees;
-- b)
SELECT last_name, salary, salary * (12+1000) FROM employees;

-- Exercicio 9
SELECT last_name, job_id, salary, commission_pct, salary * 12 * commission_pct FROM employees;

-- Exercicio 10
SELECT last_name as 'Sobrenome', salary as 'Salário', (salary * 12) as "Salário Anual" FROM employees;

-- Exercicio 11
SELECT CONCAT(first_name, ' ', last_name, ' ', '(', 'Email', email, ')' ) as 'Identificacao' FROM employees;

-- Exercicio 12
SELECT CONCAT(first_name, " trabalha no cargo ", job_id, " e ganha R$ ", salary, " por mês") as "Apresentação do funcionário" FROM employees;

SELECT job_id FROM employees;

-- Exercicio 13
SELECT DISTINCT CONCAT(job_id,": de R$ ", min(salary), " até ", max(salary)) as "Faixa Salarial" FROM employees
GROUP BY job_id;

-- Exercicio 14
SELECT DISTINCT department_id FROM employees;

-- Exercicio 15
SELECT DISTINCT job_id FROM employees;

-- Exercicio 16
SELECT DISTINCT job_id, department_id FROM employees;

-- Exercicio 17
SELECT CONCAT(first_name, last_name) as "Funcionário", job_id as "Cargo", salary as "Salário Mensal", (salary * 12) as "Salário Anual", CASE WHEN commission_pct IS NULL THEN 0 ELSE (salary * 12 * commission_pct) END as "Comissão Anual", CASE WHEN commission_pct IS NULL THEN (salary * 12) ELSE (salary * 12) + (salary * 12 * commission_pct) END as "Remuneração Anual" FROM employees;