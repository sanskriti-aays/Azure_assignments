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


 


