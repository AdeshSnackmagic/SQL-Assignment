CREATE DATABASE FoodPreference;
USE FoodPreference;

CREATE TABLE TASTES(
Name varchar(32),
Filling varchar(32),
Primary Key (Name, Filling)
);

CREATE TABLE LOCATIONS(
LName varchar(50) primary Key,
Phone varchar(15),
Address varchar (100)
);

CREATE TABLE SANDWICHES(
Location varchar (50),
BREAD varchar (10),
Filling varchar(32), 
Price Decimal(5,2),
Primary Key (Location,Bread, Filling),
foreign key (Location) references LOCATIONS(Lname)
);


INSERT INTO TASTES values 
('Brown','Turkey'),
('Brown','Beef'),
('Brown','Ham'),
('Jones','Cheese'),
('Green','Beef'),
('Green','Turkey'),
('Green','Cheese');


INSERT INTO LOCATIONS values
('Lincoln','6834523','Lincoln Place'),
("O'Neill's", '6742134','Pearse St'),
('Old Nag', '7678132','Dame St'),
('Buttery','7023421', 'College St');

select * from LOCATIONS;

INSERT INTO SANDWICHES values
('Lincoln','Rye','Ham',1.25),
("O'Neill's",'White','Cheese',1.20),
("O'Neill's",'Whole','Ham',1.25),
('Old Nag','Rye','Beef',1.35),
('Buttery','White','Cheese',1.00),
("O'Neill's",'White','Turkey',1.35),
('Buttery','White','Ham',1.10),
('Lincoln','Rye','Beef',1.35),
('Lincoln','White','Ham',1.30),
('Old Nag' ,'Rye','Ham',1.40);

-- Places where Jones Can Eat (using Nested Query)


select Location From SANDWICHES where filling in (Select filling from TASTES where Name="Jones");

-- Places Where Jones Can Eat (without nested Query )

select distinct S.Location from TASTES T join SANDWICHES S on S.Filling= T.Filling where T.Name='Jones';

-- number of people who can eat at these location

select S.Location as Location, Count(DISTINCT(Name)) as Total_Person from TASTES T join SANDWICHES S on S.Filling= T.Filling Group by S.Location;
