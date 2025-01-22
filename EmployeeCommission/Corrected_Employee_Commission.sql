Create DATABASE EmployeesDetail;
use EmployeesDetail;

Create Table Departments
(
Id int auto_increment primary key,
Name varchar(32)
);

Create Table Employees
(
Id int auto_increment primary key,
Name varchar(32),
Salary Int ,
Department_id int,
foreign key (Department_id) references Departments(Id)
);

Create Table Commissions
(
Id int auto_increment Primary key,
Employee_id int,
Commision_amount int,
foreign key(Employee_id) references Employees(Id)
);

insert into Departments (Id,Name) 
values
(1,"Banking"),
(2,'Insurance'),
(3,'Services');

insert into Employees (Id,Name,Salary,Department_id)
values
(1,'Chris Gayle',1000000,1),
(2,'Michael Clarke',800000,2),
(3,'Rahul Dravid',700000,1),
(4,'Ricky Pointing',600000,2),
(5,'Albie Morkel',650000,2),
(6,'Wasim Akram',750000,3);


insert into Commissions (Id,Employee_id,Commision_amount)
values
(1,1,5000),
(2,2,3000),
(3,3,4000),
(4,1,4000),
(5,2,3000),
(6,4,2000),
(7,5,1000),
(8,6,5000);

-- Find the employee who gets the highest total commission

select E.Name ,Sum(C.Commision_amount) from Employees E join Commissions C on E.Id=C.Employee_id group by (E.id) order by Sum(C.Commision_amount) desc limit 1;


--  Find employee with 4th Highest salary from employee table.
select * from Employees order by Salary desc limit 3,1;

-- Find department that is giving highest commission
select d.name,d.id, Sum(c.Commision_amount) as Total_Commission from Departments d join Employees e on d.id= e.Department_id join Commissions c on e.id= c.Employee_id group by d.id order by Total_Commission desc limit 1  ;


 -- Find employees getting commission more than 3000  Display Output in following pattern:  
 --  Chris Gayle, Rahul Dravid  4000
 
select  group_concat(distinct E.name) as Name , C.Commision_amount as Commision from Employees E join Commissions C on E.id=C.employee_id where Commision_amount>3000 group by C.Commision_amount ;