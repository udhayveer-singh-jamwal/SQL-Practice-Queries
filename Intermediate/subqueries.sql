SELECT emp_name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

SELECT emp_name, dept_id
FROM Employees
WHERE dept_id = (
  SELECT dept_id FROM Employees WHERE emp_name = 'Neha'
);

SELECT dept_id, COUNT(*) AS emp_count, ROUND(AVG(salary),2) AS avg_sal
FROM Employees
GROUP BY dept_id
HAVING AVG(salary) > (
  SELECT AVG(salary) FROM Employees
);

SELECT emp_name, dept_id
FROM Employees e
WHERE EXISTS (
  SELECT 1 FROM Departments d WHERE d.dept_id = e.dept_id
);
