DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
  emp_id      INT PRIMARY KEY,
  emp_name    VARCHAR(50) NOT NULL,
  dept        VARCHAR(50),
  join_date   DATE,
  salary      DECIMAL(10,2), 
  bonus_pct   DECIMAL(5,2),  
  manager_id  INT             
);
