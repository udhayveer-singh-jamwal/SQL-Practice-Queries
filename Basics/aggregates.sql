SELECT
  COUNT(*)          AS total_employees,
  MIN(salary)       AS min_salary,
  MAX(salary)       AS max_salary,
  AVG(salary)       AS avg_salary,
  SUM(salary)       AS total_salary
FROM Employees;

SELECT dept, COUNT(*) AS headcount
FROM Employees
GROUP BY dept
ORDER BY headcount DESC;

SELECT dept, ROUND(AVG(salary), 2) AS avg_salary
FROM Employees
GROUP BY dept
ORDER BY avg_salary DESC;

SELECT dept, COUNT(*) AS cnt, ROUND(AVG(salary),2) AS avg_sal
FROM Employees
GROUP BY dept
HAVING COUNT(*) >= 2;
