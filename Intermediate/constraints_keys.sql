-- Drop old table if exists
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

-- Insert valid data
INSERT INTO Employees VALUES (1, 'Amit', 101, 45000, 'amit@company.com', '2021-02-10');

-- Check constraint example (will fail)
-- INSERT INTO Employees VALUES (2, 'Sara', 102, -20000, 'sara@company.com', '2022-05-12');
