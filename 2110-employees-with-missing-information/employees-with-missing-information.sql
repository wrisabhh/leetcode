SELECT e.employee_id
FROM (
    SELECT employee_id FROM Employees
    UNION
    SELECT employee_id FROM Salaries
) e
LEFT JOIN Employees emp
  ON e.employee_id = emp.employee_id
LEFT JOIN Salaries sal
  ON e.employee_id = sal.employee_id
WHERE emp.name IS NULL
   OR sal.salary IS NULL
ORDER BY e.employee_id;
