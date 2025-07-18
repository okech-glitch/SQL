CREATE TABLE Employee (
    EmployeeID VARCHAR(30) PRIMARY KEY,
    EmployeeName VARCHAR(30),
    Age INT,
    Salary MONEY,
	AccNo INT,
    Department VARCHAR(30)
)

CREATE TABLE Bank (
    BankID VARCHAR(30) PRIMARY KEY,
    BankName VARCHAR(30),
	AccType VARCHAR(30),
	EmployeeID VARCHAR(30)
)

INSERT INTO Employee(EmployeeID, EmployeeName, Age, Salary, AccNo, Department)
VALUES ('E01', 'FRED JUMA', '25', '30000', '245000', 'SALES')
INSERT INTO Employee(EmployeeID, EmployeeName, Age, Salary, AccNo, Department)
VALUES ('E02', 'PAUL MUTIA', '35', '50000', '345000', 'SALES')
INSERT INTO Employee(EmployeeID, EmployeeName, Age, Salary, AccNo, Department)
VALUES ('E03', 'JANE NJUI', '45', '60000', '445000', 'FINANCE')
INSERT INTO Employee(EmployeeID, EmployeeName, Age, Salary, AccNo, Department)
VALUES ('E04', 'SARAH JUMA', '55', '40000', '545000', 'FINANCE')
INSERT INTO Employee(EmployeeID, EmployeeName, Age, Salary, AccNo, Department)
VALUES ('E05', 'KEN OUMA', '35', '20000', '645000', 'SALES')


INSERT INTO Bank(BankID, BankName, AccType, EmployeeID)
VALUES ('B1', 'KCB', 'FIXED', 'E01')
INSERT INTO Bank(BankID, BankName, AccType, EmployeeID)
VALUES ('B2', 'EQUITY', 'CURRENT', 'E01')
INSERT INTO Bank(BankID, BankName, AccType, EmployeeID)
VALUES ('B3', 'COOPERATIVE', 'SAVINGS', 'E02')
INSERT INTO Bank(BankID, BankName, AccType, EmployeeID)
VALUES ('B4', 'FAMILY', 'FIXED', 'E03')
INSERT INTO Bank(BankID, BankName, AccType, EmployeeID)
VALUES ('B5', 'BANK OF AFRICA', 'SAVINGS', 'E04')
