CREATE DATABASE bank;
use bank;
SET SQL_SAFE_UPDATES = 0;

create table users
(
id int auto_increment Primary Key,
name varchar(32),
email varchar(50),
account_no int Unique NOT NULL
);

create table accounts
(
id int auto_increment primary key,
account_no int unique not null,
balance decimal(10,2)
);


insert into users (name,email,account_no)
values
("userA","userA@gmail.com",1001),
("userB","userB@gmail.com",1002);

insert into accounts
(account_no,balance)
values
(1001,5000),
(1002,5000);

start transaction;
call deposit(1001,1000);

start transaction;
call withdraw(1001,500);

start transaction ;
call transfer(1001,1002,200);

select * from accounts;
