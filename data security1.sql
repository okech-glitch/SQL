create table staff(
staffid varchar(30) primary key,
staffname varchar(30),
gender varchar(30),
salary money,
accountno varchar(30),
age int,
spousename varchar (30)
)

create table department(
deptid varchar (30),
deptname varchar(30),
manager varchar(30),
managersalary money,
staffid varchar(30) foreign key references staff(staffid)
)

insert into staff(staffid,staffname,gender,salary,accountno,age,spousename)
values('s1','fred kimbo','male','30000','25476865','22','jane masai')
insert into staff(staffid,staffname,gender,salary,accountno,age,spousename)
values('s2','mary njoki','female','60000','25474331','20','paul ogutu')
insert into staff(staffid,staffname,gender,salary,accountno,age,spousename)
values('s3','martha njeri','female','45000','23176425','19','ken juma')
insert into staff(staffid,staffname,gender,salary,accountno,age,spousename)
values('s4','jeff muli','male','50000','25479065','30','faith wanjiru')
insert into staff(staffid,staffname,gender,salary,accountno,age,spousename)
values('s5','george tembo','male','25000','8746367','27','sarah akinyi')

insert into department(deptid,deptname,manager,managersalary,staffid)
values('d1','sales','john kiptoo','120000','s1')
insert into department(deptid,deptname,manager,managersalary,staffid)
values('d2','marketing','peter kagemi','150000','s2')
insert into department(deptid,deptname,manager,managersalary,staffid)
values('d3','finance','ann wangui','100000','s3')
insert into department(deptid,deptname,manager,managersalary,staffid)
values('d4','procurement','mary juma','90000','s4')
insert into department(deptid,deptname,manager,managersalary,staffid)
values('d5','ICT','greg kimani','150000','s5')

create view staffinfo as
select staffid,staffname,gender 
from staff

create view staffnameBEGM as
select staffname,age,spousename
from staff
where staffname like 'm%'

select * from staffnameBEGM
select * from StaffDept








select * from staffinfo

select * from staff
select * from department












