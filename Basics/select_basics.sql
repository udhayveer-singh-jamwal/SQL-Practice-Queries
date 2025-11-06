SELECT * FROM Employees;
SELECT emp_id, emp_name, dept FROM Employees;
SELECT
  emp_name,
  salary,
  bonus_pct,
  (salary * COALESCE(bonus_pct, 0) / 100) AS bonus_amount
FROM Employees;
SELECT emp_name AS name, dept AS department FROM Employees;
SELECT DISTINCT dept FROM Employees;
