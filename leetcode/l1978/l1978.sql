-- use not in
-- order by 数字，代表用第几个字段排序
SELECT employee_id FROM employees
WHERE salary<30000 AND manager_id NOT IN (SELECT employee_id FROM employees)
ORDER BY 1

-- left join
SELECT DISTINCT emp.employee_id
FROM   employees emp
       LEFT JOIN employees mng
              ON( emp.manager_id = mng.employee_id )
WHERE  emp.manager_id IS NOT NULL
       AND emp.salary < 30000
       AND mng.employee_id IS NULL
ORDER  BY emp.employee_id 