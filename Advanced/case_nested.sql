-- Nested CASE for advanced conditional logic
SELECT emp_name, dept_id, salary,
CASE
  WHEN dept_id = 103 THEN 
    CASE
      WHEN salary > 70000 THEN 'Sr. Engineer'
      ELSE 'Jr. Engineer'
    END
  WHEN dept_id = 101 THEN 
    CASE
      WHEN salary > 45000 THEN 'Sales Lead'
      ELSE 'Sales Rep'
    END
  ELSE 'Other'
END AS role
FROM Employees;
