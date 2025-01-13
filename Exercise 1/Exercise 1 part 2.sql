Create Database Library ;
use Library;
Create Table BRANCH
(
BCode varchar(5) Primary Key,
Librarian varchar(32),
Address varchar(100)
);

Create table TITLES
(
Title varchar(50) Primary Key,
Author varchar(50),
Publisher varchar (50)
);

Create Table HOLDINGS 
(
Branch varchar(5),
Title varchar (50),
Copies smallint,
Primary Key (Branch ,Title),
foreign key (Branch) references BRANCH(BCode),
foreign key (Title) references TITLES(Title)
);


insert Into BRANCH 
values
("B1","John Smith","2 Anglesea Rd"),
("B2","Mary Jones","34 Pearse St"),
("B3","Francis Qwens","Grange X");

Insert Into TITLES
Values
("Susannah","Anne Brown","Macimillan"),
("How to Fish","Amy Fly","Stop Press"),
("A History of Dublin","David Little","Wiley"),
("Computers","Blaise Pascal","Applewoods"),
("The Wife","Anne Brown","Macimillan");

Insert Into HOLDINGS
values
("B1","Susannah",3),
("B1","How to Fish",2),
("B1","A History of Dublin",1),
("B2","How to Fish",4),
("B2","Computers",2),
("B2","The Wife",3),
("B3" ,"A History of Dublin",1),
("B3","Computers",4),
("B3","Susannah",1),
("B3","The Wife",1);

-- the names of all library books published by Macmillan

select Title from TITLES where Publisher ="Macimillan";

-- branches that hold any books by AnnBrown (using Nested Query)

select Distinct Branch from HOLDINGS where Title in (Select Title from TITLES where Author="Anne Brown");

-- branches that hold any books by AnnBrown (without Nested Query)

Select Distinct Branch from TITLES T join HOLDINGS H on H.Title=T.Title where Author ="Anne Brown";

-- total no of book in each Branch

Select Branch, Sum(Copies) from HOLDINGS Group by Branch;
