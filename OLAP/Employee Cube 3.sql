SELECT sum(salary) AS SalarySum, departmentid, city
FROM employee
GROUP BY CUBE(departmentid,city)