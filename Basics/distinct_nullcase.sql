SELECT DISTINCT dept, manager_id FROM Employees;
SELECT emp_name, COALESCE(bonus_pct, 0) AS bonus_pct_non_null
FROM Employees;
SELECT
  emp_name,
  salary,
  CASE
    WHEN salary >= 75000 THEN 'High'
    WHEN salary >= 50000 THEN 'Medium'
    ELSE 'Low'
  END AS salary_band
FROM Employees;
