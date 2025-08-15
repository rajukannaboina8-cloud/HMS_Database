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


-------------------Insert and Update and Delete ----

insert into Department
VALUES
('DPT00001', 'Cardiology', 'Dr. A. Reddy', 2, '9876543210'),
('DPT00002', 'Neurology', 'Dr. B. Kumar', 3, '9876543211'),
('DPT00003', 'Oncology', 'Dr. C. Sharma', 4, '9876543212'),
('DPT00004', 'Orthopedics', 'Dr. D. Mehta', 2, '9876543213'),
('DPT00005', 'Pediatrics', 'Dr. E. Rao', 1, '9876543214'),
('DPT00006', 'Dermatology', 'Dr. F. Iyer', 3, '9876543215'),
('DPT00007', 'Radiology', 'Dr. G. Singh', 4, '9876543216'),
('DPT00008', 'Nephrology', 'Dr. H. Das', 3, '9876543217'),
('DPT00009', 'Urology', 'Dr. I. Pillai', 2, '9876543218'),
('DPT00010', 'ENT', 'Dr. J. Roy', 1, '9876543219'),
('DPT00011', 'Gastroenterology', 'Dr. K. Paul', 2, '9876543220'),
('DPT00012', 'Ophthalmology', 'Dr. L. Naik', 3, '9876543221'),
('DPT00013', 'Psychiatry', 'Dr. M. Dutta', 4, '9876543222'),
('DPT00014', 'Pulmonology', 'Dr. N. Verma', 3, '9876543223'),
('DPT00015', 'Anesthesiology', 'Dr. O. Thomas', 2, '9876543224'),
('DPT00016', 'General Surgery', 'Dr. P. Joseph', 1, '9876543225'),
('DPT00017', 'Internal Medicine', 'Dr. Q. Khan', 2, '9876543226'),
('DPT00018', 'Endocrinology', 'Dr. R. Abraham', 3, '9876543227'),
('DPT00019', 'Pathology', 'Dr. S. John', 4, '9876543228'),
('DPT00020', 'Microbiology', 'Dr. T. George', 4, '9876543229'),
('DPT00021', 'Biochemistry', 'Dr. U. Lal', 3, '9876543230'),
('DPT00022', 'Forensic Medicine', 'Dr. V. Das', 2, '9876543231'),
('DPT00023', 'Physiology', 'Dr. W. Nair', 1, '9876543232'),
('DPT00024', 'Pharmacology', 'Dr. X. Sinha', 2, '9876543233'),
('DPT00025', 'Community Medicine', 'Dr. Y. Kulkarni', 1, '9876543234'),
('DPT00026', 'Dentistry', 'Dr. Z. Sharma', 1, '9876543235'),
('DPT00027', 'Emergency', 'Dr. A. Bhatt', 1, '9876543236'),
('DPT00028', 'ICU', 'Dr. B. Vyas', 2, '9876543237'),
('DPT00029', 'Blood Bank', 'Dr. C. Joshi', 1, '9876543238'),
('DPT00030', 'Physiotherapy', 'Dr. D. Kaur', 3, '9876543239'),
('DPT00031', 'Nutrition', 'Dr. E. Iqbal', 2, '9876543240'),
('DPT00032', 'Rehabilitation', 'Dr. F. Kapoor', 3, '9876543241'),
('DPT00033', 'Medical Records', 'Dr. G. Pandey', 2, '9876543242'),
('DPT00034', 'Health Informatics', 'Dr. H. Rawat', 3, '9876543243'),
('DPT00035', 'Speech Therapy', 'Dr. I. Bedi', 2, '9876543244'),
('DPT00036', 'Occupational Therapy', 'Dr. J. Saxena', 3, '9876543245'),
('DPT00037', 'Geriatrics', 'Dr. K. Dubey', 1, '9876543246'),
('DPT00038', 'Allergy & Immunology', 'Dr. L. Jadhav', 4, '9876543247'),
('DPT00039', 'Pain Management', 'Dr. M. Mishra', 3, '9876543248'),
('DPT00040', 'Plastic Surgery', 'Dr. N. Kohli', 4, '9876543249'),
('DPT00041', 'Burn Unit', 'Dr. O. Chatterjee', 2, '9876543250'),
('DPT00042', 'Palliative Care', 'Dr. P. Raina', 3, '9876543251'),
('DPT00043', 'Sleep Medicine', 'Dr. Q. Malhotra', 3, '9876543252'),
('DPT00044', 'Sports Medicine', 'Dr. R. Banerjee', 2, '9876543253'),
('DPT00045', 'Sexual Health', 'Dr. S. Ghosh', 2, '9876543254'),
('DPT00046', 'Toxicology', 'Dr. T. Mukherjee', 4, '9876543255'),
('DPT00047', 'Medical Genetics', 'Dr. U. Rao', 4, '9876543256'),
('DPT00048', 'Clinical Trials', 'Dr. V. Patil', 3, '9876543257'),
('DPT00049', 'Nuclear Medicine', 'Dr. W. Menon', 4, '9876543258'),
('DPT00050', 'Infectious Diseases', 'Dr. X. Sen', 3, '9876543259');

