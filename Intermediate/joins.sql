SELECT e.emp_name, e.salary, d.dept_name, d.location
FROM Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name
FROM Employees e
LEFT JOIN Departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name
FROM Employees e
RIGHT JOIN Departments d
ON e.dept_id = d.dept_id;

SELECT e.emp_name AS Employee, m.emp_name AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.manager_id = m.emp_id;
SELECT e.emp_name, d.dept_name
FROM Employees e
CROSS JOIN Departments d;
