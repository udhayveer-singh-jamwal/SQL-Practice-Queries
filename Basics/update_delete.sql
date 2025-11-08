UPDATE Employees
SET salary = salary * 1.05
WHERE dept = 'Sales';
UPDATE Employees
SET bonus_pct = 5.00
WHERE bonus_pct IS NULL;
DELETE FROM Employees
WHERE salary < 42000;

SELECT * FROM Employees ORDER BY emp_id;
