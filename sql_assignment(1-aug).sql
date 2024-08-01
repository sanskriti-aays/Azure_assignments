use employees;
SELECT * FROM employees;
    
select title, count(*) as count
from titles
group by title
having title in ("Senior Engineer", "Assistant Engineer");

SELECT CONCAT(first_name, ' ', last_name) AS name, gender 
from employees 
where first_name in('Aamod' , 'Arve') and last_name in ('Radwan', 'Erde') limit 2;

SELECT 
    CASE 
        WHEN salary < 50000 THEN '<50000'
        WHEN salary BETWEEN 50000 AND 100000 THEN '50000-100000'
        ELSE '>100000'
    END AS SalaryRange,
    AVG(salary) AS AverageSalary
FROM salaries
GROUP BY SalaryRange;

CREATE VIEW view_employees AS
SELECT emp_no, first_name, last_name, gender, hire_date
FROM employees
WHERE emp_no IN (10001, 10002, 10003, 10004, 10005);

CREATE VIEW view_dept_emp AS
SELECT emp_no, dept_no, from_date, to_date
FROM dept_emp
WHERE emp_no IN (10004, 10005, 10006, 10007, 10008);

SELECT 
    e.emp_no AS employee_emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    d.emp_no AS dept_emp_emp_no,
    d.dept_no,
    d.from_date,
    d.to_date
FROM view_employees e
LEFT JOIN view_dept_emp d ON e.emp_no = d.emp_no
 
UNION
 
SELECT 
    e.emp_no AS employee_emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    d.emp_no AS dept_emp_emp_no,
    d.dept_no,
    d.from_date,
    d.to_date
FROM view_employees e
RIGHT JOIN view_dept_emp d ON e.emp_no = d.emp_no;


 


