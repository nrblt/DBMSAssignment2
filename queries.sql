create table Driver(
	driver_id serial primary key,
	driver_fname varchar,
	driver_lname varchar
);
create table Hospitals(
	hospital_id serial primary key,
	hospital_name varchar,
	hospital_address varchar,
	town varchar,
	hospital_status varchar
);

create table Specialization(
	spec_id serial primary key,
	spec_name varchar
);

create table Ambulance_service(
	ambulance_id serial primary key,
	ambulance_name varchar,
	driver_id int references Driver,
	hospital_id int references Hospitals
	
);

create table Medical_treatments(
	medicament_id serial primary key,
	medicament_name varchar
);

create table Hospital_medicaments(
	hospital_id int references Hospitals,
	medicament_id int references Medical_treatments
); 


create table Doctor(
	dc_id serial primary key,
	dc_fname varchar ,
	dc_lname varchar,
	dc_gender varchar, 
	dc_bday date,
	spec_id int references Specialization,
	hospital_id int references Hospitals
);

create table Patient(
	ptn_id serial primary key,
	ptn_fname varchar,
	ptn_lname varchar, 
	ptn_gender varchar
);

create table Bill(
	bill_id serial primary key,
	bill_price int
);


create table Disease (
	disease_id serial primary key,
	diseasename varchar
); 	

create table Appointment (
	appointment_id serial primary key,
	appointment_date date,
	doctor_id int references Doctor,
	patient_id int references Patient,
	disease_id int references Disease,
	bill_id int references Bill
);


alter table Medical_treatments rename to Medicaments

alter table Ambulance_service drop column ambulance_name

