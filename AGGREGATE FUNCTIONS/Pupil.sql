CREATE TABLE Pupil
(
PupilID VARCHAR(30) PRIMARY KEY,
PupilName VARCHAR(30),
Age INT,
Gender VARCHAR(30),
City VARCHAR(30),
Math INT,
Eng INT,
Kisw INT,
Sci INT
)

INSERT INTO Pupil (PupilID, PupilName, Age, Gender, City, Math, Eng, Kisw, Sci)
VALUES ('P1', 'Sam Ouma', 23, 'Male', 'Nairobi', 50, 65, 55, 60)

INSERT INTO Pupil (PupilID, PupilName, Age, Gender, City, Math, Eng, Kisw, Sci)
VALUES ('P2', 'Mary Atieno', 20, 'Female', 'Nairobi', 55, 45, 45, 50)

INSERT INTO Pupil (PupilID, PupilName, Age, Gender, City, Math, Eng, Kisw, Sci)
VALUES ('P3', 'Musa Juma', 30, 'Male', 'Kisumu', 70, 75, 65, 40)

INSERT INTO Pupil (PupilID, PupilName, Age, Gender, City, Math, Eng, Kisw, Sci)
VALUES ('P4', 'Paul Kamau', 18, 'Male', 'Nairobi', 85, 55, 35, 80)

INSERT INTO Pupil (PupilID, PupilName, Age, Gender, City, Math, Eng, Kisw, Sci)
VALUES ('P5', 'Jane Kibe', 21, 'Female', 'Kisumu', 35, 85, 65, 63)


SELECT PupilName,City,Age
FROM Pupil
WHERE City='Nairobi' AND PupilName LIKE 'M%'

SELECT PupilName,City,Gender
FROM Pupil
WHERE Gender='Male' OR City='Nakuru'

SELECT PupilName,Age,City
FROM Pupil
WHERE Age>30 AND City='Mombasa'

SELECT *
FROM Pupil
WHERE NOT PupilName='Musa Juma'

SELECT PupilName,Age,City
FROM Pupil
WHERE NOT PupilName='Mary Atieno' AND NOT PupilName='Sam Ouma'

SELECT COUNT(PupilName) AS NoOfStudents
FROM Pupil

SELECT COUNT(PupilName) AS NoOfMaleStudents
FROM Pupil
WHERE Gender='Male'

SELECT COUNT(PupilName) AS NoOfFemaleStudents
FROM Pupil
WHERE Gender='Female'

SELECT SUM(Math) AS TotalPerformanceInMath
FROM Pupil

SELECT SUM(Sci) AS TotalPerformanceInSciForMales
FROM Pupil
WHERE Gender='Male'

SELECT SUM(Eng) AS MalePerformanceinEng,SUM(Kisw) AS MalePerformanceinKisw
FROM Pupil
WHERE Gender='Male'

SELECT AVG(Math) AS FemaleAVGinMath,AVG(Eng) AS FemaleAVGinEng
FROM Pupil
WHERE Gender='Female'

SELECT AVG(Sci) AS AVGSciePerformance
FROM Pupil

SELECT PupilName,Age,Gender
FROM Pupil
WHERE City='Nairobi'
ORDER BY AGE ASC


















