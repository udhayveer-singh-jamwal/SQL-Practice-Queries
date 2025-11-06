SELECT emp_name, salary FROM Employees
WHERE salary > 50000;
SELECT emp_name, dept, salary FROM Employees
WHERE dept = 'Engineering' AND salary >= 70000;

SELECT emp_name, salary FROM Employees
WHERE salary BETWEEN 45000 AND 60000;

SELECT emp_name, dept FROM Employees
WHERE dept IN ('Sales', 'HR');
SELECT emp_name FROM Employees
WHERE emp_name LIKE 'S%';  
SELECT emp_name, bonus_pct FROM Employees
WHERE bonus_pct IS NULL;

SELECT emp_name, salary FROM Employees
ORDER BY salary DESC;

SELECT emp_name, salary FROM Employees
ORDER BY salary DESC
LIMIT 3;       

SELECT emp_name, salary FROM Employees
ORDER BY salary DESC
OFFSET 2 LIMIT 3;
