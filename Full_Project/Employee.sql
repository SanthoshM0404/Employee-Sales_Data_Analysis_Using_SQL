create database data;
use data;
select * from employee;

  -- 1. Query to Retrieve All Employees in a Specific Department
SELECT *
FROM employee
WHERE DepartmentType = 'Sales';
  -- This query retrieves all columns for employees who work in the Sales department.

  -- 2. Query to Count Employees by Status
  
SELECT EmployeeStatus, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY EmployeeStatus;

  -- This query counts how many employees are in each employee status (e.g., Active, Terminated).

  -- 3. Query to Find Employees Who Left After a Certain Date

SELECT FirstName, LastName, ExitDate
FROM Employee
WHERE ExitDate > '2023-01-01';

  -- This query lists employees who exited the company after January 1, 2023.

  -- 4. Query to Get Performance Scores for Active Employees

SELECT FirstName, LastName, Performancescore
FROM Employee
WHERE EmployeeStatus = 'Active';
  -- This retrieves the performance scores of all currently active employees.
  
  -- 5. Query to Find Average Age of Employees by Gender

SELECT GenderCode, AVG(YEAR(CURDATE()) - YEAR(DOB)) AS AverageAge
FROM Employee
GROUP BY GenderCode;

  -- This calculates the average age of employees, grouped by gender.

  -- 6. Query to List Employees with a Specific Job Title

SELECT FirstName, LastName, JobFunctionDescription
FROM Employee
WHERE Title = 'Software Engineer';
  
  -- This retrieves the names and job functions of employees with the title "Software Engineer."

  -- 7. Query to Find the Latest Hires

SELECT FirstName, LastName, StartDate
FROM Employee
ORDER BY StartDate DESC
LIMIT 5;
  -- This lists the five most recently hired employees.

  -- 8. Query to Retrieve Employees by State

SELECT FirstName, LastName, State
FROM Employee
WHERE State = 'California';
  -- This retrieves the names of employees who are located in California.

  -- 9. Query to Count Employees by Business Unit

SELECT BusinessUnit, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY BusinessUnit;
  -- This query counts how many employees work in each business unit.

  -- 10. Query to Find Employees with Performance Scores Above a Certain Threshold

SELECT FirstName, LastName, PerformanceScore
FROM Employee
WHERE PerformanceScore > 80;
  -- This retrieves the names and performance scores of employees with scores above 80.

                     -- Thanks


