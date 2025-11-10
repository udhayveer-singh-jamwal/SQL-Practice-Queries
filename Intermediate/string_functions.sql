-- Upper / Lower case
SELECT emp_name, UPPER(emp_name) AS upper_name, LOWER(emp_name) AS lower_name
FROM Employees;

-- Concatenate
SELECT emp_name, CONCAT(emp_name, ' works in ', dept_id) AS emp_info
FROM Employees;

-- Substring
SELECT emp_name, SUBSTRING(emp_name FROM 1 FOR 3) AS short_name
FROM Employees;

-- Length
SELECT emp_name, LENGTH(emp_name) AS name_length
FROM Employees;

-- Replace / Trim
SELECT emp_name, REPLACE(emp_name, 'a', '@') AS funky_name
FROM Employees;
