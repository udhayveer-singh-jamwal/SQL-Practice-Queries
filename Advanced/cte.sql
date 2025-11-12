WITH dept_salary AS (
  SELECT dept_id, AVG(salary) AS avg_salary
  FROM Employees
  GROUP BY dept_id
)
SELECT e.emp_name, e.salary, d.avg_salary
FROM Employees e
JOIN dept_salary d ON e.dept_id = d.dept_id
WHERE e.salary > d.avg_salary;
WITH RECURSIVE emp_hierarchy AS (
  SELECT emp_id, emp_name, manager_id, 1 AS level
  FROM Employees
  WHERE manager_id IS NULL

  UNION ALL

  SELECT e.emp_id, e.emp_name, e.manager_id, eh.level + 1
  FROM Employees e
  INNER JOIN emp_hierarchy eh ON e.manager_id = eh.emp_id
)
SELECT * FROM emp_hierarchy ORDER BY level;
