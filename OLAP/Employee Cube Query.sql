SELECT COUNT(DISTINCT employeeid) AS EmployeeCount, departmentid,salary
FROM employee
WHERE salary BETWEEN 12000 AND 13000
GROUP BY CUBE(departmentid,salary)