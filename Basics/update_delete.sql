UPDATE Employees
SET salary = salary * 1.05
WHERE dept = 'Sales';
UPDATE Employees
SET bonus_pct = 5.00
WHERE bonus_pct IS NULL;

-- DELETE (remove anyone with salary < 42000)
DELETE FROM Employees
WHERE salary < 42000;

-- Safe check after update/delete
SELECT * FROM Employees ORDER BY emp_id;
