-- Simple aggregates on whole table
SELECT
  COUNT(*)          AS total_employees,
  MIN(salary)       AS min_salary,
  MAX(salary)       AS max_salary,
  AVG(salary)       AS avg_salary,
  SUM(salary)       AS total_salary
FROM Employees;

-- GROUP BY (basic)
SELECT dept, COUNT(*) AS headcount
FROM Employees
GROUP BY dept
ORDER BY headcount DESC;

-- Aggregate + GROUP BY (average salary per dept)
SELECT dept, ROUND(AVG(salary), 2) AS avg_salary
FROM Employees
GROUP BY dept
ORDER BY avg_salary DESC;

-- HAVING (filter groups after aggregation)
SELECT dept, COUNT(*) AS cnt, ROUND(AVG(salary),2) AS avg_sal
FROM Employees
GROUP BY dept
HAVING COUNT(*) >= 2;
