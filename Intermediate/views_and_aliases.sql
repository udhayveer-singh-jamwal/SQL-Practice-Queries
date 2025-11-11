CREATE OR REPLACE VIEW HighSalary AS
SELECT emp_name, dept_id, salary
FROM Employees
WHERE salary > 60000;
SELECT * FROM HighSalary;
DROP VIEW IF EXISTS HighSalary;
