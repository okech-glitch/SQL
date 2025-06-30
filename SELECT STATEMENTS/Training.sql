CREATE TABLE TblEvents(
EventNumber INT PRIMARY KEY,
EventName VARCHAR(25) NOT NULL,
EventDate DATE,
StartTime TIME,
EndTime TIME,
NumberOfGuests INT,
GuestSpeaker VARCHAR(25)
)

CREATE TABLE TblStaff(
StaffNumber INT PRIMARY KEY,
StaffName VARCHAR(25) NOT NULL,
Age INT,
Salary DECIMAL(10)
)

INSERT INTO TblEvents (EventNumber,EventName,EventDate,StartTime,EndTime,NumberOfGuests,GuestSpeaker)
VALUES(120,'Lunch Gala','2023/10/23','11:00','16:00',25,'John Muiruri')
INSERT INTO TblEvents (EventNumber,EventName,EventDate,StartTime,EndTime,NumberOfGuests,GuestSpeaker)
VALUES(121,'Staff Meeting','2023/10/26','8:00','10:00',30,'Faith Mumbi')
INSERT INTO TblEvents (EventNumber,EventName,EventDate,StartTime,EndTime,NumberOfGuests,GuestSpeaker)
VALUES(122,'Forum','2023/10/27','8:00','11:00',15,'Paul Juma')
INSERT INTO TblEvents (EventNumber,EventName,EventDate,StartTime,EndTime,NumberOfGuests,GuestSpeaker)
VALUES(123,'Music Festival','2023/10/28','9:00','12:00',20,'Janet Mwende')
INSERT INTO TblEvents (EventNumber,EventName,EventDate,StartTime,EndTime,NumberOfGuests,GuestSpeaker)
VALUES(124,'Drama Festival','2023/10/28','10:00','12:00',10,'Paul Juma')

INSERT INTO TblStaff (StaffNumber,StaffName,Age,Salary)
VALUES (301,'Jane Green',22,50000)
INSERT INTO TblStaff (StaffNumber,StaffName,Age,Salary)
VALUES (302,'Greg Jones',19,45000)
INSERT INTO TblStaff (StaffNumber,StaffName,Age,Salary)
VALUES (303,'Kim Peters',20,60000)
INSERT INTO TblStaff (StaffNumber,StaffName,Age,Salary)
VALUES (304,'Hans John',18,35000)

SELECT *
FROM TblEvents

SELECT *
FROM TblStaff

SELECT StaffName,Age,Salary
FROM TblStaff
ORDER BY Salary ASC

SELECT StaffName, AVG(Salary) AS AverageSalary
FROM TblStaff
GROUP BY (StaffName)

SELECT StaffName,Salary,Age
FROM TblStaff
WHERE StaffName LIKE '%s'

SELECT EventName,EventDate,GuestSpeaker
FROM TblEvents
WHERE NOT GuestSpeaker='John Muiruri' AND NOT GuestSpeaker='Janet Mwende'

SELECT SUM(NumberOfGuests) AS TotalNoOfGuests
FROM TblEvents

SELECT COUNT(StaffName) AS NumberOfStaffMembers
FROM TblStaff

SELECT EventName,EventDate,NumberOfGuests
FROM TblEvents

SELECT EventName,StartTime,EndTime
FROM TblEvents
WHERE EventName='Forum'

SELECT StaffName,Age,Salary
FROM TblStaff
WHERE Salary>45000

SELECT EventName,EventDate,StartTime,NumberOfGuests
FROM TblEvents
WHERE NumberOfGuests>20

SELECT EventName,StartTime,EndTime,GuestSpeaker
FROM TblEvents
WHERE GuestSpeaker='Paul Juma'

SELECT StaffNumber,StaffName,Age
FROM TblStaff
WHERE AGE >=18

SELECT EventName,StartTime,EndTime,GuestSpeaker
FROM TblEvents
WHERE StartTime='8:00'

SELECT EventName,StartTime,EndTime,EventDate
FROM TblEvents
WHERE StartTime>'9:00'

SELECT EventName,StartTime,EndTime,EventDate
FROM TblEvents
WHERE EndTime>'11:00'

SELECT EventName,StartTime,EndTime,EventDate
FROM TblEvents
WHERE EndTime<'12:00'

SELECT EventName,StartTime,EndTime,NumberOfGuests
FROM TblEvents
WHERE StartTime='8:00' AND NumberOfGuests>=10

SELECT StaffName,Age,Salary
FROM TblStaff
WHERE Age>19 AND Salary>45000

UPDATE TblStaff
SET StaffName='Gregory Johnson'
WHERE StaffName='Hans John'

SELECT *
FROM Tblstaff












































