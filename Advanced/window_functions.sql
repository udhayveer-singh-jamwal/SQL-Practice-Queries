-- ROW_NUMBER: unique ranking
SELECT emp_name, dept_id, salary,
       ROW_NUMBER() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS rank_in_dept
FROM Employees;

-- RANK and DENSE_RANK
SELECT emp_name, salary,
       RANK() OVER (ORDER BY salary DESC) AS salary_rank,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM Employees;

-- LAG and LEAD
SELECT emp_name, salary,
       LAG(salary) OVER (ORDER BY hire_date) AS prev_salary,
       LEAD(salary) OVER (ORDER BY hire_date) AS next_salary
FROM Employees;

-- RUNNING TOTAL
SELECT emp_name, salary,
       SUM(salary) OVER (ORDER BY hire_date ROWS UNBOUNDED PRECEDING) AS running_total
FROM Employees;
