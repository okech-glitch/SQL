CREATE TABLE Employee(
EmpNo INT PRIMARY KEY,
EmpLname VARCHAR(30),
Age INT,
Jobtitle VARCHAR(30),
Salary INT
)

CREATE TABLE Customer(
CustomerNo VARCHAR(30) PRIMARY KEY,
CustomerFname VARCHAR(30),
City VARCHAR(30),
EmpNo INT, 
FOREIGN KEY (EmpNo) REFERENCES Employee(EmpNo)
)

INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2567,'Migwi',24,'Programmer',120000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2570,'Mutuku',32,'Teacher',68000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2571,'Musau',23,'Cleaner',34000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2572,'Wakayu',26,'Secretary',54000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2573,'Livanze',34,'Accountant',102000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2574,'Waigwa',34,'Cleaner',26000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2575,'Waema',26,'Secretary',38000)
INSERT INTO Employee (EmpNo,EmpLname,Age,Jobtitle,Salary)
VALUES(2576,'Matundura',34,'Teacher',78000)

INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('YT6998','Benard','Pretoria',2572)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('RF2344','Maurice','Pretoria',2573)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('RY5643','Juliet','Kampala',2573)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('GH4563','Noel','Kampala',2575)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('RT8976','Leonard','Durban',2576)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('LK4356','Hellen','Pretoria',2572)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('GH4568','Grace','Mombasa',2575)
INSERT INTO Customer(CustomerNo,CustomerFname,City,EmpNo)
VALUES('YT7998','Juliet','Pretoria',2572)

--GROUP BY CUBE
SELECT EmpLname,Jobtitle, AVG(Salary) AS AverageSalary
FROM Employee
WHERE Age>26
GROUP BY CUBE(EmpLname,Jobtitle)

--INNER JOIN
SELECT CustomerNo,City,Customer.EmpNo,Jobtitle
FROM Customer
JOIN Employee on Customer.EmpNo=Employee.EmpNo
WHERE City='Pretoria' AND Jobtitle='Secretary'


