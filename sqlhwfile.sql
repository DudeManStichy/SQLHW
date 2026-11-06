CREATE TABLE Employee (
    EmployeesID INT PRIMARY KEY,
    Name Text NOT NULL,
    Department Text NOT NULL,
    Salary INT,
    Age INT,
    City Text
);

INSERT INTO Employee (EmployeesID, Name, Department, Salary, Age, City) VALUES
(1, 'Robert Downey', 'Engineering', 120000, 45, 'New York'),
(2, 'Scarlett Johansson', 'Marketing', 95000, 35, 'Los Angeles'),
(3, 'Chris Evans', 'Sales', 85000, 38, 'Chicago'),
(4, 'Mark Ruffalo', 'Engineering', 110000, 50, 'San Francisco'),
(5, 'Chris Hemsworth', 'HR', 90000, 37, 'Miami'),
(6, 'Tobey Maguire', 'Photography', 75000, 40, 'Boston'),
(7, 'Chris Pratt', 'HR', 90000, 37, 'Miami'),
(8, 'Andrew Garfield', 'Photography', 75000, 40, 'Boston'),
(9, 'Tom Holland', 'Engineering', 95000, 25, 'New York'),
(10, 'Zendaya', 'Marketing', 85000, 24, 'Los Angeles');

SELECT * FROM Employee
WHERE Salary > 90000
ORDER BY Salary DESC;

SELECT * FROM Employee
WHERE Name LIKE 'Chris%';

SELECT DISTINCT Department
FROM Employee;

SELECT * FROM Employee
WHERE Age BETWEEN 30 AND 40;

SELECT * FROM Employee
WHERE City = 'New York' OR City = 'Los Angeles';

SELECT COUNT(*) AS EmployeeCount, Department
FROM Employee
GROUP BY Department;

SELECT AVG(Salary) AS AverageSalary, Department
FROM Employee
GROUP BY Department;

SELECT Department, COUNT(*) AS EmployeeCount, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department
ORDER BY AverageSalary DESC;

DELETE FROM Employee;