DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50) NOT NULL,
  dept_id INT NOT NULL,
  salary DECIMAL(10,2) CHECK (salary > 0),
  email VARCHAR(100) UNIQUE,
  hire_date DATE DEFAULT CURRENT_DATE,
  FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
INSERT INTO Employees VALUES (1, 'Amit', 101, 45000, 'amit@company.com', '2021-02-10');
