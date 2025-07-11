create table student(
StudentNumber varchar(30) primary key,
FirstName varchar(30),
LastName varchar(30),
Age int,
Gender varchar(30),
StudentCourseCode varchar(30) foreign key references course(StudentCourseCode)
)

CREATE TABLE Course
(
    StudentCourseCode VARCHAR(30) PRIMARY KEY,
    CourseName VARCHAR(30),
    Fees MONEY
)

insert into student(StudentNumber,FirstName,LastName,Age,Gender,StudentCourseCode)
values('FA01','James','Mwaura',22,'Male','DB201')
insert into student(StudentNumber,FirstName,LastName,Age,Gender,StudentCourseCode)
values('FA03','Alice','Ochieng',18,'Female','SS102')
insert into student(StudentNumber,FirstName,LastName,Age,Gender,StudentCourseCode)
values('GA01','Allan','Makokha',19,'Male','NT203')
insert into student(StudentNumber,FirstName,LastName,Age,Gender,StudentCourseCode)
values('RD34','Eunice','Njambi',20,'Female','DB201')

insert into course(StudentCourseCode,CourseName,Fees)
values('DB201','Database','35000')
insert into course(StudentCourseCode,CourseName,Fees)
values('SS102','Programming','20000')
insert into course(StudentCourseCode,CourseName,Fees)
values('NT203','Networks','22000')