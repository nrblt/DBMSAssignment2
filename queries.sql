create table Driver(
	driver_id serial,
	driver_fname varchar,
	driver_lname varchar
);

create table Ambulance_service(
	ambulance_id serial,
	ambulance_name varchar
);

create table Hospitals(
	hospital_id serial,
	hospital_name varchar,
	hospital_address varchar,
	town varchar,
	hospital_status varchar
);

create table Hospital_medicaments(
	medicament_id serial,
	medicament_name varchar
);

create table Medical_treatments(); 

create table Specialization(
	spec_id serial,
	spec_name varchar
);

create table Doctor(
	dc_id serial,
	dc_fname varchar,
	dc_lname varchar,
	dc_gender varchar, 
	dc_bday date 
);

create table Patient(
	ptn_id serial,
	ptn_fname varchar,
	ptn_lname varchar, 
	ptn_gender varchar
);

create table Bill(
	bill_id serial,
	bill_price int
);


create table Disease (
	disease_id serial,
	diseasename varchar
); 	

create table Appointment (
	appointment_id serial,
	appointment_date date
);
