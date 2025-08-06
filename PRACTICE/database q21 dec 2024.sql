create table staff(
staffnumber varchar(30) primary key,
stafflname varchar(30),
staffphone int,
accountnumber varchar(30),
foreign key (accountnumber) references account (accountnumber)
)

create table account(
accountnumber varchar(30) primary key,
accountname varchar(30),
accountbalanceindollars int
)

create table customer(
customerID int primary key,
customerfname varchar(30),
customeremail varchar(30),
staffnumber varchar(30),
foreign key (staffnumber) references staff (staffnumber)
)

insert into staff(staffnumber,stafflname,staffphone,accountnumber)
values('b004','moraa',0714234345,'en34544t')
insert into staff(staffnumber,stafflname,staffphone,accountnumber)
values('c5676','mwende',0734004309,'cb98976y')
insert into staff(staffnumber,stafflname,staffphone,accountnumber)
values('d3456','otieno',0735203004,'cp46575659w')
insert into staff(staffnumber,stafflname,staffphone,accountnumber)
values('w4354','musembi',0724657768,'en34544t')

insert into account(accountnumber,accountname,accountbalanceindollars)
values('en34544t','standard',3500)
insert into account(accountnumber,accountname,accountbalanceindollars)
values('cp46575659w','haba haba',4000)
insert into account(accountnumber,accountname,accountbalanceindollars)
values('cb98976y','special',6000)

insert into customer(customerID,customerfname,customeremail,staffnumber)
values('2345','james','jmwaura@gmail.com','w4354')
insert into customer(customerID,customerfname,customeremail,staffnumber)
values('2356','hellen','hlnnjeri@gmail.com','c5676')
insert into customer(customerID,customerfname,customeremail,staffnumber)
values('6543','arnold','arnoline@gmail.com','w4354')
insert into customer(customerID,customerfname,customeremail,staffnumber)
values('4576','alice','alcewel@gmail.com','d3456')

select customerID,customeremail,account.accountnumber,accountname,stafflname
from staff
join account on staff.accountnumber=account.accountnumber
join customer on staff.staffnumber=customer.staffnumber
where stafflname like '%e%'

update customer
set staffnumber='d3456'
where customerfname='hellen'
select * from customer

select sum(accountbalanceindollars) as totalbalance
from account























