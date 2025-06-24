CREATE TABLE DOCTOR
(
    DoctorID int primary key not null,
    DoctorFname varchar(30),
    DoctorLname varchar(40),
    NoofPatients int
);

CREATE TABLE PRESCRIPTION
(
    Primary key(PatientNo, DoctorID),
    PatientNo char(15) foreign key references Patient(PatientNo),
    DoctorID int foreign key references Doctor(DoctorID),
    PatientPrescription varchar(50)
);