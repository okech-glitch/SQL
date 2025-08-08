create table doctor(
DoctorID int primary key,
DoctorFname varchar(30),
Doctorsalary int,
Doctorward varchar(30)
)

create table patient(
PatientNo varchar(30) primary key,
PatientLname varchar(30),
Patientage int,
Gender varchar(30)
)

create table DoctorPatient(
PatientNo varchar(30),
DoctorID varchar(30)
)
insert into doctor(DoctorID,DoctorFname,Doctorsalary,Doctorward)
values(123,'Victor','$5678','Ward 4')
insert into doctor(DoctorID,DoctorFname,Doctorsalary,Doctorward)
values(132,'Hellen','$4365','Ward 3')
insert into doctor(DoctorID,DoctorFname,Doctorsalary,Doctorward)
values(125,'Moses','$7654','Ward 4')

insert into patient(PatientNo,PatientLname,Patientage,Gender)
values('KNH234','Mwaura',25,'Male')
insert into patient(PatientNo,PatientLname,Patientage,Gender)
values('KNH567','Atieno',43,'Female')
insert into patient(PatientNo,PatientLname,Patientage,Gender)
values('KNH342','Moraa',52,'Female')

insert into DoctorPatient(PatientNo, DoctorID)
values('KNH234', 123)
insert into DoctorPatient(PatientNo, DoctorID)
values('KNH567', 123)

select * from DoctorPatient

select doctor.DoctorID, DoctorFname,patient.PatientNo,Patientage
from doctor
join DoctorPatient on doctor.DoctorID=DoctorPatient.DoctorID
join patient on patient.PatientNo=DoctorPatient.PatientNo
where Doctorsalary>='5000'
order by DoctorFname asc

select doctorFname, Doctorward, avg (Doctorsalary)  
from doctor
where Doctorward='Ward 4'