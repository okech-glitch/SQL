CREATE TABLE STAFF
(
StaffID VARCHAR(50) PRIMARY KEY,
SurName VARCHAR(50),
MiddleName VARCHAR(50),
LastName VARCHAR(50),
Age INT,
Gender VARCHAR(50)
)

CREATE TABLE Department 
(
DeptID INT IDENTITY(1,1) PRIMARY KEY,
DeptName VARCHAR(50) NOT NULL,
HeadofDepartment VARCHAR(50) NOT NULL,
DeptBlock VARCHAR(50)
)

INSERT INTO STAFF
VALUES
('STF1','Bobby','Milly','Brown',22,'Female')
('STF2','James','Ken','Kingsley',20,'Male')
('STF3','Mary','Juma','Shield',19,'Female')
('STF4','Paul','Greg','Peterson',15,'Male')

INSERT INTO Department
(DeptName,HeadofDepartment,DeptBlock)
VALUES
('Human Resource','James Brown','Block B')
INSERT INTO Department
(DeptName,HeadofDepartment,DeptBlock)
VALUES
('Marketing','Mary Jones','Block C')
INSERT INTO Department
(DeptName,HeadofDepartment,DeptBlock)
VALUES
('Sales','Paul Toms','Block D')
INSERT INTO Department
(DeptName,HeadofDepartment,DeptBlock)
VALUES
('Procurement','Mary Kibe','Block C')


ALTER TABLE Staff
DROP COLUMN MiddleName

ALTER TABLE Staff
ADD Salary INT

UPDATE Staff
SET Salary=5000
WHERE StaffID='STF1'

DELETE FROM STAFF
WHERE StaffID='STF4'

UPDATE STAFF
SET SURNAME=NULL
WHERE StaffID='STF1'


SELECT Surname, LastName, Salary
FROM STAFF

SELECT DeptName,DeptBlock
FROM Department


SELECT * FROM STAFF
WHERE Age>19



SELECT SURNAME,AGE,GENDER
FROM STAFF
WHERE AGE BETWEEN 15 AND 20

SELECT * FROM STAFF
WHERE SurName LIKE '%a%'

SELECT LastName, Salary
FROM STAFF
WHERE LastName LIKE 'K%'

SELECT *
FROM STAFF
WHERE Surname LIKE '%a%' AND Age >=20


SELECT SurName+ ' ' +Lastname AS FullName, Age 
FROM STAFF

SELECT DeptID,DeptName
FROM Department

SELECT DeptBlock
FROM Department
WHERE DeptName='Marketing'

SELECT *
FROM STAFF
WHERE Age >20

Select TOP 1 SurName, Salary
FROM Staff
ORDER BY Salary DESC

INSERT INTO STAFF
(StaffID,SurName,LastName,Age,Gender,Salary)
VALUES
('STF5','Smith','John',25,'Male',6000)


update staff
set salary=5800
where StaffID='STF1'

UPDATE Department
SET DeptBlock='Block F'
WHERE DeptName='Sales'

UPDATE Staff
SET Age=30
WHERE StaffID='STF3'

DELETE FROM STAFF
WHERE StaffID='STF5'

DELETE FROM STAFF
WHERE StaffID='5'

