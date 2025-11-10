-- Extract Year, Month, Day
SELECT emp_name, hire_date,
       EXTRACT(YEAR FROM hire_date) AS year_joined,
       EXTRACT(MONTH FROM hire_date) AS month_joined
FROM Employees;

-- Find employees joined in last 2 years (assuming current date)
SELECT emp_name, hire_date
FROM Employees
WHERE hire_date >= (CURRENT_DATE - INTERVAL '2 YEAR');

-- Calculate experience in years
SELECT emp_name, ROUND((CURRENT_DATE - hire_date) / 365, 1) AS years_exp
FROM Employees;

-- Order by oldest employee
SELECT emp_name, hire_date
FROM Employees
ORDER BY hire_date ASC;
