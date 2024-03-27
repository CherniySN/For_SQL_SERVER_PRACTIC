create database ForTraning;
use ForTraning; 

--Создание таблиц
create table Adress(
ID_Adress int primary key identity not null,
Street varchar(30) not null,
House	Int 	Not null,
Flat	Int 	Not null
);

CREATE TABLE Car(
Vehicle_code	Int PRIMARY KEY	IDENTITY Not null,
Car_model	Varchar(30) 	Not null,
Government_number	Varchar(30) 	Not null,
Color	Varchar(30) 	Not null,
Year_of_release	Date 	Not null,
Technical_condition	Varchar(60) 	Not null
);

CREATE TABLE Employee(
Employee_code	Int PRIMARY KEY	IDENTITY Not null,
Employee_surname	Varchar(30)	Not null,
Employee_name	Varchar(30) 	Not null,
Employee_patronymic	Varchar(30) 	Not null,
Employee_date_of_birth	Date	Not null,
Category Int Not null,
Callsign Varchar(30) 	Not null,
Vehicle_code int REFERENCES Car(Vehicle_code),
Address_code int REFERENCES Adress(ID_Adress)
);

select * from [Adress];

select * from openquery (POSTGRESTEST, 'select * from auto');