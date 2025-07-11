create table staff(
Staffnumber varchar(30),
Stafflastname varchar(30),
Staffphone int,
Accountnumber varchar(30)
)

create table account(
Accountnumber varchar(30),
Accountname varchar(30),
Accountbalanceindollars money
)

create table customer(
Customerid varchar(30),
Customerfirstname varchar(30),
Customeremail  varchar(30),
Staffnumber varchar(30)
)

insert into staff(Staffnumber,Stafflastname,Staffphone,Accountnumber)
values('B004','Moraa',0714368973,'EN345455T')
insert into staff(Staffnumber,Stafflastname,Staffphone,Accountnumber)
values('C5676','Mwende',07145685423,'CB98984Y')
insert into staff(Staffnumber,Stafflastname,Staffphone,Accountnumber)
values('D3456','Otieno',0725673889,'CP46575659W')
insert into staff(Staffnumber,Stafflastname,Staffphone,Accountnumber)
values('W4354','Musembi',0712874874,'EN345455T')

ALTER TABLE staff
ALTER COLUMN Staffphone VARCHAR(15)

insert into account(Accountnumber,Accountname,Accountbalanceindollars)
values('EN345455T','Standard','3500')
insert into account(Accountnumber,Accountname,Accountbalanceindollars)
values('CP46575659W','Haba Haba','4000')
insert into account(Accountnumber,Accountname,Accountbalanceindollars)
values('CB98984Y','Special','6000')

insert into customer(Customerid,Customerfirstname,Customeremail,Staffnumber)
values('2345','James','jmmwaura@gmail.com','W4354')
insert into customer(Customerid,Customerfirstname,Customeremail,Staffnumber)
values('2356','Hellen','hlnnjeri@gmail.com','C5676')
insert into customer(Customerid,Customerfirstname,Customeremail,Staffnumber)
values('6543','Anorld','arnoline@gmail.com','W4354')
insert into customer(Customerid,Customerfirstname,Customeremail,Staffnumber)
values('4576','Alice','alcewel@gmail.com','D3456')

select * from staff
select * from account
select * from customer

select customerid,customeremail,account.accountnumber,accountname,stafflastname
from staff
inner join account on staff.Accountnumber=account.Accountnumber
inner join customer on staff.Staffnumber=customer.Staffnumber
where Stafflastname like '%e%'


