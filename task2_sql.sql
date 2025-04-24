create table Hospital (
   hospital_id int primary key,
   name varchar
) 

insert into Hospital (hospital_id, name)
values (1,'city care')

insert into Hospital (hospital_id, name)
values (2,'city care')

insert into Hospital (hospital_id, name)
values (3,'city care') 

select * from Hospital 

create table Doctor (
doctor_id int primary key,
name varchar,
hospital_id int,
FOREIGN key (hospital_id) REFERENCES Hospital(hospital_id)
) 

insert into Doctor (doctor_id, name, hospital_id)
values (101,'Dr.Anjali',1)

insert into Doctor (doctor_id, name, hospital_id)
values (102,'Dr.Raj',3)

insert into Doctor (doctor_id, name, hospital_id)
values (103,'Dr.Hathi',2) 

select * from Doctor 

create table Patient (
patient_id int primary key,
name varchar,
hospital_id int,
FOREIGN key (hospital_id) REFERENCES Hospital(hospital_id)
)

insert into Patient (patient_id, name, hospital_id)
values (201,'ravi kumar',2)

insert into Patient (patient_id, name, hospital_id)
values (202,'sonal shahu',1)

insert into Patient (patient_id, name, hospital_id)
values (203,'priya tiwari',3)

select * from Patient 

create table Schedule (
schedule_id int primary key,
doctor_id int,
day varchar,
time_slot varchar,
FOREIGN key (doctor_id) REFERENCES Doctor(doctor_id)
)

insert into Schedule (schedule_id, doctor_id, day, time_slot)
values (301,102,'Monday','10AM-12Pm')


insert into Schedule (schedule_id, doctor_id, day, time_slot)
values (302,103,'Tuesday','2PM-4Pm')


insert into Schedule (schedule_id, doctor_id, day, time_slot)
values (303,101,'Wednesday','1PM-4Pm') 

select * from Schedule 

create table Appointment (
appointment_id int primary key,
patient_id int,
date DATE,
reason varchar,
FOREIGN key (patient_id) REFERENCES Patient(patient_id)
)

insert into Appointment (appointment_id, patient_id, date, reason)
values (411,202,'2025-02-25','fever')

insert into Appointment (appointment_id, patient_id, date, reason)
values (412,203,'2025-01-26','cheak up')

insert into Appointment (appointment_id, patient_id, date, reason)
values (413,201,'2025-02-05','cold') 

select * from Appointment