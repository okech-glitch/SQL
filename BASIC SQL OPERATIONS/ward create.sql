CREATE TABLE PATIENT
(
PatientNo char(15) primary key not null,
PatientFname varchar(25),
PatientLname varchar(30),
PatientWardCode int foreign key references Ward(PatientWardCode),
Labtestcode char(15) foreign key references Lab(Labtestcode)
);