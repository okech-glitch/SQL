SELECT COUNT(DISTINCT employeeid) AS EmployeeCount,departmentid,Employeecaddress
FROM employee
WHERE salary >13000
GROUP BY CUBE(departmentid,Employeecaddress)