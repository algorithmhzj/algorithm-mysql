SELECT emp.employee_id FROM Employees emp LEFT JOIN Salaries sal ON emp.employee_id = sal.employee_id WHERE sal.employee_id IS NULL
UNION
SELECT sal.employee_id FROM Salaries sal LEFT JOIN Employees emp ON emp.employee_id = sal.employee_id WHERE emp.employee_id IS NULL
ORDER BY employee_id