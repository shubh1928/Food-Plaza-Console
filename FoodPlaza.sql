create database Project1;
use Project1;

-- ------------------------ food ----------------------------------------------

create table Food (foodID int primary key auto_increment, 
                   foodType varchar(50) not null,
                   foodName varchar(50) unique not null,
                   foodQuantity int not null,
                   foodPrice float not null
                   );
Describe Food;
select * from Food;

-- --------------------- customer ----------------------------------------------

create table Customer (customerName varchar(50) not null, 
                       customerEmailID varchar(50) primary key,
                       customerPassword varchar(50) not null,
                       customerContactNo long not null,
                       customerAddress varchar(255) not null
                       );
                       
Describe Customer;
select * from Customer;

-- ------------------------ admin -----------------------------------------------

create table Admin (adminEmailID varchar(255) primary key, 
					adminPassword varchar(255) not null
					);
                    
Describe Admin;    
select * from Admin;

insert into Admin values ("Manish@gmail.com", "343m343m"),( "Sameer@gmail.com" ,"65443455");

-- --------------------------- cart ---------------------------------------------

create table Cart (cartID int primary key auto_increment, 
				   foodID int not null,
                   foodName varchar(255) not null,
				   quantity int not null,
                   emailID varchar(255) not null,
                   foodPrice float,
                   totalPrice float
                   );                

Describe Cart;
select * from Cart;

-- --------------------------- orders --------------------------------------------

create table Orders (orderID int primary key auto_increment, 
				     orderName varchar(255) not null,
                     emailID varchar(255) not null,
				     orderDate varchar(255) not null,
                     totalPrice float                    
                    ); 
                    
Describe Orders;                  
drop table Orders; 

-- -------------------------------------------------------------------------------
