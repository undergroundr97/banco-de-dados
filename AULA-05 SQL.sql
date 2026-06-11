SELECT e.last_name Sobrenome, e.job_id Cargo, d.department_name Departamento
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;


SELECT e.last_name Sobrenome, d.department_name Departamento, l.city
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id;




SELECT count(*)
FROM departments; 

SELECT department_name
FROM departments d
LEFT OUTER JOIN employees e
ON d.department_id = e.department_id;


SELECT CONCAT(m.first_name , ' ', m.last_name, ' é chefe de: ', e.first_name , ' '  ,e.last_name) as Chefe
FROM employees m
JOIN employees e ON e.manager_id = m.employee_id;


SELECT count(*)
from employees; 

UPDATE employees
SET salary = 50000
WHERE employee_id = 100 ;

select * from employees;  



SELECT e.last_name, e.salary
FROM employees e
JOIN jobs j 
ON e.job_id = j.job_id
WHERE e.salary BETWEEN j.min_salary and j.max_salary;


SELECT count(e.last_name), e.salary
FROM employees e
JOIN jobs j 
ON e.job_id = j.job_id
WHERE e.salary BETWEEN j.min_salary and j.max_salary;

select max(max_salary) from jobs;
