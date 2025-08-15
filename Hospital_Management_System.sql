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


INSERT INTO [dbo].[Doctors] values
('D001', 'Dr. Arjun Reddy', 5, 'M', '9876543100', 'DPT00001'),
('D002', 'Dr. Neha Sharma', 8, 'F', '9876543101', 'DPT00002'),
('D003', 'Dr. Ravi Kumar', 12, 'M', '9876543102', 'DPT00003'),
('D004', 'Dr. Suma Rao', 10, 'F', '9876543103', 'DPT00004'),
('D005', 'Dr. Kiran Mehta', 4, 'M', '9876543104', 'DPT00005'),
('D006', 'Dr. Leela Iyer', 9, 'F', '9876543105', 'DPT00006'),
('D007', 'Dr. Gopal Singh', 11, 'M', '9876543106', 'DPT00007'),
('D008', 'Dr. Hema Das', 7, 'F', '9876543107', 'DPT00008'),
('D009', 'Dr. Ishaan Pillai', 3, 'M', '9876543108', 'DPT00009'),
('D010', 'Dr. Jaya Roy', 15, 'F', '9876543109', 'DPT00010'),
('D011', 'Dr. Karthik Paul', 6, 'M', '9876543110', 'DPT00011'),
('D012', 'Dr. Latha Naik', 5, 'F', '9876543111', 'DPT00012'),
('D013', 'Dr. Manoj Dutta', 14, 'M', '9876543112', 'DPT00013'),
('D014', 'Dr. Nisha Verma', 9, 'F', '9876543113', 'DPT00014'),
('D015', 'Dr. Om Thomas', 10, 'M', '9876543114', 'DPT00015'),
('D016', 'Dr. Priya Joseph', 2, 'F', '9876543115', 'DPT00016'),
('D017', 'Dr. Qadir Khan', 11, 'M', '9876543116', 'DPT00017'),
('D018', 'Dr. Rina Abraham', 7, 'F', '9876543117', 'DPT00018'),
('D019', 'Dr. Suraj John', 13, 'M', '9876543118', 'DPT00019'),
('D020', 'Dr. Tanya George', 4, 'F', '9876543119', 'DPT00020'),
('D021', 'Dr. Umesh Lal', 6, 'M', '9876543120', 'DPT00021'),
('D022', 'Dr. Veena Das', 8, 'F', '9876543121', 'DPT00022'),
('D023', 'Dr. Wasim Nair', 9, 'M', '9876543122', 'DPT00023'),
('D024', 'Dr. Xena Sinha', 3, 'F', '9876543123', 'DPT00024'),
('D025', 'Dr. Yash Kulkarni', 5, 'M', '9876543124', 'DPT00025'),
('D026', 'Dr. Zoya Sharma', 10, 'F', '9876543125', 'DPT00026'),
('D027', 'Dr. Ajay Bhatt', 7, 'M', '9876543126', 'DPT00027'),
('D028', 'Dr. Bindu Vyas', 4, 'F', '9876543127', 'DPT00028'),
('D029', 'Dr. Charan Joshi', 6, 'M', '9876543128', 'DPT00029'),
('D030', 'Dr. Deepa Kaur', 9, 'F', '9876543129', 'DPT00030'),
('D031', 'Dr. Ehsan Iqbal', 10, 'M', '9876543130', 'DPT00031'),
('D032', 'Dr. Farah Kapoor', 2, 'F', '9876543131', 'DPT00032'),
('D033', 'Dr. Gagan Pandey', 11, 'M', '9876543132', 'DPT00033'),
('D034', 'Dr. Heena Rawat', 3, 'F', '9876543133', 'DPT00034'),
('D035', 'Dr. Imran Bedi', 5, 'M', '9876543134', 'DPT00035'),
('D036', 'Dr. Juhi Saxena', 7, 'F', '9876543135', 'DPT00036'),
('D037', 'Dr. Kunal Dubey', 9, 'M', '9876543136', 'DPT00037'),
('D038', 'Dr. Lakshmi Jadhav', 6, 'F', '9876543137', 'DPT00038'),
('D039', 'Dr. Manish Mishra', 8, 'M', '9876543138', 'DPT00039'),
('D040', 'Dr. Nidhi Kohli', 10, 'F', '9876543139', 'DPT00040'),
('D041', 'Dr. Omi Chatterjee', 4, 'M', '9876543140', 'DPT00041'),
('D042', 'Dr. Priya Raina', 5, 'F', '9876543141', 'DPT00042'),
('D043', 'Dr. Qasim Malhotra', 3, 'M', '9876543142', 'DPT00043'),
('D044', 'Dr. Rekha Banerjee', 6, 'F', '9876543143', 'DPT00044'),
('D045', 'Dr. Sameer Ghosh', 8, 'M', '9876543144', 'DPT00045'),
('D046', 'Dr. Tina Mukherjee', 5, 'F', '9876543145', 'DPT00046'),
('D047', 'Dr. Udit Rao', 7, 'M', '9876543146', 'DPT00047'),
('D048', 'Dr. Vinita Patil', 9, 'F', '9876543147', 'DPT00048'),
('D049', 'Dr. Wasim Menon', 12, 'M', '9876543148', 'DPT00049'),
('D050', 'Dr. Xenia Sen', 11, 'F', '9876543149', 'DPT00050'),
('D051', 'Dr. Yogesh Rawal', 4, 'M', '9876543150', 'DPT00001'),
('D052', 'Dr. Zara Das', 5, 'F', '9876543151', 'DPT00002'),
('D053', 'Dr. Arif Khan', 6, 'M', '9876543152', 'DPT00003'),
('D054', 'Dr. Beena Paul', 3, 'F', '9876543153', 'DPT00004'),
('D055', 'Dr. Chetan Rao', 2, 'M', '9876543154', 'DPT00005'),
('D056', 'Dr. Divya Sinha', 5, 'F', '9876543155', 'DPT00006'),
('D057', 'Dr. Eklavya Mehta', 7, 'M', '9876543156', 'DPT00007'),
('D058', 'Dr. Farzana Roy', 8, 'F', '9876543157', 'DPT00008'),
('D059', 'Dr. Gaurav Nair', 10, 'M', '9876543158', 'DPT00009'),
('D060', 'Dr. Heera Shah', 6, 'F', '9876543159', 'DPT00010');