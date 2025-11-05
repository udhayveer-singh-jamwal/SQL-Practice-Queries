DELETE FROM Employees;

INSERT INTO Employees (emp_id, emp_name, dept, join_date, salary, bonus_pct, manager_id) VALUES
(1, 'Amit',   'Sales',      DATE '2022-01-10', 45000.00, 10.00, NULL),
(2, 'Sara',   'HR',         DATE '2021-11-05', 52000.00,  8.00,  5),
(3, 'Rahul',  'Sales',      DATE '2023-03-15', 41000.00, NULL,   1),
(4, 'Neha',   'Engineering',DATE '2020-07-01', 75000.00, 12.50,  6),
(5, 'Vikas',  'HR',         DATE '2019-04-23', 68000.00, 15.00, NULL),
(6, 'Kiran',  'Engineering',DATE '2022-09-30', 69000.00,  5.00,  4),
(7, 'Isha',   'Sales',      DATE '2024-02-19', 43000.00,  6.00,  1),
(8, 'Ritesh', 'Finance',    DATE '2023-12-01', 57000.00, NULL,  NULL),
(9, 'Pooja',  'Finance',    DATE '2021-01-12', 59000.00,  7.50,  8),
(10,'Manav',  'Engineering',DATE '2020-12-15', 80000.00, 20.00,  4);
