 CREATE TABLE PRESCRIPTION 
 (
 Primary key(PatientNo, DoctorID),
 PatientNo char(15) foreign key references Patient(PatientNo),
 DoctorID int foreign key references Doctor(DoctorID),
 PatientPrescription varchar(50)
 );
