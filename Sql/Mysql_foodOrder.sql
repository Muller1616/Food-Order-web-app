create database Resturant2;
select * from Resturant2;
drop database Resturant2;
use Resturant2;
SHOW TABLES;

create table users(
userId varchar(30),
password varchar(30)
);

create table Fooddrinkorder(
FoodActual_Name varchar(30),
PriceActual_Name varchar(30), 
food_name varchar(30), 
food_email varchar(30),
food_destination varchar(30), 
food_date DATETIME, 
food_select varchar(30), 
food_message varchar(30), 
food_phone varchar(30)
);


create table Chief(
chief_name varchar(30),
chief_position varchar(30),
chief_password varchar(30)
);


create table Contact(
table_name varchar(30), 
table_email varchar(30), 
table_subject varchar(30),
table_message varchar(30)
);

create table Tableorder(
table_name varchar(30),
table_email varchar(30),
table_date DATETIME,
table_select varchar(30),
table_message varchar(30)
);

create table Subscribers(
email varchar(30)
);

INSERT INTO users (userId, password) 
VALUES 
('RMG/253/1', 'password123'),
('RMG/251/1', 'pass456');