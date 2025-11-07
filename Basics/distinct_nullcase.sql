-- DISTINCT with multiple columns
SELECT DISTINCT dept, manager_id FROM Employees;

-- COALESCE to replace NULLs
SELECT emp_name, COALESCE(bonus_pct, 0) AS bonus_pct_non_null
FROM Employees;

-- CASE expression (label salary bands)
SELECT
  emp_name,
  salary,
  CASE
    WHEN salary >= 75000 THEN 'High'
    WHEN salary >= 50000 THEN 'Medium'
    ELSE 'Low'
  END AS salary_band
FROM Employees;
