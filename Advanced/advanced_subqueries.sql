-- Nested subquery (multi-level)
SELECT emp_name, salary
FROM Employees
WHERE salary > (
  SELECT AVG(salary)
  FROM Employees
  WHERE dept_id = (
    SELECT dept_id FROM Departments WHERE dept_name = 'Engineering'
  )
);

-- Correlated subquery (row-by-row)
SELECT emp_name, salary
FROM Employees e
WHERE salary > (
  SELECT AVG(salary)
  FROM Employees
  WHERE dept_id = e.dept_id
);
