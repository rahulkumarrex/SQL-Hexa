use hexa;
-- CRUD Operation on table Patients.
create table Patient(patient_id int primary key, first_name varchar(50), last_name varchar(50), date_of_birth date,gender varchar(10), 
contact_number varchar(15),address varchar(100));

show tables;
insert into patients(patient_id,first_name,last_name,date_of_birth,gender,contact_number,address) values
(102,'Suraj','Ram','2001-04-15','Male','9875859665','Delhi'),
(103,'Sonia','Chand','2003-07-12','Female','8455263669','Mumbai'),
(104,'Pooja','Kumari','2003-12-24','Female','6584575896','Baerily');

select * from patients;


update patients
set first_name = 'Manisha', last_name= 'Vishwakarma', date_of_birth ='1998-12-12' where 
patient_id = 104;

delete from patients where patient_id = 103;

-- CRUD Operation on Doctors table.

create table Doctors(doctor_id int primary key,first_name varchar(50),last_name varchar(50), specialization VARCHAR(100), 
contact_number VARCHAR(15));

insert into doctors(doctor_id,first_name,last_name,specialization,contact_number) values
(202,'Sambhav','Patel','Dermatologist','9854587563'),
(203,'Arpit','Tripathi','Orthopedic ','9854587563'),
(204,'NNeha','Chand','Psychiatrist','9854587563');

select * from doctors;

update doctors
set first_name='Neha',contact_number='8975421365' where doctor_id = 204;

delete from doctors where doctor_id = 204;

-- CRUD Operation on Appointments table.

create table Appointments ( appointment_id int primary key, 
patient_id int, doctor_id int, appointment_date datetime, description 
text, foreign key(patient_id) references Patients(patient_id), 
foreign key (doctor_id) references Doctors(doctor_id)); 

insert into Appointments (appointment_id, patient_id, doctor_id, appointment_date, description)
values 
    (1, 101, 202, '2023-12-05 10:00:00', 'Regular checkup'),
    (2, 102, 201, '2023-12-06 12:30:00', 'For Surgery'),
    (3, 104, 203, '2023-12-19 16:30:00', 'Therapy session');
    
	select * from Appointments where appointment_id = 2;
    select * from appointments;
    update appointments
    set description = 'Annual checkup' where appointment_id = 1;
    
    delete from appointments where appointment_id = 2;
    
  -- CRUD Operation on Billing table.  

  create table Billing ( bill_id int primary key, patient_id int, 
doctor_id int, appointment_id int, bill_date date, amount decimal(10,2), payment_status varchar(20), 
foreign key(patient_id) references Patients(patient_id), foreign key (doctor_id) references Doctors(doctor_id),
foreign key (appointment_id) references Appointments(appointment_id));

  insert into Billing (bill_id, patient_id, doctor_id, appointment_id, bill_date, amount, payment_status)
values
    (1, 101, 202, 1, '2023-12-05', 1500, 'Paid'),
	(2, 104, 203, 3, '2023-12-03', 3000, 'Pending'),
    (3, 102, 201, 2, '2023-12-06', 5000, 'Pending');

    select * from billing;
    select bill_id,bill_date,payment_status from billing where bill_id = 1 ;
    
    update billing 
    set amount = 4000, payment_status = 'Paid' where bill_id = 2;
    
    delete from billing where bill_id = 3;
    
        
    select * from patients;
    select * from doctors;
    select * from appointments;
    select * from billing;
