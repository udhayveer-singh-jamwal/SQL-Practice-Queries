SELECT emp_name, hire_date,
       EXTRACT(YEAR FROM hire_date) AS year_joined,
       EXTRACT(MONTH FROM hire_date) AS month_joined
FROM Employees;
SELECT emp_name, hire_date
FROM Employees
WHERE hire_date >= (CURRENT_DATE - INTERVAL '2 YEAR');

SELECT emp_name, ROUND((CURRENT_DATE - hire_date) / 365, 1) AS years_exp
FROM Employees;

SELECT emp_name, hire_date
FROM Employees
ORDER BY hire_date ASC;
