Update STAFF
Set StaffFname='Joan Achieng'
Where StaffFID='S02'

Update STAFF
Set City='Nairobi'
Where StaffFID='S03'

Update Student
Set Course='BCOM'
Where StudentID='1'

Alter Table Staff
Add Gender Varchar(25)

Alter Table Student
Add Nationality Varchar(20)



Alter Table Staff
Drop Column city

Alter Table Student
Drop Column StudentGender