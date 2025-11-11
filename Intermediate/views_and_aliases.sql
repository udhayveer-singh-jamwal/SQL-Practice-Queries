-- Create a view for high salary employees
CREATE OR REPLACE VIEW HighSalary AS
SELECT emp_name, dept_id, salary
FROM Employees
WHERE salary > 60000;

-- Use the view
SELECT * FROM HighSalary;

-- Drop view
DROP VIEW IF EXISTS HighSalary;
