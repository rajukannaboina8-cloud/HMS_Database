Create database Hospital_Management_System
use Hospital_Management_System
go

create table Department
(
Department_ID char(8) not null Primary key,
Department_Name varchar(100) not null unique,
HOD_Department varchar(200),
FloorNo tinyint,
Contact_number varchar(15)
)

select * from Department


Create table [dbo].[Doctors]
(
DoctorId char(4) not null  primary key,
DoctorName varchar(200) not null,
Experince tinyint,
Gender char(2),
Phoneno varchar(15),
Department_ID char(8) not null,
FOREIGN KEY (Department_ID) references Department(Department_ID)
)
 
select * from [Doctors]

CREATE TABLE Patient (
Patient_ID char(6) not null primary key ,
Patient_Name varchar(200),
Age Tinyint,
Gender varchar(1),
Contact_Number varchar(15) unique,
DoctorId char(4) ,
foreign key (DoctorId) references doctors(DoctorId)
)

select * from Patient